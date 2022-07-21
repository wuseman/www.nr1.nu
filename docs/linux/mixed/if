# if

##### quick and easy way of validating a date format of yyyy-mm-dd and returning a boolean

   if  date -d 2006-10-10 >> /dev/null 2>&1; then echo 1; else echo 0; fi

##### Get the IP address

   if config | grep "inet" | grep "broadcast" | awk '{print $2}'

##### Get the IP address

   if config | grep "inet" | tail -1 | awk '{print $2}'

##### Get your internal IP address and nothing but your internal IP address

   if config eth0 | sed -n 's/.*inet addr:\([0-9\.]*\).*/\1/p'

##### Test internet connection

   if  nc -zw1 google.com 443 2>/dev/null; then echo 'Connected!'; fi

##### Terminate script or shell if not launched as root

   if  [[ $EUID -ne 0 ]]; then echo 'Root permissions required! Exiting.'; exit; fi

##### Use ping to test if a server is up

   if  [ "$(ping -q -c1 google.com)" ];then wget -mnd -q http://www.google.com/intl/en_ALL/images/logo.gif ;fi

##### Get IPv4 of eth0 for use with scripts

   if config eth0 | perl -ne 'print $1 if m/addr:((?:\d+\.){3}\d+)/'

##### easy seach ip

   if config eth0|awk '/HWaddr/{gsub(/:/,"",$5);print $5}'

