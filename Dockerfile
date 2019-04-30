FROM python:3-alpine

LABEL version=0.1.4
LABEL author="Martin Weber <martin.weber@de.clara.net>"
LABEL company="Claranet GmbH"

ENV DUMPDIR=/dumps
ENV RETENTION=30

RUN apk update \
 && apk add docker \
 && pip install docker

COPY ./dumper.py /dumper.py
VOLUME /dumps

ENTRYPOINT [ "/usr/bin/python3", "/dumper.py" ]