FROM node:4.4.5
MAINTAINER Spencer Herzberg <spencer.herzberg@gmail.com>

ENV ESDUMP_VERSION=2.2.0
RUN npm install -g elasticdump@${ES_DUMP_VERSION}

ENTRYPOINT ["/usr/local/bin/elasticdump"]
