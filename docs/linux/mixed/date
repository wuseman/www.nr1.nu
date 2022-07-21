# date

##### Synchronize date and time with a server over ssh

   date  set="$(ssh user@server date)"

##### Synchronize date and time with a server over ssh

   date  set="$(ssh user@server date)"

##### manually set system date/time

   date  MMDDhhmmYYYY

##### Find the median file modification time of files in a directory tree

   date  -d "@$(find dir -type f -printf '%C@\n' | sort -n | sed -n "$(($(find dir -type f | wc -l)/2))p")" +%F

##### Calculate the the last day of a month +/- from current month

   date   -j -v1d -v-0m -v-1d +'%m %d %Y'

##### Generate a random password 32 characters long :)

   date   | md5sum

##### Convert HH:MM:SS into seconds

   date  -ud "1970/01/01 00:29:36" +%s

##### On screen display of a command.

   date |osd_cat

##### The end of time

   date  -ud @$[2**31-1]

##### Convert unix timestamp to date

   date  -ud "1970-01-01 + 1234567890 seconds"

##### convert unixtime to human-readable

   date  -d @1234567890

##### Get yesterday's date or a previous time

   date  -d '1 day ago'; date -d '11 hour ago'; date -d '2 hour ago - 3 minute'; date -d '16 hour'

##### BASH one-liner to get the current week number

   date  +"%V"

##### Unix time to local time

   date  -R -d @1234567890

##### Date shows dates at other times/dates

   date  -d '2 weeks ago'

##### print date 24 hours ago

   date  date=yesterday

##### Unixtime

   date  +%s

##### date offset calculations

   date  date="1 fortnight ago"

##### Produce a pseudo random password with given length in base 64

   date  +%s | sha256sum | base64 | head -c <length>; echo

##### perl one-liner to get the current week number

   date  +%V

##### Find out what the day ends in

   date  +%A | tail -2c

##### Synchronize date and time with a server over ssh

   date  set="$(ssh user@server 'date -u')"

##### Format date/time string for a different day

   date  date=yesterday +%Y%m%d

##### Validate date, also a date within a leap year

   date  -d2009-05-18 > /dev/null 2>&1 ; echo $?

##### Get the time since epoch

   date  +%s

##### Convert a date to timestamp

   date  utc date "2009-02-06 09:57:54" +%s

##### Then end of the UNIX epoch

   date  -d @$(echo $((2 ** 31 - 1)))

##### Calculates the date 2 weeks ago from Saturday the specified format.

   date  -d '2 weeks ago Saturday' +%Y-%m-%d

##### Convert unix timestamp to date

   date  -d @1234567890

##### Find the modified time (mtime) for a file

   date  -r foo

##### convert unixtime to human-readable

   date  -r 1390196676

##### Perpetual calendar

   date  date="90 days ago"

##### Fake system time before running a command

   date fudge "2012-12-01 12:00" date

##### Time conversion/format using the date command

   date  -d '2011-12-15 05:47:09' +"epoch: %s or format: %Y/%m/%d"

##### Output a SSL certificate start or end date

   date  date="$(openssl x509 -in xxxxxx.crt -noout -startdate | cut -d= -f 2)" iso-8601

##### Synchronize date and time with a server over ssh

   date  +%Y%m%d%T -s "`ssh user@server 'date "+%Y%m%d %T"'`"

##### Find out when your billion-second anniversary is (was).

   date  -d12/31/1970+1000000000sec

##### Find out when your billion-second anniversary is (was). (on OS X)

   date  -j -v +1000000000S -f %m%d%Y mmddyyyy

##### Find out when your billion-second anniversary is (was).

   date  -j -v +1000000000S -f %m%d%Y mmddYYYY

##### log your PC's motherboard and CPU temperature along with the current date

   date  +%m/%d/%y%X|tr -d 'n' >>datemp.log&& sensors|grep +5V|cut -d "(" -f1|tr -d 'n'>> datemp.log && sensors |grep Temp |cut -d "(" -f1|tr -d 'n'>>datemp.log

##### Get the time and date of the last server reboot

   date  -d "$(uptime | awk '{gsub(/,/,"",$3);gsub(/:/," hours ",$3); print "- " $3 " minutes"}')"

##### Convert seconds to human-readable format

   date  -d@1234567890

##### Convert seconds to human-readable format

   date  -d@1234567890

##### Say the current time (Mac OS X)

   date  "+The time is %H:%M" | say

##### Get the current date in a yymmdd-hhmmss format (useful for file names)

   date  '+%y%m%d-%H%M%S'

##### Synchronize date and time with a server over ssh (BusyBox-friendly)

   date  -u `ssh user@remotehost date -u '+%m%d%H%M%Y.%S'`

##### Display EPOCH time in human readable format using AWK.

   date  -d @1268727836

##### Get the UTC offset

   date  +%:z

##### Change date from MM/DD/YYYY to YYYY-MM-DD (mysql like)

   date  -d 09/20/1981 +"%Y-%m-%d"

##### anti-spam

   date  -u +%W$(uname)|sha256sum|sed 's/\W//g'

##### Knowing when a machine is turned on

   date  -d @$(echo $(($(date +%s)-$(cat /proc/uptime|cut -d. -f1))))

