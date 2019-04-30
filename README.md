
[![Build Status](https://travis-ci.org/claranet/sqldumper.svg?branch=master)](https://travis-ci.org/claranet/sqldumper)

Running some services on a Docker host with a Database for each sercice it can be hard to create and manage Backups. Normaly you have to create multiple cronjobs to Backup all of the Databases.

This Containter shold help to solve this problem a little bit. You have only to create one cron job on the docker host to dump the databases.

This sqldumper connect to the docker api socket and searches for containers having the label "dumper.enable=true". If a container is found, the script will use the dump command on this container. The sqldumper is trying to get the Information like username, password and database from the container ENV Variables pr you can put this information with labels to the dumper.

Labels to use

| Name            | Description |
|-----------------|------------|
| dumper.enable   | Set this to true to enable dumping for the container |
| dumper.username | User to dump the Database. |
| dumper.password | Users password to dump the database. |
| dumper.database | Database to dump. |
| dumper.retention | Number of backups to keep on disk (default: 30) |
| dumper.args.*    | Arguments to pass for dump |
| dumper.env.*     | Environment variables to pass for dump |

TL;DR
-----

Run

    docker run --rm --name sqldumper -v /var/run/docker.sock:/var/run/docker.sock -v $PWD/dumps:/dumps claranet/sqldumper
    