##### Find Out My Linux Distribution Name and Version

   if  [ -x /etc/*-release ]; then cat /etc/*-release ; else cat /etc/*-version ; fi

##### mac address for eth0

   if config eth0 | grep 'HWaddr' | awk '{print $5}'

##### Get your IP addresses

   if config | grep -o "inet [^ ]*" | cut -d: -f2

##### Reading my nic's mac address

   if config | grep eth | awk '{print $5}'

##### Get the IP address of a machine. Just the IP, no junk.

   if config -a | awk '/Bcast/{print $2}' | cut -c 5-19

##### Get name of first configured interface

   if config | grep -B 1 "inet addr:" | head -1 | cut -d" " -f1

##### Show local IP

   if config eth0 | grep "inet:" | cut -d ":" -f2 | cut -d " " -f1

##### Get the IP address of a machine

   if data -pN eth0

##### simple echo of IPv4 IP addresses assigned to a machine

   if config | awk '/inet addr/ {print $2 }' | sed 's/.*://g'

##### Read just the IP address of a device

   if config $DEVICE | perl -lne '/inet addr:([\d.]+)/ and print $1'

##### Open file with sudo when there is no write-permission

   if  test -w $1; then vim $1; else sudo vim $1; fi

##### Get all IPs via ifconfig

   if config | grep "inet addr" | cut -d: -f2 | cut -d' ' -f1

##### Get the IP address

   if config | awk -F"[: ]+" '/inet addr/ {print $4}'

##### Get the mac address of eth0 in uppercase minus the colons

   if config eth0 | grep 'HWaddr' | awk '{print $5}' | tr 'a-z' 'A-Z' | sed -e 's/://g'

##### Get your local IP regardless of your network interface

   if config | grep "inet\ " | grep -v "127.0" | sed -e 's/inet\ addr://g' | sed -e 's/Bcast:/\ \ \ \ \ \ \ /g' | cut -c 1-29 | sed -e 's/\ //g'

##### show your private/local ip address

   if config | sed '/.*addr.*Bcast.*/ ! d'| sed 's/.*addr:\([0-9\.]*\).*/\1/'

##### show your private/local ip address

   if config | awk '/inet addr/ &&! /127.0.0.1/{ gsub(/addr:/,""); print $2 }'

##### Toggle the Touchpad on or off

   if  [ $(synclient -l | grep TouchpadOff | awk '{print $3}') = "2" ]; then synclient TouchpadOff=1; elif [ $(synclient -l | grep TouchpadOff | awk '{print $3}') == "1" ]; then synclient TouchpadOff=2; else synclient TouchpadOff=2; fi

##### Mac, ip, and hostname change - sweet!

   if config eth0 down hw ether (newmacaddresshere) && ifconfig eth0 up && ifconfig eth0 (newipaddresshere) netmask 255.255.255.0 up && /bin/hostname (newhostnamehere)

##### Return IP Address

   if config -a|grep Bcast:|cut -d\: -f2|awk '{print $1}'

##### Get the IP address of a machine. Just the IP, no junk.

   if config -a | awk '/Bcast/{print $2}' | cut -c 5-19

##### Get the IP address

   if config | grep "inet addr" | cut -d":" -f2 | cut -d" " -f1

##### Twitter Account Validator

   if  lynx dump http://twitter.com/xmuda | grep -q "Sorry, that page does"; then echo "Dont Exist"; else echo "Exist"; fi

##### Check if *hardware* is 32bit or 64bit

   if  [[ lm = $(cat /proc/cpuinfo | grep " lm ") ]] ; then echo "64 bits" ; else echo "32 bits" ; fi

##### simple echo of IPv4 IP addresses assigned to a machine

   if data -pa eth0

##### show your private/local ip address

   if config | grep addr:192 | sed s/Bcast.*// | sed 's/^.*inet addr://'

##### get LAN ip

   if config |grep broadcast  | awk '{print $2}'

##### Get all IPs via ifconfig

   if config | grep "inet [[:alpha:]]\+" | cut -d: -f2 | cut -d' ' -f2

##### Leave a comment when voting down..

   if  [ "${vote}" = "down" ]; then echo leave comment; fi

##### get LAN ip

   if config |grep broadcast  | awk '{print $2}'

##### Get IPv4 of eth0 for use with scripts

   if config eth0 | grep "inet " | cut -d ':' -f2 | awk '{print $1}'

##### Get all mac address

   if config | awk '/HWaddr/ { print $NF }'

##### List your MACs address

   if config eth0 | grep -o -E '([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}'

##### Show interface/ip using awk

   if config -a| awk '/^wlan|^eth|^lo/ {;a=$1;FS=":"; nextline=NR+1; next}{ if (NR==nextline) { split($2,b," ")}{ if ($2 ~ /[0-9]\./) {print a,b[1]}; FS=" "}}'

##### save command output to image

   if config | convert label:@- ip.png

##### save command output to image

   if config | convert label:@- ip.png

##### Get your internal IP address and nothing but your internal IP address

   if config $devices | grep "inet addr" | sed 's/.*inet addr:\([0-9\.]*\).*/\1/g'

##### save command output to image

   if config | convert label:@- ip.png

##### Do command when logged in from certain ips using ssh

   if  [ "${SSH_CLIENT%% *}" == "ipaddr" ]; then command; fi

##### save command output to image

   if config | convert label:@- ip.png

##### save command output to image

   if config | convert label:@- ip.png

##### save command output to image

   if config | convert label:@- ip.png

##### Determine whether a CPU has 64 bit capability or not

   if  cat /proc/cpuinfo | grep " lm " &> /dev/null; then echo "Got 64bit" ; fi

##### Delete all aliases for a network interface on a (Free)BSD system

   if config | grep "0xffffffff" | awk '{ print $2 }' | xargs -n 1 ifconfig em0 delete

##### Grab the first 3 octets of your ip addresses

   if config | awk -F: '/inet addr:/ { sub(/\.[^.]+$/, "", $2); if (!seen[$2]++ && $2 != "127.0.0") print $2 }'

##### Check if running in an X session

   if  [ ! -z "${DISPLAY}" ]; then someXcmd ; fi

##### Get all mac address

   if config -a| grep -o -E '([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}'

##### exit if another instance is running

   if  [ `fuser $0|wc -w` -gt "1" ];then exit; fi

##### Get IPv4 of eth0 for use with scripts

   if config eth0 | grep 'inet addr' | cut -d ':' -f 2 | cut -d ' ' -f 1

##### Find if $b is in $a in bash

   if  grep -q "$b" <<<$a; then echo "'$b' was found in '$a'"; fi

##### Non Numeric Check

   if  [ -z $(echo $var | grep [0-9]) ]; then echo "NON NUMERIC"; fi

##### Find if $b is in $a in bash

   if  [ "x${a/$b/}" != "x$a" ]; then echo "'$b' is in '$a'"; fi

##### Grab an interface's IP from ifconfig without screen clutter

   if config eth1 | grep inet\ addr | awk '{print $2}' | cut -d: -f2 | sed s/^/eth1:\ /g

##### Force the script to be started as root

   if  [ $EUID -ne 0 ]; then if [ -t 0 ]; then exec sudo $0; else exec gksu $0; fi; fi;

##### Getting the ip address of eth0

   if config eth0 | awk '/inet addr/ {split ($2,A,":"); print A[2]}'

##### determine if tcp port is open

   if  (nc -zw2 www.example.com 80); then echo open; fi

##### Functions to display, save and restore $IFS

   if s () { echo -n "${IFS}"|hexdump -e '""  10/1 "'\''%_c'\''\t" "\n"' -e '"" 10/1 "0x%02x\t" "\n\n"'|sed "s/''\|\t0x[^0-9]//g; $,/^$/d"

##### Get all IPs via ifconfig

   if config | awk '/ddr:[0-9]/ {sub(/addr:/, ""); print $2}'

##### Find all Mac Address

   if config | egrep [0-9A-Za-z]{2}\(:[0-9A-Za-z]{2}\){5} | awk '{print $1 ":\t" $5}'

##### Get your local IP regardless of your network interface

   if config|sed '/inet/!d;/127.0/d;/dr:\s/d;s/^.*:\(.*\)B.*$/\1/'

##### NICs, IPs, and Mac

   if config -a | nawk 'BEGIN {FS=" "}{RS="\n"}{ if($1~ /:/) {printf "%s ", $1}}{ if($1=="inet") {print "  ",system("arp "$2)}}'|egrep -v "^[0-9]$"

##### Display current bandwidth statistics

   if stat -nt

##### Run a command if today is the last day of the month

   if  [[ `:$(cal);echo $_` == `date +%d` ]]; then ROTATE_MONTHLY_TABLES_SCRIPT;fi

##### Get MAC address

   if config | awk '/^eth0/ {print $5}'

##### List your interfaces and MAC addresses

   if config | grep HWaddr | awk '{print $1,$5}'

##### Print the IP address and the Mac address in the same line

   if config | head -n 2 | tr -d '\n' | sed -n 's/.*\(00:[^ ]*\).*\(adr:[^ ]*\).*/mac:\1 - \2/p'

##### Get the next weekday for an 'at' command

   if  [ $(date +%u) -lt 6 ];then AT="tomorrow"; else AT="next monday";fi;echo "beep" | at ${AT}

##### Get all IPs via ifconfig

   if config | awk '/inet / {sub(/addr:/, "", $2); print $2}'

##### Changing the terminal title to the last shell command

   if  [ "$SHELL" = '/bin/zsh' ]; then case $TERM in rxvt|*term|linux) preexec () { print -Pn "\e]0;$1\a" };; esac; fi

##### Check if variable is a number

   if  [[ "$1" =~ ^[0-9]+$ ]]; then echo "Is a number"; fi

##### Force the script to be started as root

   if  [ $EUID -ne 0 ];then if [ -t $DISPLAY ]; then  sudo $0 "$*"; exit; else xdg-su -c "$0 $*"; exit;fi;fi

##### Simple MAC Changeing

   if config wlan0 hw ether 00:11:22:33:44:55

##### Get all IPs via ifconfig

   if config -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'

##### share internet connection with only one network interface

   if config eth0:1 192.168.0.1/24

##### Get all IPs via ifconfig

   if config | awk -F':| +'  '/ddr:/{print $4}'

##### Mac OS X - List all of my machine's IP addresses

   if config | awk '/inet / {print $2}'

##### Get the IP address

   if config | sed -n 's/.*inet addr:\([0-9.]\+\)\s.*/\1/p'

##### ARP Scan

   if  [ -x  /sbin/arping ] ; then for i in {1..255} ; do echo arping 10.1.1.$i ; arping -c 1 10.1.1.$i | grep reply ;    done ; fi

##### check if ufw (uncomplicated firewall) is enabled in bash

   if  grep ENABLED=yes /etc/ufw/ufw.conf>/dev/null; then echo "enabled"; else echo "disabled"; fi

##### List Server IP address

   if config eth0 | grep inet | awk '{ print $2 }'

##### Make sure your script runs with a minimum Bash version

   if  [ -z "${BASH_VERSINFO}" ] || [ -z "${BASH_VERSINFO[0]}" ] || [ ${BASH_VERSINFO[0]} -lt 4 ]; then echo "This script requires Bash version >= 4"; exit 1; fi

##### Get IPv4 of eth0 for use with scripts

   if config eth0 | perl -ne "print if m/inet addr:((\d+\.){3})+/" | sed "s/inet addr//" | sed "s/Bcast//" |awk -F: '{print $2}'

##### Disable an interface's multicast filter for testing

   if config eth0 allmulti

##### Twitter Account Validator

   if  wget https://twitter.com/users/username_available?username=xmuda -q -O - | grep -q "\"reason\":\"taken\""; then echo "Username taken"; else echo "Free / Banned Name"; fi

##### Get MAC ID linux command line

   if config |grep HWaddr |cut -d ' ' -f 1,11 |grep eth0 |cut -d ' ' -f 2|xargs | awk -F':' '{ print $1$2$3$4$5$6 }'

##### Get IPv4 of eth0 for use with scripts

   if config eth0 | awk '/inet / {print $2}' | cut -d ':' -f2

##### Get your local IP regardless of your network interface

   if config | sed -ne 's/^.*inet \(addr:\)*\([^ ]*\).*/\2/;te' -e 'd;:e' -e '/^127\./d;p'

##### check web site status

   if  [ "`curl -s head domain.tld | grep HTTP | cut -d" " -f2`" != "200" ];then echo "error"; echo "doing else" ;fi

##### show your private/local ip address

   if config | grep cast | cut -d':' -f2 | cut -d' ' -f1

##### Get all IPs via ifconfig

   if config | perl -nle'/dr:(\S+)/ && print $1'

##### Check if your webserver supports gzip compression with curl

   if  curl -s -I -H "Accept-Encoding: gzip,deflate" http://example.com/ | grep 'Content-Encoding: gzip' >/dev/null 2>&1 ; then echo Yes; else echo No;fi

##### Get IPv4 of eth0 for use with scripts

   if config eth0 | grep -o "inet [^ ]*" | cut -d: -f2

##### Read just the IP address of a device

   if config -l | xargs -n1 ipconfig getifaddr 2> /dev/null

##### extraer la MAC del comando ifconfig

   if config eth0 | grep HW | cut -d " " -f 11

##### change mac address

   if config eth0 hw ether 00:11:22:33:44:55

##### get LAN ip

   if config | grep inet

##### Print all interfaces IP and Mac address in the same line

   if config | egrep -A2 "eth|wlan" | tr -d "\n"| sed 's/\-\-/\n/g'|awk '{print "mac: "$5 " " $7}' | sed 's/addr:/addr: /g'

##### List your interfaces and MAC addresses

   if config | awk '/HWaddr/ { print $1, $5 }'

##### Alias for lazy tmux create/reattach

   if  tmux has; then tmux attach -d; else tmux new; fi

##### Return IP Address

   if config -a| awk 'BEGIN{FS="[ :]+"} /Bcast/{print $4}'

##### Reading my nic's mac address

   if config eth3|sed 's/^eth3.*HWaddr //;q'

##### Get ethX mac addresses

   if config | awk '/HW/ {print $5}'

##### Reading my nic's mac address

   if config | grep HWaddr

##### Check if variable is a number

   if  [ "$testnum" -eq "$testnum" 2>/dev/null ]; then echo It is numeric; fi

##### Add directory to $PATH if it's not already there

   if  [[ ":$PATH:" != *":$dir:"* ]]; then PATH=${PATH}:$dir; fi

##### debian based OS update apt/dpkg only if it hasn't been updated in N time

   if  [[ $(expr $(date +%s) - $(stat -c %X /var/lib/apt/periodic/update-success-stamp)) -gt 86400 ]]; then sudo apt-get update fi

##### get the public ip adress of server on shell

   if config | grep "inet addr:" | cut -d: -f2 | awk {'print($1)'} | grep -v 127.0

##### sends your internal IP by email

   if config en1 | awk '/inet / {print $2}' | mail -s "hello world" email@email.com

##### Get primary IP of the local machine

   if config $(route -n |grep -m1 -e ^'0\.0\.\0\.0' |awk '{print $NF}') |grep 'inet addr' |awk '{print $2}' |sed 's/addr://1'

##### Logout ssh user automatically after specified time

   if  [ -n "$SSH_CONNECTION" ]; then export TMOUT=300; fi

##### Get IPv4 of eth0 for use with scripts

   if config eth0 | grep "inet " | cut -d ':' -f2 | awk '{print $1}'

##### Get all mac address

   if config | awk '/HWaddr/ { print $NF }'

##### List your MACs address

   if config eth0 | grep -o -E '([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}'

##### Show interface/ip using awk

   if config -a| awk '/^wlan|^eth|^lo/ {;a=$1;FS=":"; nextline=NR+1; next}{ if (NR==nextline) { split($2,b," ")}{ if ($2 ~ /[0-9]\./) {print a,b[1]}; FS=" "}}'

##### save command output to image

   if config | convert label:@- ip.png

##### save command output to image

   if config | convert label:@- ip.png

##### Get your internal IP address and nothing but your internal IP address

   if config $devices | grep "inet addr" | sed 's/.*inet addr:\([0-9\.]*\).*/\1/g'

##### save command output to image

   if config | convert label:@- ip.png

##### Do command when logged in from certain ips using ssh

   if  [ "${SSH_CLIENT%% *}" == "ipaddr" ]; then command; fi

##### save command output to image

   if config | convert label:@- ip.png

##### save command output to image

   if config | convert label:@- ip.png

##### Determine whether a CPU has 64 bit capability or not

   if  cat /proc/cpuinfo | grep " lm " &> /dev/null; then echo "Got 64bit" ; fi

##### Delete all aliases for a network interface on a (Free)BSD system

   if config | grep "0xffffffff" | awk '{ print $2 }' | xargs -n 1 ifconfig em0 delete

##### Grab the first 3 octets of your ip addresses

   if config | awk -F: '/inet addr:/ { sub(/\.[^.]+$/, "", $2); if (!seen[$2]++ && $2 != "127.0.0") print $2 }'

##### Check if running in an X session

   if  [ ! -z "${DISPLAY}" ]; then someXcmd ; fi

##### Get all mac address

   if config -a| grep -o -E '([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}'

##### exit if another instance is running

   if  [ `fuser $0|wc -w` -gt "1" ];then exit; fi

##### Get IPv4 of eth0 for use with scripts

   if config eth0 | grep 'inet addr' | cut -d ':' -f 2 | cut -d ' ' -f 1

##### Find if $b is in $a in bash

   if  grep -q "$b" <<<$a; then echo "'$b' was found in '$a'"; fi

##### Non Numeric Check

   if  [ -z $(echo $var | grep [0-9]) ]; then echo "NON NUMERIC"; fi

##### Find if $b is in $a in bash

   if  [ "x${a/$b/}" != "x$a" ]; then echo "'$b' is in '$a'"; fi

##### Grab an interface's IP from ifconfig without screen clutter

   if config eth1 | grep inet\ addr | awk '{print $2}' | cut -d: -f2 | sed s/^/eth1:\ /g

##### Force the script to be started as root

   if  [ $EUID -ne 0 ]; then if [ -t 0 ]; then exec sudo $0; else exec gksu $0; fi; fi;

##### Getting the ip address of eth0

   if config eth0 | awk '/inet addr/ {split ($2,A,":"); print A[2]}'

##### determine if tcp port is open

   if  (nc -zw2 www.example.com 80); then echo open; fi

##### Functions to display, save and restore $IFS

   if s () { echo -n "${IFS}"|hexdump -e '""  10/1 "'\''%_c'\''\t" "\n"' -e '"" 10/1 "0x%02x\t" "\n\n"'|sed "s/''\|\t0x[^0-9]//g; $,/^$/d"

##### Get all IPs via ifconfig

   if config | awk '/ddr:[0-9]/ {sub(/addr:/, ""); print $2}'

##### Find all Mac Address

   if config | egrep [0-9A-Za-z]{2}\(:[0-9A-Za-z]{2}\){5} | awk '{print $1 ":\t" $5}'

##### Get your local IP regardless of your network interface

   if config|sed '/inet/!d;/127.0/d;/dr:\s/d;s/^.*:\(.*\)B.*$/\1/'

##### NICs, IPs, and Mac

   if config -a | nawk 'BEGIN {FS=" "}{RS="\n"}{ if($1~ /:/) {printf "%s ", $1}}{ if($1=="inet") {print "  ",system("arp "$2)}}'|egrep -v "^[0-9]$"

##### Display current bandwidth statistics

   if stat -nt

##### Run a command if today is the last day of the month

   if  [[ `:$(cal);echo $_` == `date +%d` ]]; then ROTATE_MONTHLY_TABLES_SCRIPT;fi

##### Get MAC address

   if config | awk '/^eth0/ {print $5}'

##### List your interfaces and MAC addresses

   if config | grep HWaddr | awk '{print $1,$5}'

##### Print the IP address and the Mac address in the same line

   if config | head -n 2 | tr -d '\n' | sed -n 's/.*\(00:[^ ]*\).*\(adr:[^ ]*\).*/mac:\1 - \2/p'

##### Get the next weekday for an 'at' command

   if  [ $(date +%u) -lt 6 ];then AT="tomorrow"; else AT="next monday";fi;echo "beep" | at ${AT}

##### Get all IPs via ifconfig

   if config | awk '/inet / {sub(/addr:/, "", $2); print $2}'

##### Changing the terminal title to the last shell command

   if  [ "$SHELL" = '/bin/zsh' ]; then case $TERM in rxvt|*term|linux) preexec () { print -Pn "\e]0;$1\a" };; esac; fi

##### Check if variable is a number

   if  [[ "$1" =~ ^[0-9]+$ ]]; then echo "Is a number"; fi

##### Force the script to be started as root

   if  [ $EUID -ne 0 ];then if [ -t $DISPLAY ]; then  sudo $0 "$*"; exit; else xdg-su -c "$0 $*"; exit;fi;fi

##### Simple MAC Changeing

   if config wlan0 hw ether 00:11:22:33:44:55

##### Get all IPs via ifconfig

   if config -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'

##### share internet connection with only one network interface

   if config eth0:1 192.168.0.1/24

##### Get all IPs via ifconfig

   if config | awk -F':| +'  '/ddr:/{print $4}'

##### Mac OS X - List all of my machine's IP addresses

   if config | awk '/inet / {print $2}'

##### Get the IP address

   if config | sed -n 's/.*inet addr:\([0-9.]\+\)\s.*/\1/p'

##### ARP Scan

   if  [ -x  /sbin/arping ] ; then for i in {1..255} ; do echo arping 10.1.1.$i ; arping -c 1 10.1.1.$i | grep reply ;    done ; fi

##### check if ufw (uncomplicated firewall) is enabled in bash

   if  grep ENABLED=yes /etc/ufw/ufw.conf>/dev/null; then echo "enabled"; else echo "disabled"; fi

##### List Server IP address

   if config eth0 | grep inet | awk '{ print $2 }'

##### Make sure your script runs with a minimum Bash version

   if  [ -z "${BASH_VERSINFO}" ] || [ -z "${BASH_VERSINFO[0]}" ] || [ ${BASH_VERSINFO[0]} -lt 4 ]; then echo "This script requires Bash version >= 4"; exit 1; fi

##### Get IPv4 of eth0 for use with scripts

   if config eth0 | perl -ne "print if m/inet addr:((\d+\.){3})+/" | sed "s/inet addr//" | sed "s/Bcast//" |awk -F: '{print $2}'

##### Disable an interface's multicast filter for testing

   if config eth0 allmulti

##### Twitter Account Validator

   if  wget https://twitter.com/users/username_available?username=xmuda -q -O - | grep -q "\"reason\":\"taken\""; then echo "Username taken"; else echo "Free / Banned Name"; fi

##### Get MAC ID linux command line

   if config |grep HWaddr |cut -d ' ' -f 1,11 |grep eth0 |cut -d ' ' -f 2|xargs | awk -F':' '{ print $1$2$3$4$5$6 }'

##### Get IPv4 of eth0 for use with scripts

   if config eth0 | awk '/inet / {print $2}' | cut -d ':' -f2

##### Get your local IP regardless of your network interface

   if config | sed -ne 's/^.*inet \(addr:\)*\([^ ]*\).*/\2/;te' -e 'd;:e' -e '/^127\./d;p'

##### check web site status

   if  [ "`curl -s head domain.tld | grep HTTP | cut -d" " -f2`" != "200" ];then echo "error"; echo "doing else" ;fi

##### show your private/local ip address

   if config | grep cast | cut -d':' -f2 | cut -d' ' -f1

##### Get all IPs via ifconfig

   if config | perl -nle'/dr:(\S+)/ && print $1'

##### Check if your webserver supports gzip compression with curl

   if  curl -s -I -H "Accept-Encoding: gzip,deflate" http://example.com/ | grep 'Content-Encoding: gzip' >/dev/null 2>&1 ; then echo Yes; else echo No;fi

##### Get IPv4 of eth0 for use with scripts

   if config eth0 | grep -o "inet [^ ]*" | cut -d: -f2

##### Read just the IP address of a device

   if config -l | xargs -n1 ipconfig getifaddr 2> /dev/null

##### extraer la MAC del comando ifconfig

   if config eth0 | grep HW | cut -d " " -f 11

##### change mac address

   if config eth0 hw ether 00:11:22:33:44:55

##### get LAN ip

   if config | grep inet

##### Print all interfaces IP and Mac address in the same line

   if config | egrep -A2 "eth|wlan" | tr -d "\n"| sed 's/\-\-/\n/g'|awk '{print "mac: "$5 " " $7}' | sed 's/addr:/addr: /g'

##### List your interfaces and MAC addresses

   if config | awk '/HWaddr/ { print $1, $5 }'

##### Alias for lazy tmux create/reattach

   if  tmux has; then tmux attach -d; else tmux new; fi

##### Return IP Address

   if config -a| awk 'BEGIN{FS="[ :]+"} /Bcast/{print $4}'

##### Reading my nic's mac address

   if config eth3|sed 's/^eth3.*HWaddr //;q'

##### Get ethX mac addresses

   if config | awk '/HW/ {print $5}'

##### Reading my nic's mac address

   if config | grep HWaddr

##### Check if variable is a number

   if  [ "$testnum" -eq "$testnum" 2>/dev/null ]; then echo It is numeric; fi

##### Add directory to $PATH if it's not already there

   if  [[ ":$PATH:" != *":$dir:"* ]]; then PATH=${PATH}:$dir; fi

##### sends your internal IP by email

   if config en1 | awk '/inet / {print $2}' | mail -s "hello world" email@email.com
