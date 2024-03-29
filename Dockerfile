FROM python:3-alpine

LABEL version=0.4.1
LABEL author="Martin Weber <martin.weber@de.clara.net>"
LABEL company="Claranet GmbH"

ENV DUMPDIR=/dumps
ENV RETENTION=30
ENV SCHEDULER="0 6 * * *"

RUN apk update \
 && apk add docker \
 && pip install docker

COPY ./dumper.py /usr/local/bin/dump
COPY ./entrypoint.sh /entrypoint.sh

VOLUME /dumps

ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "cron" ]