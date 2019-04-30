
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

__version__    = 0.0.0
__maintainer__ = "Martin Weber"
__email__      = "martin.weber@de.clara.net"
__status__     = "Production"

import docker
import os
import gzip
import fnmatch
import logging as log
from datetime import datetime

docker_client = docker.from_env()
dumpdir = os.environ["DUMPDIR"]

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

def dumpFree(container):
    """
    Dump any Database

    Use this Command to dump any database type. Just set dumper.command="..." to dump a database.
    The command should dumop the Database to stdout. This Function will write it to a dump file.
    """

    if "dumper.command" in container.labels:
        _command = container.labels["dumper.command"]
    
    log.debug("Execute Command: %s" % _command)
    e_code, gen = container.exec_run(cmd = _command, stream = True)

    _file = "%s/%s_free_%s.sql.gz" % (dumpdir, container.name, datetime.now().strftime("%Y%m%d%I%M%S"))
    f = gzip.open(_file, "wb")
    for item in gen:
        f.write(item)
    f.close()

def dumpPostgreSQL(container):
    """
    Dump PostgreSQL

    """
    _username = None
    _password = None
    _database = None

    if "dumper.user" in container.labels:
        _username = container.labels["dumper.user"]
    elif "POSTGRES_USER" in container.environments:
        _username = container.environments["POSTGRES_USER"]

    if "dumper.password" in container.labels:
        _password = container.labels["dumper.password"]
    elif "POSTGRES_PASSWORD" in container.environments:
        _password = container.environments["POSTGRES_PASSWORD"]

    if "dumper.database" in container.labels:
        _database = container.labels["dumper.database"]
    elif "POSTGRES_DB" in container.environments:
        _database = container.environments["POSTGRES_DB"]

    _args = ""
    if _username:
        _args += (" --username='%s'" % _username)
    if _database:
        _args += (" %s" % _database)

    _command = "pg_dump %s" % _args
    e_code, gen = container.exec_run(cmd = _command, stream = True, environment=["PGPASSWORD=%s" % _password])

    _file = "%s/%s_postgresql_%s.sql.gz" % (dumpdir, container.name, datetime.now().strftime("%Y%m%d%I%M%S"))
    f = gzip.open(_file, "wb")
    for item in gen:
        f.write(item)
    f.close()


def dumpMongoDB(container):
    """
    Dump MongoDB

    user, password and database have to be pass. This Using MongoDB, this values would not fetch by Environments.
    Dump Parameter can be extend using dumper.mongo.<option>. For example "dumper.mongo.authenticationDatabase=admin"
    will add "--authenticationDatabase=admin" as parameter to mongodump.

    Note that authenticationDatabase=admin will be set as default if it is not passed
    """

    _username = None
    _password = None
    _database = None

    if "dumper.user" in container.labels:
        _username = container.labels["dumper.user"]

    if "dumper.password" in container.labels:
        _password = container.labels["dumper.password"]

    if "dumper.database" in container.labels:
        _database = container.labels["dumper.database"]

    _args = ["--quiet", "--archive"]
    for _opt in fnmatch.filter(container.labels, "dumper.mongo.*"):
        value = container.labels[_opt]
        key = _opt.replace("dumper.mongo.", "")
        _args.append("--%s=%s" % (key, value))

    if not fnmatch.filter(_args, "--authenticationDatabase=*"):
        _args.append("--authenticationDatabase=admin")
    
    if _username:
        _args.append(" -u '%s'" % _username)
    if _password:
        _args.append(" -p '%s'" % _password)
    if _database:
        _args.append(" -d %s" % _database)

    _command = "mongodump %s" % " ".join(_args)
    log.debug("Dump Command: %s" % _command)
    e_code, gen = container.exec_run(cmd = _command, stream = True)

    _file = "%s/%s_mongodb_%s.bak.gz" % (dumpdir, container.name, datetime.now().strftime("%Y%m%d%I%M%S"))
    f = gzip.open(_file, "wb")
    for item in gen:
        f.write(item)
    f.close()

def dumpMySQL(container):
    """
    Dump MySQL/MariaDB
    """
    _username = None
    _password = None
    _database = None

    if "dumper.user" in container.labels:
        _username = container.labels["dumper.user"]
    elif "MYSQL_USER" in container.environments:
        _username = container.environments["MYSQL_USER"]

    if "dumper.password" in container.labels:
        _password = container.labels["dumper.password"]
    elif "MYSQL_PASSWORD" in container.environments:
        _password = container.environments["MYSQL_PASSWORD"]

    if "dumper.database" in container.labels:
        _database = container.labels["dumper.database"]
    elif "MYSQL_DATABASE" in container.environments:
        _database = container.environments["MYSQL_DATABASE"]

    _args = ""
    if _username:
        _args += (" -u'%s'" % _username)
    if _password:
        _args += (" -p'%s'" % _password)
    if _database:
        _args += (" %s" % _database)

    _command = "mysqldump %s" % _args
    e_code, gen = container.exec_run(cmd = _command, stream = True)

    _file = "%s/%s_mysql_%s.sql.gz" % (dumpdir, container.name, datetime.now().strftime("%Y%m%d%I%M%S"))
    f = gzip.open(_file, "wb")
    for item in gen:
        f.write(item)
    f.close()

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

        if _type in ["mysql", "maria", "mariadb"]:
            dumpMySQL(container)
        elif _type in ["mongo", "mongodb"]:
            dumpMongoDB(container)
        elif _type in ["postgres", "postgresql"]:
            dumpPostgreSQL(container)
        elif _type == "free":
            dumpFree(container)
        else:
            print("Invalid dumper type")

# Start
main()