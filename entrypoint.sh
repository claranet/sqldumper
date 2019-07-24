#!/bin/sh

echo "${SCHEDULER}         /dumper.py" > /var/spool/cron/crontabs/root

cat /var/spool/cron/crontabs/root

/usr/sbin/crond -f
