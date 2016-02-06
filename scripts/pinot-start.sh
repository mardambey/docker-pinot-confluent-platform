#!/usr/bin/env bash

cd /opt/pinot-0.016-pkg/

#bin/pinot-admin.sh StartZookeeper &
#sleep 2

if [ -n "$ZK_ADDRESS" ]; then
	ZK_OPT="-zkAddress $ZK_ADDRESS"
fi

bin/pinot-admin.sh StartController $ZK_OPT &
sleep 2

bin/pinot-admin.sh StartBroker $ZK_OPT &
sleep 2

bin/pinot-admin.sh StartServer $ZK_OPT &
sleep 2

#bin/pinot-admin.sh StartKafka &
#sleep 2

wait
