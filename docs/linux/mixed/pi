# pi

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Check if a machine is online

   pi ng -c 1 -q MACHINE_IP_OR_NAME >/dev/null 2>&1 && echo ONLINE || echo OFFLINE

##### exit if another instance is running

   pi dof -x -o $$ ${0##*/} && exit

##### Automatically update all the installed python packages

   pi p freeze local | awk -F "=" '{print "pip install -U "$1}' | sh

##### Automatically update all the installed python packages

   pi p freeze local | awk -F= '{print "pip install -U "$1}' | sh

##### Hello world

   pi  62999 | tr 0-9 del\ l\!owrH

##### Check if a machine is online

   pi ng1 IPaddr_or_hostname

##### Test internet connectivity

   pi ng 8.8.8.8

##### Update all outdated Python packages through pip.

   pi p list outdated format=freeze | grep -o "[[:alnum:][:punct:]]\{,\}==" | sed 's#==$##g' | xargs -I '{}' pip install {} upgrade

##### Check your internet connection by pinging Google

   pi ng -c 3 google.com

##### Count httpd processes

   pi dof httpd | wc -w

##### Find all machines on the network using broadcast ping

   pi ng -b <broadcast address>

##### Emulate sleep in DOS/BAT

   pi ng -n 1 -w 10000 224.0.0.0

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Do one ping to a URL,  I use this in a MRTG gauge graph to monitor connectivity

   pi ng -c 1 www.google.com | /usr/bin/awk '{print $7}' | /usr/bin/awk 'NR > 1' | /usr/bin/awk 'NR < 2' | /usr/bin/awk -F"=" '{print $2}'

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Alert on Mac when server is up

   pi ng -o -i 30 HOSTNAME && osascript -e 'tell app "Terminal" to display dialog "Server is up" buttons "It?s about time" default button 1'

##### Ping 10 times then quit

   pi ng -c 10 hostname

##### Get average ping(1) time from a host

   pi ng -qc 10 server.tld | awk -F/ '/^rtt/ {print $5}'

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### facebook

   pi ng www.facebook.com

##### Check a server is up. If it isn't mail me.

   pi ng -q -c1 -w3 brandx.jp.sme 2&>1 /dev/null || echo brandx.jp.sme ping failed | mail -ne -s'Server unavailable' joker@jp.co.uk

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Automatically update all the installed python packages

   pi p freeze local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Detach a process from the current shell

   pi ng -i1 www.google.com &> /dev/null & disown

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### ping MAC ADDRESS

   pi ng -c 2 `arp-scan 10.1.1.0/24 | awk '/00:1b:11:dc:a9:65/ {print $1}'`

##### Get IP from hostname

   pi ng -c 1 google.com | egrep -m1 -o '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'

##### pip install into current directory without virtualenv

   pi p install prefix $PWD -I pip

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### pinky -  user info

   pi nky -l <username>

##### Ping a URL sending output to file and STDOUT

   pi ng google.com | tee ping-output.txt

##### Check a server is up. If it isn't mail me.

   pi ng -q -c1 -w3 server.example.com >& /dev/null || echo server.example.com ping failed | mail -ne -s'Server unavailable' admin@example.com

##### Do one ping to a URL,  I use this in a MRTG gauge graph to monitor connectivity

   pi ng -q -c 1 www.google.com|awk -F/ 'END{print $5}'

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Text graphing ping output filter

   pi ng g.co|perl -ne'$|=/e=(\S+)/||next;(push@_,$1)>30&&shift@_;print"\r",(map{"\xe2\x96".chr(128+7*$_/(sort{$b<=>$a}@_)[0])." "}@_),"$1ms"'

##### ping with timestamp

   pi ng HOSTNAME | while read pong; do echo "$(date): $pong"; done

##### Make info pages much less painful

   pi nfo date

##### Get a process's pid by supplying its name

   pi dof () { ps acx | egrep -i $@ | awk '{print $1}'; }

##### SSH to a machine's internet address if it is not present on your local network

   pi ng localip -c 1 -W 1 &> /dev/null && ssh localip || ssh globalip

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### CLFUContest : Check which process consume more than 10% of the cpu (configurable)

   pi dstat -t | sed 's/,/./4' | awk -v seuil='10.0' '{if (NR>3 && $8>seuil) print }'

##### Install pip with Proxy

   pi p proxy http://proxy:8080 install Jinja2==2.9.6

##### list process ids for given program

   pi dof httpd

##### Do one ping to a URL,  I use this in a MRTG gauge graph to monitor connectivity

   pi ng -q -c 1 www.google.com|tail -1|cut -d/ -f5

##### Ping xxx.xxx.xxx.xxx ip 100000 times with size 1024bytes

   pi ng xxx.xxx.xxx.xxx size 1024 repeat 100000

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### How to check network connection from one interface

   pi ng -I eth0 www.yahoo.com

##### Check the total memory usage of processes with a specific name

   pi ds=$(pidof chrome); for p in ${pids[@]}; do cat /proc/$p/status | grep -i vmrss | awk '{print $2}'; done | while read m; do let t=$t+$m; echo $t; done | echo "$(tail -n 1) kB"

##### See what apache is doing without restarting it in debug mode

   pi dof httpd | sed 's/ / -p /g' | xargs strace -fp

##### Find out how to say the first 66 digits of pi as a word

   pi  66 | number

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Command to display how much resource is taken by cpu and which core is taking

   pi dstat -C "ffmpeg" -u

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### multimedia ping

   pi ng -a IP-ADDRESS

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Check if a machine is online

   pi ng -c 1 -q MACHINE_IP_OR_NAME >/dev/null 2>&1 && echo ONLINE || echo OFFLINE

##### exit if another instance is running

   pi dof -x -o $$ ${0##*/} && exit

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Alert on Mac when server is up

   pi ng -o -i 30 HOSTNAME && osascript -e 'tell app "Terminal" to display dialog "Server is up" buttons "It?s about time" default button 1'

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Check a server is up. If it isn't mail me.

   pi ng -q -c1 -w3 brandx.jp.sme 2&>1 /dev/null || echo brandx.jp.sme ping failed | mail -ne -s'Server unavailable' joker@jp.co.uk

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Automatically update all the installed python packages

   pi p freeze local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Detach a process from the current shell

   pi ng -i1 www.google.com &> /dev/null & disown

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### ping MAC ADDRESS

   pi ng -c 2 `arp-scan 10.1.1.0/24 | awk '/00:1b:11:dc:a9:65/ {print $1}'`

##### Get IP from hostname

   pi ng -c 1 google.com | egrep -m1 -o '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'

##### pip install into current directory without virtualenv

   pi p install prefix $PWD -I pip

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### pinky -  user info

   pi nky -l <username>

##### Ping a URL sending output to file and STDOUT

   pi ng google.com | tee ping-output.txt

##### Check a server is up. If it isn't mail me.

   pi ng -q -c1 -w3 server.example.com >& /dev/null || echo server.example.com ping failed | mail -ne -s'Server unavailable' admin@example.com

##### Do one ping to a URL,  I use this in a MRTG gauge graph to monitor connectivity

   pi ng -q -c 1 www.google.com|awk -F/ 'END{print $5}'

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Text graphing ping output filter

   pi ng g.co|perl -ne'$|=/e=(\S+)/||next;(push@_,$1)>30&&shift@_;print"\r",(map{"\xe2\x96".chr(128+7*$_/(sort{$b<=>$a}@_)[0])." "}@_),"$1ms"'

##### ping with timestamp

   pi ng HOSTNAME | while read pong; do echo "$(date): $pong"; done

##### Make info pages much less painful

   pi nfo date

##### Get a process's pid by supplying its name

   pi dof () { ps acx | egrep -i $@ | awk '{print $1}'; }

##### SSH to a machine's internet address if it is not present on your local network

   pi ng localip -c 1 -W 1 &> /dev/null && ssh localip || ssh globalip

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### CLFUContest : Check which process consume more than 10% of the cpu (configurable)

   pi dstat -t | sed 's/,/./4' | awk -v seuil='10.0' '{if (NR>3 && $8>seuil) print }'

##### Install pip with Proxy

   pi p proxy http://proxy:8080 install Jinja2==2.9.6

##### list process ids for given program

   pi dof httpd

##### Do one ping to a URL,  I use this in a MRTG gauge graph to monitor connectivity

   pi ng -q -c 1 www.google.com|tail -1|cut -d/ -f5

##### Ping xxx.xxx.xxx.xxx ip 100000 times with size 1024bytes

   pi ng xxx.xxx.xxx.xxx size 1024 repeat 100000

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### How to check network connection from one interface

   pi ng -I eth0 www.yahoo.com

##### Check the total memory usage of processes with a specific name

   pi ds=$(pidof chrome); for p in ${pids[@]}; do cat /proc/$p/status | grep -i vmrss | awk '{print $2}'; done | while read m; do let t=$t+$m; echo $t; done | echo "$(tail -n 1) kB"

##### See what apache is doing without restarting it in debug mode

   pi dof httpd | sed 's/ / -p /g' | xargs strace -fp

##### Find out how to say the first 66 digits of pi as a word

   pi  66 | number

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Command to display how much resource is taken by cpu and which core is taking

   pi dstat -C "ffmpeg" -u

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address

##### Set audible alarm when an IP address comes online

   pi ng -i 60 -a IP_address
