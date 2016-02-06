#!/usr/bin/env bash

#bin/pinot-admin.sh StartZookeeper &
#sleep 2
bin/pinot-admin.sh StartController &
sleep 2
bin/pinot-admin.sh StartBroker &
sleep 2
bin/pinot-admin.sh StartServer &
#sleep 2
#bin/pinot-admin.sh StartKafka &

wait
