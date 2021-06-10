#!/bin/bash

# This script checks that the "otnode" docker container is running.
#

RUNNING=$(docker ps | grep otnode | wc -l)
echo $RUNNING

if [ $RUNNING -eq 0 ]; then
  /root/OT-NodeWatch/data/send.sh "Node is NOT running!"
fi
