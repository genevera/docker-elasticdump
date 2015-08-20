FROM ubuntu:14.04
MAINTAINER Spencer Herzberg <spencer.herzberg@gmail.com>

RUN apt-get update -qq && apt-get install -y software-properties-common

RUN apt-add-repository ppa:chris-lea/node.js

RUN apt-get update -qq && apt-get install -y nodejs

ENV ESDUMP_VERSION=0.14.3
RUN npm install -g elasticdump@${ES_DUMP_VERSION}

ENTRYPOINT ["/usr/bin/elasticdump"]
