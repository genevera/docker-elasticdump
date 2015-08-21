docker-elasticdump
==================

Docker binary wrapper around [elasticsearch-dump](https://github.com/taskrabbit/elasticsearch-dump)

This fork does not provide additional functionality but secure Docker image tags so that you know exactly the Elastcdump version you use.

Build Status
------------

[Hub](https://hub.docker.com/r/cogniteev/elasticdump/builds/)

Usage
-----

The npm binary `elasticdump` is the docker entrypoint so any parameters elasticdump accepts, this docker image will as well.

Backup and index to a gzip using stdout:

```bash
$ docker run -t cogniteev/elasticdump --input=http://production.es.com:9200/my_index --output=$ | gzip > /data/my_index.json.gz
```

Backup the results of a query to a file:

```bash
$ docker run -t cogniteev/elasticdump --input=http://production.es.com:9200/my_index --output=query.json --searchBody '{"query":{"term":{"username": "admin"}}}'
```

See [here](https://github.com/taskrabbit/elasticsearch-dump#use) for more usage.

TODO
----

- [x] Basic `elasticdump` commands
- [ ] Enable optional container linking for input/output es nodes

License
-------

See [LICENSE](/LICENSE)

