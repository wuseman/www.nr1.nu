# last

##### Last shutdown date and time of a system

   last  -x | grep shutdown | head -1

##### See how much time you've spent logged in

   last |grep `whoami`|grep -v logged|cut -c61-71|sed -e 's/[()]//g'|awk '{ sub("\\+", ":");split($1,a,":");if(a[3]){print a[1]*60*60+a[2]*60+a[3]} else {print a[1]*60+a[2] }; }'|paste -s -d+ -|bc|awk '{printf "%dh:%dm:%ds\n",$1/(60*60),$1%(60*60)/60,$1%60}'

##### This command will tell the last login and reboot related information

   last 

##### Show the single most recently modified file in a directory

   last file () { find ${1:-.} -maxdepth 1 -type f -printf "%T+ %p\n" | sort -n | tail -n1 | sed 's/[^[:space:]]\+ //'; }

##### how long system has been running

   last  reboot

##### Find out the last times your system was rebooted (for the duration of wtmp).

   last  reboot

##### To get how many users logged in and logged out and how many times ?

   last  | awk '{ print $1 }' | sort | uniq -c | grep -v wtmp

##### shows history of logins on the server

   last  -aiF | head

##### Quick glance at who's been using your system recently

   last   | grep -v "^$" | awk '{ print $1 }' | sort -nr | uniq -c

##### Show the last 20 sessions logged on the machine

   last  -n 20

##### Get the time and date of the last server reboot

   last  reboot

##### Get the time and date of the last server reboot

   last  reboot

##### shows history of logins on the server

   last 

##### to get how many users logged in and logged out and how many times purely using awk

   last  | awk '$1!~/wtmp/{logs[$1]++}END{for (i in logs) print i, logs[i]}'

##### Find out the last times your system was rebooted (for the duration of wtmp).

   last  reboot

##### To get how many users logged in and logged out and how many times ?

   last  | awk '{ print $1 }' | sort | uniq -c | grep -v wtmp

##### shows history of logins on the server

   last  -aiF | head

##### Quick glance at who's been using your system recently

   last   | grep -v "^$" | awk '{ print $1 }' | sort -nr | uniq -c

##### Show the last 20 sessions logged on the machine

   last  -n 20

##### Get the time and date of the last server reboot

   last  reboot

##### Get the time and date of the last server reboot

   last  reboot

##### shows history of logins on the server

   last 

##### to get how many users logged in and logged out and how many times purely using awk

   last  | awk '$1!~/wtmp/{logs[$1]++}END{for (i in logs) print i, logs[i]}'
