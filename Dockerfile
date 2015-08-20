FROM node:0.12.7
MAINTAINER Spencer Herzberg <spencer.herzberg@gmail.com>

RUN npm install -g elasticdump

ENTRYPOINT ["/usr/local/bin/elasticdump"]
