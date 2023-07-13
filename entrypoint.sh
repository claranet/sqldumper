#!/bin/sh

echo $1

if [ "$1" -eq "cron" ]; then

  echo "${SCHEDULER}        /usr/local/bin/dump" > /var/spool/cron/crontabs/root

  cat /var/spool/cron/crontabs/root

  /usr/sbin/crond -f

else

  $@

fi
