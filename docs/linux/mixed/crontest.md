# crontest

##### Print a cron formatted time for 2 minutes in the future (for crontab testing)

   crontest  () { date '-d +2 minutes' +'%M %k %d %m *'; }

##### Print a cron formatted time for 2 minutes in the future (for crontab testing)

   crontest  () { date +'%M %k %d %m *' |awk 'BEGIN {ORS="\t"} {print $1+2,$2,$3,$4,$5,$6}'; echo $1;}

##### Print a cron formatted time for 2 minutes in the future (for crontab testing)

   crontest  () { date '-d +2 minutes' +'%M %k %d %m *'; }

##### Print a cron formatted time for 2 minutes in the future (for crontab testing)

   crontest  () { date +'%M %k %d %m *' |awk 'BEGIN {ORS="\t"} {print $1+2,$2,$3,$4,$5,$6}'; echo $1;}
