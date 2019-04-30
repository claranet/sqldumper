
"""
dumper.py - Create Database dumps from docker containers

Running multiple services on a docker host with databases, this script
will create dumps from it.

This script did not connect to the Databases over network. It will do a
'docker exec ...' to the remote container and run the dump command inside the container
and fetch the stdout.

Database types:
- MySQL
- MariaDB
- MongoDB
- PostgreSQL
- FREE

With Database type "FREE" you can write your own dump command!

"""

__author__     = "Martin Weber <martin.weber@de.clara.net>"
__license__    = "Apache License v2.0"

__version__    = "0.0.1"
__maintainer__ = "Martin Weber"
__email__      = "martin.weber@de.clara.net"
__status__     = "Production"

import docker
import os
import gzip
import fnmatch
import glob
import logging as log
from datetime import datetime

docker_client = docker.from_env()
log.basicConfig(level=log.DEBUG)

class ExtContainer(docker.models.containers.Container):
    """
    Extend the DockerSDK Container Class
    """

    @property
    def environments(self):
        """
        Provide container environemnts as Dictionary
        """
        _env = {}

        for x in self.attrs["Config"]["Env"]:
            x =  x.split("=", 1)
            
            _key = x[0]
            _value = x[1]
            _env[_key] = _value

        return _env

class Dumper:
    _container = None
    _db_type = ""

    _dump_args = []
    _dump_env = []

    _database = ""
    _username = ""
    _password = ""

    __retention = 1
    __dumpdir = "/dumps"

    def __init__(self, container):
        self._container = container

        self.__dumpdir = os.environ["DUMPDIR"]

        self._db_type = self._container.labels["dumper.type"]

        self.__fetchRetention()
        self.__fetchEnv()
        self.__fetchArgs()
        self.__fetchCredentials()

    def __fetchRetention(self):
        self.__retention = os.environ["RETENTION"]
        if "dumper.retention" in self._container.labels:
            self.__retention = self._container.labels["dumper.retention"]

        self.__retention = int(self.__retention)

    def __fetchCredentials(self):
        if "dumper.username" in self._container.labels:
            self._username = self._container.labels["dumper.username"]
        if "dumper.password" in self._container.labels:
            self._password = self._container.labels["dumper.password"]
        if "dumper.database" in self._container.labels:
            self._database = self._container.labels["dumper.database"]

    def __fetchEnv(self):
        for _opt in fnmatch.filter(self._container.labels, "dumper.env.*"):
            value = self._container.labels[_opt]
            key = _opt.replace("dumper.env.", "")
            self._dump_env[key] = value
    
    def __fetchArgs(self):
        for _opt in fnmatch.filter(self._container.labels, "dumper.args.*"):
            value = self._container.labels[_opt]
            key = _opt.replace("dumper.args.", "")

            if key.len() == 1:
                self._dump_args.append("-%s '%s'" % (key, value))
            else:
                self._dump_args.append("--%s='%s'" % (key, value))

    def _executeDump(self, command):
        log.debug("Execute dump - %s" % command)
        e_code, gen = self._container.exec_run(cmd = command, stream = True, environment=self._dump_env)

        f = gzip.open(self.filename, "wb")
        for item in gen:
            f.write(item)
        f.close()

    def cleanup(self):
        log.debug("Cleanup old backups - keep last %s dumps on disk" % self.__retention)
        files = glob.glob("%s/%s__%s__*" % ( self.__dumpdir, self._container.name, self._db_type ))
        files.sort(reverse=True)

        for i in range(self.__retention, len(files)):
            log.debug("Delete dump %s" % files[i])
            os.unlink(files[i])
            

    @property
    def filename(self):
        _ext = "sql"
        if self._db_type == "mongo":
            _ext = "bak"
        
        _file = "%s/%s__%s__%s.%s.gz" % ( self.__dumpdir, self._container.name, self._db_type, datetime.now().strftime("%Y%m%d%I%M%S"), _ext)
        log.debug("Dumpfile: %s" % _file)
        return _file

    def dump(self):
        pass

