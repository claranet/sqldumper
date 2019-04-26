#!/bin/bash

# dump.sh
#
# Iterate over running containers and try to dump them
#
# The script uses the mysqldump command in the container to dump the database
#
#
# Author: Martin Weber <martin.weber@de.clara.net>
# Company: Claranet GmbH
# Version: 0.1.0
#

DUMPDIR=/dumps
CONTAINERS=$(docker container ls -q)

for C in $CONTAINERS; do
    if [[ "$C" == "$(hostname)" ]]; then # It's me, ignore...
        continue;
    fi 

    if [[ ! $(docker inspect $C | jq -r '.[].Config.Labels["dumper.enable"]') ]]; then
        continue
    fi

    _CONTAINER_NAME=$(docker inspect $C | jq -r '.[].Name')
    _CONTAINER_NAME=${_CONTAINER_NAME:1}
    echo "Work on container '${_CONTAINER_NAME}' (ID: '${C}')"

    _DUMP_USERNAME=$(docker inspect $C | jq -re '.[].Config.Labels["dumper.user"]')
    if [[ -z "${_DUMP_USERNAME}" || "${_DUMP_USERNAME}" == "null" ]]; then
        echo "Cannot find 'dumper.user' as label, try to fetch MYSQL_USER from ENV."
        _DUMP_USERNAME=$(docker inspect $C |  jq -r '.[].Config.Env[] | select(. | contains("MYSQL_USER"))' | sed 's/MYSQL_USER=//g')
    fi
    test -z "${_DUMP_USERNAME}" && _DUMP_USERNAME="root"

    _DUMP_PASSWORD=$(docker inspect $C | jq -r '.[].Config.Labels["dumper.password"]')
    if [[ -z "${_DUMP_PASSWORD}" || "${_DUMP_PASSWORD}" == "null" ]]; then
        echo "Cannot find 'dumper.password' as label, try to use MYSQL_PASSWORD from ENV"
        _DUMP_PASSWORD=$(docker inspect $C |  jq -r '.[].Config.Env[] | select(. | contains("MYSQL_PASSWORD"))' | sed 's/MYSQL_PASSWORD=//g')
    fi
    
    _DUMP_DATABASE=$(docker inspect $C | jq -r '.[].Config.Labels["dumper.database"]')
    if [[ -z "${_DUMP_DATABASE}" || "${_DUMP_DATABASE}" == "null" ]]; then
        echo "Cannot find 'dumper.database' as label, try to use MYSQL_DATABASE from ENV"
        _DUMP_DATABASE=$(docker inspect $C |  jq -r '.[].Config.Env[] | select(. | contains("MYSQL_DATABASE"))' | sed 's/MYSQL_DATABASE=//g')
    fi

    _DUMP_ARGS="-u${_DUMP_USERNAME}"
    test "${_DUMP_PASSWORD}" && _DUMP_ARGS="${_DUMP_ARGS} -p${_DUMP_PASSWORD}"
    test "${_DUMP_DATABASE}" && _DUMP_ARGS="${_DUMP_ARGS} ${_DUMP_DATABASE}"
    echo "Dump Arguments: '${_DUMP_ARGS}'"
    
    _TIMESTAMP=$(date +%Y%m%d%H%M%S)
    _DUMP_FILE="${DUMPDIR}/${_CONTAINER_NAME}_${_TIMESTAMP}.sql"

    echo "Dump to File '${_DUMP_FILE}'"
    docker exec -t $C mysqldump ${_DUMP_ARGS} > ${_DUMP_FILE}
    if [ $? == 0 ]; then
        gzip ${_DUMP_FILE}
    else
        echo "Backup failed for contianer '${_CONTAINER_NAME}' (ID: '${C}') - Remove dump file"
        rm ${_DUMP_FILE}
    fi

    
done