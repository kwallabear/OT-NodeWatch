bid_check.sh

This script checks the docker logs at a user-settable interval (default 15 minutes).

It counts the number of times "Accepting" (which appears when the node is bidding on jobs) is present in
the logs. If that number is 1 or more it does nothing as that means your node is bidding properly.

If it doesn't appear (equals zero) then it send a telegram message.

This script uses the config.sh file in /root/OT-Nodewatch. If this is already set for another script in
OT-NodeWatch then you're good to go.

To schedule this job in the servers Cron:

1. Log-in as root
2. crontab -e
3. Press "1"
4. On a new line paste the following:

*/15 * * * * /root/OT-NodeWatch/bid_check/bid_check.sh

5. ctrl+s
6. ctrl+x
