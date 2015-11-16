FROM node:0.12.7
MAINTAINER Spencer Herzberg <spencer.herzberg@gmail.com>

ENV ESDUMP_VERSION=0.16.1
RUN npm install -g elasticdump@${ES_DUMP_VERSION}

ENTRYPOINT ["/usr/local/bin/elasticdump"]
