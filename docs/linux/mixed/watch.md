# watch

##### Watch active calls on an Asterisk PBX

   watch  -n 5 "asterisk -rx 'core show calls' | grep active"

##### Console clock

   watch  -n 1 :

##### See what a cassandra node is streaming

   watch  -d 'echo -e "Remaining: `(nodetool netstats | grep " 0%" | wc -l)` \nCurrent: `(nodetool netstats | grep "%" | grep -v " 0%")`"'

##### Simple countdown from a given date

   watch  no-title -d -n 1 'echo `date -d "next Thursday" +%s` "-" `date +%s` | bc -l'

##### Watch your websites php

   watch  -d=c -n3 'lsof -itcp -iudp -c php'

##### Forgot to use pv or rsync

   watch  ls -lh /path/to/folder

##### get mysql full processlist from commadline

   watch  'mysql -e "show full processlist;"'

##### Monitor iptables in realtime

   watch  -n1 iptables -vnL

##### Monitor iptables in realtime

   watch  -n1 iptables -vnL

##### How to watch files

   watch  -d 'ls -l'

##### bash function to check for something every 5 seconds

   watch  -n <seconds> <command>

##### Execute ls -lah every one second

   watch  interval 1 ls -lah

##### Monitor the Kernel Ring Buffer

   watch  'dmesg | tail -15'

##### Watch mysql processlist on a remote host

   watch  -n 0.5 ssh [user]@[host] mysqladmin -u [mysql_user] -p[password] processlist | tee -a /to/a/file

##### Monitoring TCP connections number

   watch  "ss -nat | awk '"'{print $1}'"' | sort | uniq -c"

##### Make sure your compiler is using ccache

   watch  ccache -s

##### Console clock

   watch  -n1 echo

##### stream facebook feed

   watch  -n -0.1 fbcmd stream timeline

##### A simple overview of memory usage refreshed at user designated intervals.

   watch  -n 10 free -m

##### keep an eye on system load changes

   watch  -n 7 -d 'uptime | sed s/.*users?, //'

##### Monitor a file's size

   watch  -n60 du /var/log/messages

##### watch process stack, sampled at 1s intervals

   watch  -n 1 'pstack 12345 | tac'

##### big countdown clock with hours, minutes and seconds

   watch  -tn1 'date -u +%T -d @$(expr $(date -d HH:MM +%s) - $(date  +%s)) | toilet -f bigmono12'

##### Displaying wireless signal on screen in realtime.

   watch  -n 1 "awk 'NR==3 {print \"Signal strength = \" \$3 \"00 %\"}''' /proc/net/wireless"

##### Display clock in terminal

   watch  -n 1 :

##### easly monitor mem usage

   watch  -n1 differences cat /proc/meminfo

