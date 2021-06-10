__docker_check.sh__

This script checks that the "otnode" container is running at a user-settable interval (default 5 minutes).

If its not running then it send a telegram message.

This script uses the config.sh file in /root/OT-Nodewatch. If this is already set for another script in
OT-NodeWatch then you're good to go.

To schedule this job in the servers Cron:

1. Login as root
2. crontab -e
3. Press "1"
4. On a new line paste the following:

*/5 * * * * /root/OT-NodeWatch/docker_check/docker_check.sh

5. ctrl+s
6. ctrl+x
