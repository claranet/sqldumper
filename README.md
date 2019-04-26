
[![Build Status](https://travis-ci.org/claranet/sqldumper.svg?branch=master)](https://travis-ci.org/claranet/sqldumper)

A small SQLDUMPER tool to create sql dumps for list of SQL containers on a standalone docker host.

Just add the label "dumper.enable=true" to the mysql container to create a dump.

Labels to use

| Name            | Descrition |
|-----------------|------------|
| dumper.enable   | Set this to true to enable dumping for the container |
| dumper.user     | MySQL user to dump the Database. If it is not set MYSQL_USERNAME will be used from ENV |
| dumper.password | MySQL user password to dump the database. If it is not set MYSQL_PASSWORD will be used from ENV |
| dumper.database | MySQL Database to dump. If it isn't set, MYSQL_DATABASE will be used from ENV |

TL;DR
-----

Run

    docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v $PWD/dumps:/dumps claranet/sqldumper
    
