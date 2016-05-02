#!/usr/bin/env bash

cd /opt/pinot-0.016-pkg/

if [ -n "$ZK_ADDRESS" ]; then
	ZK_OPT="-zkAddress $ZK_ADDRESS"
fi

bin/pinot-admin.sh StopProcess -server | tee /pinot-server/server.log

sleep 2

bin/pinot-admin.sh StartServer $ZK_OPT -segmentDir /pinot-server/segments -dataDir /pinot-server/data | tee /pinot-server/server.log &
