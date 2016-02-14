#!/usr/bin/env bash

cd /opt/pinot-0.016-pkg/

mkdir -p /pinot-controller/data \
  /pinot-broker \
  /pinot-server/segments \
  /pinot-server/data &> /dev/null

#bin/pinot-admin.sh StartZookeeper &
#sleep 2

if [ -n "$ZK_ADDRESS" ]; then
	ZK_OPT="-zkAddress $ZK_ADDRESS"
fi

bin/pinot-admin.sh StartController $ZK_OPT -dataDir /pinot-controller/data | tee /pinot-controller/controller.log &
sleep 2

bin/pinot-admin.sh StartBroker $ZK_OPT | tee /pinot-broker/broker.log &
sleep 2

bin/pinot-admin.sh StartServer $ZK_OPT -segmentDir /pinot-server/segments -dataDir /pinot-server/data | tee /pinot-server/server.log &
sleep 2

#bin/pinot-admin.sh StartKafka &
#sleep 2

wait
