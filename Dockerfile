FROM alpine

LABEL version=0.1.3
LABEL author="Martin Weber <martin.weber@de.clara.net>"
LABEL company="Claranet GmbH"

RUN apk update \
 && apk add curl jq bash docker 

COPY ./mysqldump.sh /mysqldump.sh
VOLUME /dumps
ENTRYPOINT [ "/mysqldump.sh" ]