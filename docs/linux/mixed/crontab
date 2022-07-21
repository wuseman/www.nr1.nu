# crontab

##### Add a line to crontab using sed

   crontab  -l | sed -e '$G;$s-$-'"$CRON_MINS $CRON_HOUR"' * * * /usr/bin/command >/dev/null 2>&1-' | crontab -

##### Edit Crontab

   crontab  -e

##### Remove job from crontab by commandline

   crontab  -l -u USER | grep -v 'YOUR JOB COMMAND or PATTERN' | crontab -u USER -

##### Remove job from crontab by commandline

   crontab  -l -u USER | grep -v 'YOUR JOB COMMAND or PATTERN' | crontab -u USER -
