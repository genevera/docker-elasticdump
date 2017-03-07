docker-elasticdump
==================

Docker binary wrapper around [elasticsearch-dump](https://github.com/taskrabbit/elasticsearch-dump)

I have forked the sherzberg/docker-elasticdump because the repository on Docker Hub only provides the *latest* tag. I need to ensure the version of Elasticdump I am using.

Build Status
------------

[Hub](https://hub.docker.com/r/genevera/docker-elasticdump/builds/)

Usage
-----

The npm binary `elasticdump` is the docker entrypoint so any parameters elasticdump accepts, this docker image will as well.

Backup and index to a gzip using stdout:

```bash
$ docker run -t genevera/docker-elasticdump --input=http://production.es.com:9200/my_index --output=$ | gzip > /data/my_index.json.gz
```

Backup the results of a query to a file:

```bash
$ docker run -t genevera/docker-elasticdump --input=http://production.es.com:9200/my_index --output=query.json --searchBody '{"query":{"term":{"username": "admin"}}}'
```

See [here](https://github.com/taskrabbit/elasticsearch-dump#use) for more usage.

TODO
----

- [x] Basic `elasticdump` commands
- [ ] Enable optional container linking for input/output es nodes

License
-------

See [LICENSE](/LICENSE)


