#!/bin/sh
CONFIG_FILE=/etc/burrow/burrow.toml
KAFKA_VERSION=${KAFKA_VERSION:-0.10.1.0}
echo "start"
cat $CONFIG_FILE
exec $GOPATH/bin/Burrow -config-dir /etc/burrow "${@}"
