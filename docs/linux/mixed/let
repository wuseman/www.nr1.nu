# let

##### Days left before password expires

   let  NOW=`date +%s`/86400 ; PASS_LAST_CHANGE=`grep $USER /etc/shadow | cut -d: -f3` ; PASS_LIFE=`grep $USER /etc/shadow | cut -d: -f5`; DAYS_LEFT=$(( PASS_LAST_CHANGE + PASS_LIFE - NOW)) ; echo $DAYS_LEFT

##### get time in other timezones

   let  utime=$offsetutc*3600+$(date utc +%s)+3600; date utc date=@${utime}

##### Days left before password expires

   let  NOW=`date +%s`/86400 ; PASS_LAST_CHANGE=`grep $USER /etc/shadow | cut -d: -f3` ; PASS_LIFE=`grep $USER /etc/shadow | cut -d: -f5`; DAYS_LEFT=$(( PASS_LAST_CHANGE + PASS_LIFE - NOW)) ; echo $DAYS_LEFT

##### get time in other timezones

   let  utime=$offsetutc*3600+$(date utc +%s)+3600; date utc date=@${utime}
