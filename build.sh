#!/usr/bin/env bash

echo Building latest...
git co master
docker build -t mardambey/pinot-confluent-platform:latest .

echo Building 1.0.1
git co 0.16-confluent-1.0.1
docker build -t mardambey/pinot-confluent-platform:0.16-confluent-1.0.1 .

echo Building 2.0.0
git co 0.16-confluent-2.0.0
docker build -t mardambey/pinot-confluent-platform:0.16-confluent-2.0.0 .

git co master
