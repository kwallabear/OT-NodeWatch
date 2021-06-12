#!/bin/bash

# This script checks the logs for "ve been chosen" which indicates a new job.
# Setting to change:
# job_INTERVAL: Set this to how far back in minutes to search the log for mentions of "ve been chosen".
# This value should match the CRON schedule. For example, Every 15 minutes
# CRON should run this script which checks the logs for the past 15 minutes.

job_INTERVAL="15m"

jobS=$(docker logs --since $job_INTERVAL otnode | grep ve been chosen | wc -l)
echo $jobS

if [ $jobS -eq 0 ]; then
  /root/OT-NodeWatch/data/send.sh "Has a new job in the last $job_INTERVAL"
fi