##### Bash function to see what the day ends in

   date  +%A | cut -c $(( $(date +%A | wc -c) - 1 ))

##### Poor man's ntpdate

   date  -s "$(echo -e "HEAD / HTTP/1.0\n" | nc www.example.com 80 | sed -ne 's/^Date: \(.*\)$/\1/p')"

##### Poor man's ntpdate

   date  -s "`curl -sI www.example.com | sed -n 's/^Date: //p'`"

##### Synchronize date and time with a server over ssh

   date  `ssh user@server date "+%y%m%d%H%M.%S"`

##### Generic date format

   date  iso

##### Get nice finish date/time for mdadm rebuild

   date  -d "+$(grep -oP "finish=\K[0-9]+" /proc/mdstat)min"

##### Synchronize date and time with a server over ssh

   date  set="$(ssh user@server date)"

##### On screen display of a command.

   date |osd_cat

##### Convert unix timestamp to date

   date  -ud "1970-01-01 + 1234567890 seconds"

##### convert unixtime to human-readable

   date  -d @1234567890

##### Get yesterday's date or a previous time

   date  -d '1 day ago'; date -d '11 hour ago'; date -d '2 hour ago - 3 minute'; date -d '16 hour'

##### BASH one-liner to get the current week number

   date  +"%V"

##### Unix time to local time

   date  -R -d @1234567890

##### Date shows dates at other times/dates

   date  -d '2 weeks ago'

##### print date 24 hours ago

   date  date=yesterday

##### Unixtime

   date  +%s

##### date offset calculations

   date  date="1 fortnight ago"

##### Produce a pseudo random password with given length in base 64

   date  +%s | sha256sum | base64 | head -c <length>; echo

##### perl one-liner to get the current week number

   date  +%V

##### Find out what the day ends in

   date  +%A | tail -2c

##### Synchronize date and time with a server over ssh

   date  set="$(ssh user@server 'date -u')"

##### Format date/time string for a different day

   date  date=yesterday +%Y%m%d

##### Validate date, also a date within a leap year

   date  -d2009-05-18 > /dev/null 2>&1 ; echo $?

##### Get the time since epoch

   date  +%s

##### Convert a date to timestamp

   date  utc date "2009-02-06 09:57:54" +%s

##### Then end of the UNIX epoch

   date  -d @$(echo $((2 ** 31 - 1)))

##### Calculates the date 2 weeks ago from Saturday the specified format.

   date  -d '2 weeks ago Saturday' +%Y-%m-%d

##### Convert unix timestamp to date

   date  -d @1234567890

##### Find the modified time (mtime) for a file

   date  -r foo

##### convert unixtime to human-readable

   date  -r 1390196676

##### Perpetual calendar

   date  date="90 days ago"

##### Fake system time before running a command

   date fudge "2012-12-01 12:00" date

##### Time conversion/format using the date command

   date  -d '2011-12-15 05:47:09' +"epoch: %s or format: %Y/%m/%d"

##### Output a SSL certificate start or end date

   date  date="$(openssl x509 -in xxxxxx.crt -noout -startdate | cut -d= -f 2)" iso-8601

##### Synchronize date and time with a server over ssh

   date  +%Y%m%d%T -s "`ssh user@server 'date "+%Y%m%d %T"'`"

##### Find out when your billion-second anniversary is (was).

   date  -d12/31/1970+1000000000sec

##### Find out when your billion-second anniversary is (was). (on OS X)

   date  -j -v +1000000000S -f %m%d%Y mmddyyyy

##### Find out when your billion-second anniversary is (was).

   date  -j -v +1000000000S -f %m%d%Y mmddYYYY

##### log your PC's motherboard and CPU temperature along with the current date

   date  +%m/%d/%y%X|tr -d 'n' >>datemp.log&& sensors|grep +5V|cut -d "(" -f1|tr -d 'n'>> datemp.log && sensors |grep Temp |cut -d "(" -f1|tr -d 'n'>>datemp.log

##### Get the time and date of the last server reboot

   date  -d "$(uptime | awk '{gsub(/,/,"",$3);gsub(/:/," hours ",$3); print "- " $3 " minutes"}')"

##### Convert seconds to human-readable format

   date  -d@1234567890

##### Say the current time (Mac OS X)

   date  "+The time is %H:%M" | say

##### Get the current date in a yymmdd-hhmmss format (useful for file names)

   date  '+%y%m%d-%H%M%S'

##### Synchronize date and time with a server over ssh (BusyBox-friendly)

   date  -u `ssh user@remotehost date -u '+%m%d%H%M%Y.%S'`

##### Display EPOCH time in human readable format using AWK.

   date  -d @1268727836

##### Get the UTC offset

   date  +%:z

##### Change date from MM/DD/YYYY to YYYY-MM-DD (mysql like)

   date  -d 09/20/1981 +"%Y-%m-%d"

##### anti-spam

   date  -u +%W$(uname)|sha256sum|sed 's/\W//g'

##### Knowing when a machine is turned on

   date  -d @$(echo $(($(date +%s)-$(cat /proc/uptime|cut -d. -f1))))
