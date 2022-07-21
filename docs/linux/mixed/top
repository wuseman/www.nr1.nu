# top

##### Get Current CPU Usage

   top  -n2 -d 0.5 | grep ^Cpu | sed 's/[[:alpha:]%]*//g' | awk 'NR == 2 {printf("%.2f\n",100-$5)}'

##### Monitor specific process (ie apache)  using Top

   top  -p `pidof apache2 | awk '{gsub(/[ ]/,",");print}'`

##### Kill processes hogging up CPU (Flash after resume)

   top  -bn 1 |  awk '{if($1 ~ /^[0-9]+$/ && $9 > 97) {print $1;exit}}'|xargs kill

##### top

   top 

##### Show the number of current httpd processes

   top  -b -n 1 |grep httpd|wc -l

##### View process statistics in realtime

   top 

##### Use top to monitor only all processes with the same name fragment 'foo'

   top  $(pgrep foo | sed 's|^|-p |g')

##### count processes with status "D" uninterruptible sleep

   top  -b -n 1 | awk '{if (NR <=7) print; else if ($8 == "D") {print; count++} } END {print "Total status D: "count}'

##### Processes by CPU usage

   top  -b -n 1 | sed 1,6d

##### Use top to monitor only all processes with the same name fragment 'foo'

   top  '-p' $(pgrep -d ' -p ' foo)

##### Top Command in batch mode

   top  -b -n 1

##### Use top to monitor only all processes with the same name fragment 'foo'

   top  -p $(pgrep -d , foo)

##### Shows cpu load in percent

   top  -bn2|awk -F, '/Cpu/{if (NR>4){print 100-gensub(/.([^ ]+).*/,"\\1","g",$4)}}'

##### Monitor especific process with top

   top  -p `pgrep pidgin`

##### Display the top ten running processes - sorted by memory usage

   top  -b -o +%MEM |head -17

##### Use top to monitor only all processes with the same name fragment 'foo'

   top  $(pgrep foo | sed 's|^|-p |g')

##### count processes with status "D" uninterruptible sleep

   top  -b -n 1 | awk '{if (NR <=7) print; else if ($8 == "D") {print; count++} } END {print "Total status D: "count}'

##### Processes by CPU usage

   top  -b -n 1 | sed 1,6d

##### Use top to monitor only all processes with the same name fragment 'foo'

   top  '-p' $(pgrep -d ' -p ' foo)

##### Top Command in batch mode

   top  -b -n 1

##### Use top to monitor only all processes with the same name fragment 'foo'

   top  -p $(pgrep -d , foo)

##### Shows cpu load in percent

   top  -bn2|awk -F, '/Cpu/{if (NR>4){print 100-gensub(/.([^ ]+).*/,"\\1","g",$4)}}'

##### Monitor especific process with top

   top  -p `pgrep pidgin`
