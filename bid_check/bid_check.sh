#!/bin/bash

# This script checks for bids the last 15 minutes

BID_INTERVAL="15m"

BIDS=$(docker logs --since $BID_INTERVAL otnode | grep Accepting | wc -l)

if [ $BIDS -eq 0 ]; then
  /root/OT-NodeWatch/data/send.sh "Has not bid in the last $(BID_INTERVAL)"
fi