class MySQLDumper(Dumper):
    def dump(self):
        log.debug("Dump MySQL")

        """
        Dump MySQL/MariaDB
        """
        
        if len(self._username) == 0 and "MYSQL_USER" in self._container.environments:
            self._username = self._container.environments["MYSQL_USER"]

        if len(self._password) == 0 and "MYSQL_PASSWORD" in self._container.environments:
            self._password = self._container.environments["MYSQL_PASSWORD"]

        if len(self._database) == 0 and "MYSQL_DATABASE" in self._container.environments:
            self._database = self._container.environments["MYSQL_DATABASE"]

        _args = " ".join(self._dump_args)
        if self._username:
            _args += (" --u '%s'" % self._username)
        if self._password:
            _args += (" -p'%s'" % self._password)
        if self._database:
            _args += (" %s" % self._database)

        _command = "mysqldump %s" % _args
        self._executeDump(_command)

class PostgresDumper(Dumper):
    def dump(self):
        """
        Dump PostgreSQL

        """
        if len(self._username) == 0 and "POSTGRES_USER" in self._container.environments:
            self._username = self._container.environments["POSTGRES_USER"]

        if len(self._password) == 0 and "POSTGRES_PASSWORD" in self._container.environments:
            self._password = self._container.environments["POSTGRES_PASSWORD"]

        if len(self._database) == 0 and "POSTGRES_DB" in self._container.environments:
            self._database = self._container.environments["POSTGRES_DB"]

        _args = " ".join(self._dump_args)
        if self._username:
            _args += (" --username='%s'" % self._username)
        if self._database:
            _args += (" %s" % self._database)

        if not fnmatch.filter(self._dump_env, "PGPASSWORD=*"):
            self._dump_env.append("PGPASSWORD='%s'" % self._password)

        _command = "pg_dump %s" % _args
        self._executeDump(_command)
        

class MongoDumper(Dumper):
    def dump(self):
        """
        Dump MongoDB

        user, password and database have to be pass. This Using MongoDB, this values would not fetch by Environments.
        Dump Parameter can be extend using dumper.mongo.<option>. For example "dumper.mongo.authenticationDatabase=admin"
        will add "--authenticationDatabase=admin" as parameter to mongodump.

        Note that authenticationDatabase=admin will be set as default if it is not passed
        """

        _args = ["--quiet", "--archive"]
        _args.extend(self._dump_args)

        if not fnmatch.filter(_args, "--authenticationDatabase=*"):
            _args.append("--authenticationDatabase=admin")
        
        if self._username:
            _args.append(" -u '%s'" % self._username)
        if self._password:
            _args.append(" -p '%s'" % self._password)
        if self._database:
            _args.append(" -d %s" % self._database)

        _command = "mongodump %s" % " ".join(_args)
        self._executeDump(_command)

class FreeDumper(Dumper):
    def dump(self):
        """
        Dump any Database

        Use this Command to dump any database type. Just set dumper.command="..." to dump a database.
        The command should dumop the Database to stdout. This Function will write it to a dump file.
        """

        if "dumper.command" in container.labels:
            _command = "%s %s" % (container.labels["dumper.command"], " ".join(self._dump_args))
        
        self._executeDump(_command)


def main():
    """
    Main function - Fetch container with filter
    """
    docker_client = docker.from_env()
    containers = docker_client.containers.list(filters = {"label": "dumper.enable=true"})

    for container in containers:
        container.__class__ = ExtContainer
        log.info("Container: '%s'" % (container.name))
        
        _type = container.labels["dumper.type"] if "dumper.type" in container.labels else "mysql"
        log.info("Database Type: %s" % (_type))

        dumper = None
        if _type in ["mysql", "maria", "mariadb"]:
            dumper = MySQLDumper(container)
        elif _type in ["postgres", "postgresql"]:
             dumper = PostgresDumper(container)
        elif _type in ["mongo", "mongodb"]:
             dumper = MongoDumper(container)
        elif _type == "free":
            dumper = FreeDumper(container)
        else:
            print("Invalid dumper type")

        dumper.dump()
        dumper.cleanup()

# Start
main()