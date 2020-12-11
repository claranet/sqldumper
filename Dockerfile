FROM python:3-alpine

LABEL version=0.3.1
LABEL author="Martin Weber <martin.weber@de.clara.net>"
LABEL company="Claranet GmbH"

ENV DUMPDIR=/dumps
ENV RETENTION=30
ENV SCHEDULER="0 6 * * *"

RUN apk update \
 && apk add docker \
 && pip install docker

COPY ./dumper.py /dumper.py
COPY ./entrypoint.sh /entrypoint.sh

VOLUME /dumps

ENTRYPOINT [ "/entrypoint.sh" ]