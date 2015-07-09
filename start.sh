#!/bin/bash

REFRESH=${REFRESH:-5}

if [ -z $MARATHON_HOST ]; then
  echo "You need to set MARATHON_HOST"
  exit 1
fi

while true
do
  scripts/haproxy-marathon-bridge refresh_system_haproxy $MARATHON_HOST
  sleep $REFRESH
done