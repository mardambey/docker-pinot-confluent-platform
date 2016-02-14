Pinot instance compatible with Confluent Platform's Schema Registry
===================================================================

Experimental docker image for running Pinot with Kafka message decoder able to inteface with the [Confluent Platform](http://confluent.io/docs/current/index.html).
This image is currently intended for development use, not for production use.

[![](https://badge.imagelayers.io/mardambey/docker-pinot-confluent-platform:latest.svg)](https://imagelayers.io/?images=mardambey/docker-pinot-confluent-platform:latest 'Get your own badge on imagelayers.io')

Configuration
-------------

The following environment variables can be passed in:

    ZK_ADDRESS=zk-host:zk-port

Volumes
-------

The following volumes are available, and contain data and logs:
- /pinot-controller
- /pinot-server
- /pinot-broker

Building Image
---------------

For convenience, a `build.sh` script is provided.

A second script, `push.sh`, will push the generated image to Docker Hub. First you'll need to be logged in:

    docker login --username=yourhubusername --password=yourpassword --email=youremail@company.com

then execute the script.