##### Not so simple countdown from a given date

   watch  -tn1 'bc<<<"`date -d'\''friday 21:00'\'' +%s`-`date +%s`"|perl -ne'\''@p=gmtime($_);printf("%dd %02d:%02d:%02d\n",@p[7,2,1,0]);'\'

##### Show who is logged on and find out what they are doing

   watch  w

##### Displaying wireless signal on screen in realtime.

   watch  -n 1 cat /proc/net/wireless

##### Cheap iftop

   watch  'netstat -anptu |egrep "^Proto|:80 "'

##### Poll and print end of lates modified file

   watch  'ls -tr1 | tail -n1 | xargs tail'

##### Binary Clock

   watch  -n 1 'echo "obase=2;`date +%s`" | bc'

##### Watch active calls on an Asterisk PBX

   watch  -n 1 "sudo asterisk -vvvvvrx 'core show channels' | grep call"

##### shows the space of a  folder in  bytes  ever  two seconds.

   watch  "df | grep /this/folder/"

##### Monitor server load as well as running MySQL processes

   watch  -n 1 uptime\;myqladmin user=<user> password=<password> verbose processlist

##### watch iptables counters

   watch  interval 0 'iptables -nvL | grep -v "0     0"'

##### alarm central using keyboard as zone inputs ( output spoken out aloud )

   watch  '/home/mm/bash/keypress.sh |/home/mm/bash/evento.sh'

##### Watch Data Usage on eth0

   watch  ifconfig eth0

##### Binary Clock

   watch  -n 1 'date "+obase=2; print %H,\":\",%M,\":\",%S" |bc'

##### Watch for when your web server returns

   watch  -n 15 curl -s connect-timeout 10 http://www.google.com/

##### Get a regular updated list of zombies

   watch  "ps auxw | grep [d]efunct"

##### ascii digital clock

   watch  -tn1 'date +%T | xargs banner'

##### Highlight network TX, RX information change

   watch  -n 2 -d '/sbin/ifconfig eth0'

##### Get a regular updated list of zombies

   watch  "ps auxw | grep 'defunct' | grep -v 'grep' | grep -v 'watch'"

##### Watch the disk fill up

   watch  -n 1 df

##### Console clock

   watch  -t -n1 'date "+%r %F %A"'

##### Big Countdown Clock with hours, minutes and seconds

   watch  -tn1 'date +%r | figlet'

##### Watch how fast the files in a drive are being deleted

   watch  "df | grep /path/to/drive"

##### watch iptables counters

   watch  'iptables -vL'

##### continuously check size of files or directories

   watch  -n <time_interval> "du -s <file_or_directory>"

##### for all who don't have the watch command

   watch () { while test :; do clear; date=$(date); echo -e "Every "$1"s: $2 \t\t\t\t $date"; $2; sleep $1; done }

##### Create a continuous digital clock in Linux terminal

   watch  -t -n 1 date +%T

##### Monitor cpu freq and temperature

   watch  interval 1 "cat /proc/acpi/thermal_zone/THRM/*; cat /proc/cpuinfo | grep MHz; cat /proc/acpi/processor/*/throttling"

##### Monitor memory usage

   watch  vmstat -sSM

##### Console clock

   watch  -n1 'date "+%T"'

##### Show simple disk IO table using snmp

   watch  -n1 snmptable -v2c -c public localhost diskIOTable

##### Command to keep an SSH connection open

   watch  -n 30 uptime

##### for all who don't have the watch command

   watch () { t=$1; shift; while test :; do clear; date=$(date); echo -e "Every "$t"s: $@ \t\t\t\t $date"; $@; sleep $t; done }

##### Monitor Linux/MD RAID Rebuild

   watch  -n 5 -d cat /proc/mdstat

##### Monitoring wifi connection by watch command (refresh every 3s), displaying iw dump info and iwconfig on wireless interface "wlan0"

   watch  -d -n 3 "iw dev wlan0 station dump; iwconfig wlan0"

##### whois surfing my web ?

   watch  lsof -i :80

##### Debug redirects between production reloads

   watch  'curl -s location -I http://any.site.or.url | grep -e "\(HTTP\|Location\)"'

##### Watch the size of a directory using figlet

   watch  -n1 "du -hs /home/$USER | cut -f1 -d'/' | figlet -k"

##### Watch command

   watch  -n 2 command

##### Monitor open connections for httpd including listen, count and sort it per IP

   watch  "netstat -plan|grep :80|awk {'print \$5'} | cut -d: -f 1 | sort | uniq -c | sort -nk 1"

##### output stats from a running dd command to see its progress

   watch  -n60 kill -USR1 $(pgrep dd)

##### Monitor incoming connections of proxies and balancers.

   watch  -n 1 "/usr/sbin/lsof -p PID |awk '/TCP/{split(\$8,A,\":\"); split(A[2],B,\">\") ; split(B[1],C,\"-\"); print A[1],C[1],B[2], \$9}' | sort | uniq -c"

##### Server load and process monitoring

   watch  -n1 "uptime && ps auxw|grep http|grep -v grep | grep -v watch|wc -l && netstat -ntup|grep :80 |grep ESTABLISHED|wc -l && netstat -ntup|grep :80|grep WAIT|wc -l && free -mo && ps -ylC httpd sort:rss|tail -3|awk '{print \$8}'"

##### Monitor memory fine-grained usage (e.g. firefox)

   watch  "awk '/Rss/{sum += \$2; } END{print sum, \"kB\"}' < /proc/$(pidof firefox)/smaps"

##### keep an eye on system load changes

   watch  -n 7 -d 'uptime | sed s/.*users,//'

##### Watch the National Debt clock

   watch  -n 10  "wget -q http://www.brillig.com/debt_clock -O - | grep debtiv.gif | sed -e 's/.*ALT=\"//' -e 's/\".*//' -e 's/ //g'"

##### Lists the size of certain file in every 10 seconds

   watch  -n 10 'du -sk testfile'

##### Monitor RX/TX packets and any subsquent errors

   watch  'netstat -aniv'

##### Watch active calls on an Asterisk PBX

   watch  "asterisk -vvvvvrx 'core show channels' | egrep \"(call|channel)\""

##### send DD a signal to print its progress

   watch  -n 1 pkill -USR1 "^dd$"

##### watch your network load on specific network interface

   watch  -n1 'ifconfig eth0|grep bytes'

##### Expedient hard disk temprature and load cycle stats

   watch  -d 'sudo smartctl -a /dev/sda | grep Load_Cycle_Count ; sudo smartctl -a /dev/sda | grep Temp'

##### Not a kismet replacement...

   watch  -n .5 "iwlist wlan0 scan"

##### watch the previous command

   watch  -n1 -d !!

##### Keep track of diff progress

   watch  -d "ls -l /proc/$!/fd"

##### Remind yourself every 15 minutes (repeated reminders)

   watch  -n 900 "notify-send -t 10000 'Look away. Rest your eyes'"

##### monitor the last command run

   watch  !!

##### Periodic Display of Fan Speed with Change Highlights

   watch  -n 10 -d eval "sensors | grep RPM | sed -e 's/.*: *//;s/ RPM.*//'"

##### Monitor a file's size

   watch  -n 60 du /var/log/messages

##### monitor memory usage

   watch  vmstat -sSM

##### Test http request every second, fancy display.

   watch  -n 1 nc localhost 80 '<<EOF GET / HTTP/1.1 Host: tux-ninja Connection: Close  EOF'

##### Monitor TCP opened connections

   watch  -n 1 "netstat -tpanl | grep ESTABLISHED"

##### UPS Tracking Script

   watch  -t -c -n30 'wget -q -O- "http://wwwapps.ups.com/WebTracking/processInputRequest?TypeOfInquiryNumber=T&InquiryNumber1=1Z4WYXXXXXXXXXX" | html2text | sed -n "/Shipment Progress/,/Shipping Information/p" | grep -v "*" | ccze -A'

##### Watch the disk fill up with change highlighting

   watch  -d -n 5 df

##### World Cup Live Score

   watch  -n10 no-title "w3m http://www.livescore.com/ |egrep 'live [0-9H]+[^ ]'"

##### Monitor connection statistics with netstat and watch

   watch  -n 1 "netstat -ntu | sed '1,2d' | awk '{ print \$6 }' | sort | uniq -c | sort -k 2"

##### Monitoring sessions that arrive at your server

   watch  -n 1 -d "finger"

##### Like top but for files

   watch  -d -n 2 'df; ls -FlAt;'

##### Watch a dig in progress

   watch  -n1 dig google.com

##### Watch and cat the last file to enter a directory

   watch  "cat `ls -rcA1 | tail -n1`"

##### watch snapshots commit in VMware ESX

   watch  'ls -tough full-time *.vmdk'

##### Watching Command

   watch  'cat /proc/loadavg'

##### Monitoring file change while a copy

   watch  "ls -al myfile"

##### Monitor dynamic changes in the dmesg log.

   watch  "dmesg |tail -15"

##### Show directory sizes, refreshing every 2s

   watch  'find -maxdepth 1 -mindepth 1 -type d  |xargs du -csh'

##### repeat a command every one second

   watch  -n 1 "do foo"

##### Watch changeable interrupts continuously

   watch  -n1 'cat /proc/interrupts

##### Monitor ElasticSearch cluster health - Useful for keeping an eye on ES when rebalancing takes place

   watch  -n 1 curl -XGET 'http://localhost:9200/_cluster/health?pretty=true'

##### Quick Battery Power Monitor

   watch  -n 5 "upower -d | grep energy -A 4"

##### see the size of the downloaded traffic

   watch  -n 1 "echo | sudo iptables -nvL | head -1 | awk '{print \$7}'"

##### Realtime clock cowsay

   watch  -tn1 'figlet -f slant  `date +%T` | cowsay -n -f telebears'

##### Show a running count of CLOSE_WAIT and TIME_WAIT connections for debugging network apps

   watch  -n5 ss \| grep -c WAIT

##### Watch all postgres processes, sorted by memory use

   watch  -n 1 '{ ps aux | head -n 1; ps aux sort -rss | grep postgres | grep -v grep; } | cat'

##### How to run a shell script on a remote host using ftp

   watch  -n10 "if test -e run.txt ; then chmod +x script.sh && ./script.sh && rm run.txt || rm run.txt && echo > failed.txt ; fi"

##### Monitor Wireless Adapter Stats

   watch  -n 1 cat /proc/net/wireless

##### Monitor the queries being run by MySQL

   watch  -n 1 mysqladmin user=<user> password=<password> processlist

##### Display a cool clock on your terminal

   watch  -t -n1 "date +%T|figlet"

##### Monitor the queries being run by MySQL

   watch  -n 1 mysqladmin user=<user> password=<password> processlist

##### Display a cool clock on your terminal

   watch  -t -n1 "date +%T|figlet"

##### What addresses are your applications talking to?

   watch  "lsof -i -P |grep ESTABLISHED |awk '{printf \"%15.15s \\t%s\\n\", \$1, \$9}'"

##### for all who don't have the watch command

   watch () { if [ -z "$1" ]; then echo "usage: watch interval command" return fi sec=$1 shift while test :; do clear; date=$(date); echo -e "Every "$sec"s: $@ \t\t\t\t $date"; echo $@; sleep $sec; done }

##### php command show status memcache

   watch  'php -r '"'"'$m=new Memcache;$m->connect("127.0.0.1", 11211);print_r($m->getstats());'"'"

##### How to know if your NIC receive link

   watch  ethtool eth0

##### Watching directories

   watch  -n1 "ls -p | grep '/$'"

##### This command watches the top 10 processes currently taking up the most memory with thread & other info, incase you don't want to use the TOP or HTOP command.

   watch  -n .8 'ps -eaLo uname,pid,pcpu,pmem,lwp,nlwp,rss,vsz,start_time,args sort -pmem| head -10'

##### Watch those evil Red Hat states code D Uninterruptible sleep (usually IO).

   watch  -n 1 "ps aux | sed -n 's/ D /&/p'"

##### Shows live outboud connection attempts and/or suceess, refreshing every 0.5 seconds

   watch  -n0.5 -d "netstat -nafo | grep -v -E 'LISTENING|0.0.0.0|127.0.0.1|\[::\]:|\[::1\]:'"

##### Watch netstat output every 2 seconds

   watch  -n 2 netstat -antu

##### Monitor open connections for httpd including listen, count and sort it per IP

   watch  "netstat -plan | grep -v LISTEN | grep \":80 \" | awk {'print \$5'} | cut -d: -f 1 | uniq -c | sort -nk 1"

##### watch iptables counters

   watch  -d -n 2 iptables -nvL

##### Number of apache2 processes running with memory usage filter (sorting asc)

   watch  -n0.5 'ps -e -o pid,vsz,comm= | sort -n -k 2 | grep apache | wc -l'

##### Poor man's watch: Repeat a command every N seconds

   watch () { while true; do echo "<Ctrl+V><Ctrl+L>Every 2.0s: $@"; date; eval "$@"; sleep 2; done }

##### Monitoring a port connections

   watch  -n1 'netstat -tn | grep -P :22'

##### Watch the number of RabbitMQ connections by user (sorted)

   watch  -d "rabbitmqctl -q list_connections | awk '{gsub(/[ \t]+/, \"\", \$1); print \$1}' | sort | uniq -c | sort -nr"

##### Monitor a log file, filling up all available space in the terminal window and preventing line wrap

   watch  -n 4 "tail -n $(expr $(tput lines) - 4) /var/log/apache2/access.log | cut -c 1-$(tput cols)"

##### what the free memory grow or shink

   watch  -d "free -mt"

##### Watch Processes with D status (sleep and wait for IO)

   watch  -n 1 "(ps aux | awk '\$8 ~ /D/  { print \$0 }')"

##### I/O activity on a machine

   watch  -n 1 'iostat -xmd 1 2'

##### Watch top 10 processes sorted by cpu usage

   watch  "ps aux | sort -nrk 3,3 | head -n 10"

##### Monitor a file's size

   watch  -n60 du /var/log/messages

##### watch process stack, sampled at 1s intervals

   watch  -n 1 'pstack 12345 | tac'

##### Cheap iftop

   watch  'netstat -anptu |egrep "^Proto|:80 "'

##### Binary Clock

   watch  -n 1 'echo "obase=2;`date +%s`" | bc'

##### Watch active calls on an Asterisk PBX

   watch  -n 1 "sudo asterisk -vvvvvrx 'core show channels' | grep call"

##### watch iptables counters

   watch  interval 0 'iptables -nvL | grep -v "0     0"'

##### Watch Data Usage on eth0

   watch  ifconfig eth0

##### Binary Clock

   watch  -n 1 'date "+obase=2; print %H,\":\",%M,\":\",%S" |bc'

##### Watch for when your web server returns

   watch  -n 15 curl -s connect-timeout 10 http://www.google.com/

##### Get a regular updated list of zombies

   watch  "ps auxw | grep [d]efunct"

##### ascii digital clock

   watch  -tn1 'date +%T | xargs banner'

##### Highlight network TX, RX information change

   watch  -n 2 -d '/sbin/ifconfig eth0'

##### Get a regular updated list of zombies

   watch  "ps auxw | grep 'defunct' | grep -v 'grep' | grep -v 'watch'"

##### Watch the disk fill up

   watch  -n 1 df

##### Console clock

   watch  -t -n1 'date "+%r %F %A"'

##### Big Countdown Clock with hours, minutes and seconds

   watch  -tn1 'date +%r | figlet'

##### Watch how fast the files in a drive are being deleted

   watch  "df | grep /path/to/drive"

##### watch iptables counters

   watch  'iptables -vL'

##### continuously check size of files or directories

   watch  -n <time_interval> "du -s <file_or_directory>"

##### for all who don't have the watch command

   watch () { while test :; do clear; date=$(date); echo -e "Every "$1"s: $2 \t\t\t\t $date"; $2; sleep $1; done }

##### Create a continuous digital clock in Linux terminal

   watch  -t -n 1 date +%T

##### Monitor cpu freq and temperature

   watch  interval 1 "cat /proc/acpi/thermal_zone/THRM/*; cat /proc/cpuinfo | grep MHz; cat /proc/acpi/processor/*/throttling"

##### Monitor memory usage

   watch  vmstat -sSM

##### Console clock

   watch  -n1 'date "+%T"'

##### Show simple disk IO table using snmp

   watch  -n1 snmptable -v2c -c public localhost diskIOTable

##### Command to keep an SSH connection open

   watch  -n 30 uptime

##### for all who don't have the watch command

   watch () { t=$1; shift; while test :; do clear; date=$(date); echo -e "Every "$t"s: $@ \t\t\t\t $date"; $@; sleep $t; done }

##### Monitor Linux/MD RAID Rebuild

   watch  -n 5 -d cat /proc/mdstat

##### Monitoring wifi connection by watch command (refresh every 3s), displaying iw dump info and iwconfig on wireless interface "wlan0"

   watch  -d -n 3 "iw dev wlan0 station dump; iwconfig wlan0"

##### whois surfing my web ?

   watch  lsof -i :80

##### Debug redirects between production reloads

   watch  'curl -s location -I http://any.site.or.url | grep -e "\(HTTP\|Location\)"'

##### Watch the size of a directory using figlet

   watch  -n1 "du -hs /home/$USER | cut -f1 -d'/' | figlet -k"

##### Watch command

   watch  -n 2 command

##### Monitor open connections for httpd including listen, count and sort it per IP

   watch  "netstat -plan|grep :80|awk {'print \$5'} | cut -d: -f 1 | sort | uniq -c | sort -nk 1"

##### output stats from a running dd command to see its progress

   watch  -n60 kill -USR1 $(pgrep dd)

##### Monitor incoming connections of proxies and balancers.

   watch  -n 1 "/usr/sbin/lsof -p PID |awk '/TCP/{split(\$8,A,\":\"); split(A[2],B,\">\") ; split(B[1],C,\"-\"); print A[1],C[1],B[2], \$9}' | sort | uniq -c"

##### Server load and process monitoring

   watch  -n1 "uptime && ps auxw|grep http|grep -v grep | grep -v watch|wc -l && netstat -ntup|grep :80 |grep ESTABLISHED|wc -l && netstat -ntup|grep :80|grep WAIT|wc -l && free -mo && ps -ylC httpd sort:rss|tail -3|awk '{print \$8}'"

##### Monitor memory fine-grained usage (e.g. firefox)

   watch  "awk '/Rss/{sum += \$2; } END{print sum, \"kB\"}' < /proc/$(pidof firefox)/smaps"

##### keep an eye on system load changes

   watch  -n 7 -d 'uptime | sed s/.*users,//'

##### Watch the National Debt clock

   watch  -n 10  "wget -q http://www.brillig.com/debt_clock -O - | grep debtiv.gif | sed -e 's/.*ALT=\"//' -e 's/\".*//' -e 's/ //g'"

##### Lists the size of certain file in every 10 seconds

   watch  -n 10 'du -sk testfile'

##### Monitor RX/TX packets and any subsquent errors

   watch  'netstat -aniv'

##### Watch active calls on an Asterisk PBX

   watch  "asterisk -vvvvvrx 'core show channels' | egrep \"(call|channel)\""

##### send DD a signal to print its progress

   watch  -n 1 pkill -USR1 "^dd$"

##### watch your network load on specific network interface

   watch  -n1 'ifconfig eth0|grep bytes'

##### Expedient hard disk temprature and load cycle stats

   watch  -d 'sudo smartctl -a /dev/sda | grep Load_Cycle_Count ; sudo smartctl -a /dev/sda | grep Temp'

##### Not a kismet replacement...

   watch  -n .5 "iwlist wlan0 scan"

##### watch the previous command

   watch  -n1 -d !!

##### Keep track of diff progress

   watch  -d "ls -l /proc/$!/fd"

##### Remind yourself every 15 minutes (repeated reminders)

   watch  -n 900 "notify-send -t 10000 'Look away. Rest your eyes'"

##### monitor the last command run

   watch  !!

##### Periodic Display of Fan Speed with Change Highlights

   watch  -n 10 -d eval "sensors | grep RPM | sed -e 's/.*: *//;s/ RPM.*//'"

##### Monitor a file's size

   watch  -n 60 du /var/log/messages

##### monitor memory usage

   watch  vmstat -sSM

##### Test http request every second, fancy display.

   watch  -n 1 nc localhost 80 '<<EOF GET / HTTP/1.1 Host: tux-ninja Connection: Close  EOF'

##### Monitor TCP opened connections

   watch  -n 1 "netstat -tpanl | grep ESTABLISHED"

##### UPS Tracking Script

   watch  -t -c -n30 'wget -q -O- "http://wwwapps.ups.com/WebTracking/processInputRequest?TypeOfInquiryNumber=T&InquiryNumber1=1Z4WYXXXXXXXXXX" | html2text | sed -n "/Shipment Progress/,/Shipping Information/p" | grep -v "*" | ccze -A'

##### Watch the disk fill up with change highlighting

   watch  -d -n 5 df

##### World Cup Live Score

   watch  -n10 no-title "w3m http://www.livescore.com/ |egrep 'live [0-9H]+[^ ]'"

##### Monitor connection statistics with netstat and watch

   watch  -n 1 "netstat -ntu | sed '1,2d' | awk '{ print \$6 }' | sort | uniq -c | sort -k 2"

##### Monitoring sessions that arrive at your server

   watch  -n 1 -d "finger"

##### Like top but for files

   watch  -d -n 2 'df; ls -FlAt;'

##### Watch a dig in progress

   watch  -n1 dig google.com

##### Watch and cat the last file to enter a directory

   watch  "cat `ls -rcA1 | tail -n1`"

##### watch snapshots commit in VMware ESX

   watch  'ls -tough full-time *.vmdk'

##### Watching Command

   watch  'cat /proc/loadavg'

##### Monitoring file change while a copy

   watch  "ls -al myfile"

##### Monitor dynamic changes in the dmesg log.

   watch  "dmesg |tail -15"

##### Show directory sizes, refreshing every 2s

   watch  'find -maxdepth 1 -mindepth 1 -type d  |xargs du -csh'

##### repeat a command every one second

   watch  -n 1 "do foo"

##### Watch changeable interrupts continuously

   watch  -n1 'cat /proc/interrupts

##### Monitor ElasticSearch cluster health - Useful for keeping an eye on ES when rebalancing takes place

   watch  -n 1 curl -XGET 'http://localhost:9200/_cluster/health?pretty=true'

##### Quick Battery Power Monitor

   watch  -n 5 "upower -d | grep energy -A 4"

##### see the size of the downloaded traffic

   watch  -n 1 "echo | sudo iptables -nvL | head -1 | awk '{print \$7}'"

##### Realtime clock cowsay

   watch  -tn1 'figlet -f slant  `date +%T` | cowsay -n -f telebears'

##### Show a running count of CLOSE_WAIT and TIME_WAIT connections for debugging network apps

   watch  -n5 ss \| grep -c WAIT

##### Watch all postgres processes, sorted by memory use

   watch  -n 1 '{ ps aux | head -n 1; ps aux sort -rss | grep postgres | grep -v grep; } | cat'

##### How to run a shell script on a remote host using ftp

   watch  -n10 "if test -e run.txt ; then chmod +x script.sh && ./script.sh && rm run.txt || rm run.txt && echo > failed.txt ; fi"

##### Monitor Wireless Adapter Stats

   watch  -n 1 cat /proc/net/wireless

##### Monitor the queries being run by MySQL

   watch  -n 1 mysqladmin user=<user> password=<password> processlist

##### Display a cool clock on your terminal

   watch  -t -n1 "date +%T|figlet"

##### What addresses are your applications talking to?

   watch  "lsof -i -P |grep ESTABLISHED |awk '{printf \"%15.15s \\t%s\\n\", \$1, \$9}'"

##### for all who don't have the watch command

   watch () { if [ -z "$1" ]; then echo "usage: watch interval command" return fi sec=$1 shift while test :; do clear; date=$(date); echo -e "Every "$sec"s: $@ \t\t\t\t $date"; echo $@; sleep $sec; done }

##### php command show status memcache

   watch  'php -r '"'"'$m=new Memcache;$m->connect("127.0.0.1", 11211);print_r($m->getstats());'"'"

##### How to know if your NIC receive link

   watch  ethtool eth0

##### Watching directories

   watch  -n1 "ls -p | grep '/$'"

##### This command watches the top 10 processes currently taking up the most memory with thread & other info, incase you don't want to use the TOP or HTOP command.

   watch  -n .8 'ps -eaLo uname,pid,pcpu,pmem,lwp,nlwp,rss,vsz,start_time,args sort -pmem| head -10'

##### Watch those evil Red Hat states code D Uninterruptible sleep (usually IO).

   watch  -n 1 "ps aux | sed -n 's/ D /&/p'"

##### Shows live outboud connection attempts and/or suceess, refreshing every 0.5 seconds

   watch  -n0.5 -d "netstat -nafo | grep -v -E 'LISTENING|0.0.0.0|127.0.0.1|\[::\]:|\[::1\]:'"

##### Watch netstat output every 2 seconds

   watch  -n 2 netstat -antu

##### Monitor open connections for httpd including listen, count and sort it per IP

   watch  "netstat -plan | grep -v LISTEN | grep \":80 \" | awk {'print \$5'} | cut -d: -f 1 | uniq -c | sort -nk 1"

##### watch iptables counters

   watch  -d -n 2 iptables -nvL

##### Number of apache2 processes running with memory usage filter (sorting asc)

   watch  -n0.5 'ps -e -o pid,vsz,comm= | sort -n -k 2 | grep apache | wc -l'

##### Poor man's watch: Repeat a command every N seconds

   watch () { while true; do echo "<Ctrl+V><Ctrl+L>Every 2.0s: $@"; date; eval "$@"; sleep 2; done }

##### Monitoring a port connections

   watch  -n1 'netstat -tn | grep -P :22'

##### Watch the number of RabbitMQ connections by user (sorted)

   watch  -d "rabbitmqctl -q list_connections | awk '{gsub(/[ \t]+/, \"\", \$1); print \$1}' | sort | uniq -c | sort -nr"

##### Monitor a log file, filling up all available space in the terminal window and preventing line wrap

   watch  -n 4 "tail -n $(expr $(tput lines) - 4) /var/log/apache2/access.log | cut -c 1-$(tput cols)"
