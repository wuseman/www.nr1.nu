# ifconfig

##### Get the IP address

   ifconfig  | grep "inet" | grep "broadcast" | awk '{print $2}'

##### Get the IP address

   ifconfig  | grep "inet" | tail -1 | awk '{print $2}'

##### Get your internal IP address and nothing but your internal IP address

   ifconfig  eth0 | sed -n 's/.*inet addr:\([0-9\.]*\).*/\1/p'

##### Get IPv4 of eth0 for use with scripts

   ifconfig  eth0 | perl -ne 'print $1 if m/addr:((?:\d+\.){3}\d+)/'

##### easy seach ip

   ifconfig  eth0|awk '/HWaddr/{gsub(/:/,"",$5);print $5}'

##### mac address for eth0

   ifconfig  eth0 | grep 'HWaddr' | awk '{print $5}'

##### Get your IP addresses

   ifconfig  | grep -o "inet [^ ]*" | cut -d: -f2

##### Reading my nic's mac address

   ifconfig  | grep eth | awk '{print $5}'

##### Get the IP address of a machine. Just the IP, no junk.

   ifconfig  -a | awk '/Bcast/{print $2}' | cut -c 5-19

##### Get name of first configured interface

   ifconfig  | grep -B 1 "inet addr:" | head -1 | cut -d" " -f1

##### Show local IP

   ifconfig  eth0 | grep "inet:" | cut -d ":" -f2 | cut -d " " -f1

##### simple echo of IPv4 IP addresses assigned to a machine

   ifconfig  | awk '/inet addr/ {print $2 }' | sed 's/.*://g'

##### Read just the IP address of a device

   ifconfig  $DEVICE | perl -lne '/inet addr:([\d.]+)/ and print $1'

##### Get all IPs via ifconfig

   ifconfig  | grep "inet addr" | cut -d: -f2 | cut -d' ' -f1

##### Get the IP address

   ifconfig  | awk -F"[: ]+" '/inet addr/ {print $4}'

##### Get the mac address of eth0 in uppercase minus the colons

   ifconfig  eth0 | grep 'HWaddr' | awk '{print $5}' | tr 'a-z' 'A-Z' | sed -e 's/://g'

##### Get your local IP regardless of your network interface

   ifconfig  | grep "inet\ " | grep -v "127.0" | sed -e 's/inet\ addr://g' | sed -e 's/Bcast:/\ \ \ \ \ \ \ /g' | cut -c 1-29 | sed -e 's/\ //g'

##### show your private/local ip address

   ifconfig  | sed '/.*addr.*Bcast.*/ ! d'| sed 's/.*addr:\([0-9\.]*\).*/\1/'

##### show your private/local ip address

   ifconfig  | awk '/inet addr/ &&! /127.0.0.1/{ gsub(/addr:/,""); print $2 }'

##### Mac, ip, and hostname change - sweet!

   ifconfig  eth0 down hw ether (newmacaddresshere) && ifconfig eth0 up && ifconfig eth0 (newipaddresshere) netmask 255.255.255.0 up && /bin/hostname (newhostnamehere)

##### Return IP Address

   ifconfig  -a|grep Bcast:|cut -d\: -f2|awk '{print $1}'

##### Get the IP address of a machine. Just the IP, no junk.

   ifconfig  -a | awk '/Bcast/{print $2}' | cut -c 5-19

##### Get the IP address

   ifconfig  | grep "inet addr" | cut -d":" -f2 | cut -d" " -f1

##### show your private/local ip address

   ifconfig  | grep addr:192 | sed s/Bcast.*// | sed 's/^.*inet addr://'

##### get LAN ip

   ifconfig  |grep broadcast  | awk '{print $2}'

##### Get all IPs via ifconfig

   ifconfig  | grep "inet [[:alpha:]]\+" | cut -d: -f2 | cut -d' ' -f2

##### get LAN ip

   ifconfig  |grep broadcast  | awk '{print $2}'

##### Get IPv4 of eth0 for use with scripts

   ifconfig  eth0 | grep "inet " | cut -d ':' -f2 | awk '{print $1}'

##### Get all mac address

   ifconfig  | awk '/HWaddr/ { print $NF }'

##### List your MACs address

   ifconfig  eth0 | grep -o -E '([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}'

##### Show interface/ip using awk

   ifconfig  -a| awk '/^wlan|^eth|^lo/ {;a=$1;FS=":"; nextline=NR+1; next}{ if (NR==nextline) { split($2,b," ")}{ if ($2 ~ /[0-9]\./) {print a,b[1]}; FS=" "}}'

##### save command output to image

   ifconfig  | convert label:@- ip.png

##### save command output to image

   ifconfig  | convert label:@- ip.png

##### Get your internal IP address and nothing but your internal IP address

   ifconfig  $devices | grep "inet addr" | sed 's/.*inet addr:\([0-9\.]*\).*/\1/g'

##### save command output to image

   ifconfig  | convert label:@- ip.png

##### save command output to image

   ifconfig  | convert label:@- ip.png

##### save command output to image

   ifconfig  | convert label:@- ip.png

##### save command output to image

   ifconfig  | convert label:@- ip.png

##### Delete all aliases for a network interface on a (Free)BSD system

   ifconfig  | grep "0xffffffff" | awk '{ print $2 }' | xargs -n 1 ifconfig em0 delete

##### Grab the first 3 octets of your ip addresses

   ifconfig  | awk -F: '/inet addr:/ { sub(/\.[^.]+$/, "", $2); if (!seen[$2]++ && $2 != "127.0.0") print $2 }'

##### Get all mac address

   ifconfig  -a| grep -o -E '([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}'

##### Get IPv4 of eth0 for use with scripts

   ifconfig  eth0 | grep 'inet addr' | cut -d ':' -f 2 | cut -d ' ' -f 1

##### Grab an interface's IP from ifconfig without screen clutter

   ifconfig  eth1 | grep inet\ addr | awk '{print $2}' | cut -d: -f2 | sed s/^/eth1:\ /g

##### Getting the ip address of eth0

   ifconfig  eth0 | awk '/inet addr/ {split ($2,A,":"); print A[2]}'

##### Get all IPs via ifconfig

   ifconfig  | awk '/ddr:[0-9]/ {sub(/addr:/, ""); print $2}'

##### Find all Mac Address

   ifconfig  | egrep [0-9A-Za-z]{2}\(:[0-9A-Za-z]{2}\){5} | awk '{print $1 ":\t" $5}'

##### Get your local IP regardless of your network interface

   ifconfig |sed '/inet/!d;/127.0/d;/dr:\s/d;s/^.*:\(.*\)B.*$/\1/'

##### NICs, IPs, and Mac

   ifconfig  -a | nawk 'BEGIN {FS=" "}{RS="\n"}{ if($1~ /:/) {printf "%s ", $1}}{ if($1=="inet") {print "  ",system("arp "$2)}}'|egrep -v "^[0-9]$"

##### Get MAC address

   ifconfig  | awk '/^eth0/ {print $5}'

##### List your interfaces and MAC addresses

   ifconfig  | grep HWaddr | awk '{print $1,$5}'

##### Print the IP address and the Mac address in the same line

   ifconfig  | head -n 2 | tr -d '\n' | sed -n 's/.*\(00:[^ ]*\).*\(adr:[^ ]*\).*/mac:\1 - \2/p'

##### Get all IPs via ifconfig

   ifconfig  | awk '/inet / {sub(/addr:/, "", $2); print $2}'

##### Simple MAC Changeing

   ifconfig  wlan0 hw ether 00:11:22:33:44:55

##### Get all IPs via ifconfig

   ifconfig  -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'

##### share internet connection with only one network interface

   ifconfig  eth0:1 192.168.0.1/24

##### Get all IPs via ifconfig

   ifconfig  | awk -F':| +'  '/ddr:/{print $4}'

##### Mac OS X - List all of my machine's IP addresses

   ifconfig  | awk '/inet / {print $2}'

##### Get the IP address

   ifconfig  | sed -n 's/.*inet addr:\([0-9.]\+\)\s.*/\1/p'

##### List Server IP address

   ifconfig  eth0 | grep inet | awk '{ print $2 }'

##### Get IPv4 of eth0 for use with scripts

   ifconfig  eth0 | perl -ne "print if m/inet addr:((\d+\.){3})+/" | sed "s/inet addr//" | sed "s/Bcast//" |awk -F: '{print $2}'

##### Disable an interface's multicast filter for testing

   ifconfig  eth0 allmulti

##### Get MAC ID linux command line

   ifconfig  |grep HWaddr |cut -d ' ' -f 1,11 |grep eth0 |cut -d ' ' -f 2|xargs | awk -F':' '{ print $1$2$3$4$5$6 }'

##### Get IPv4 of eth0 for use with scripts

   ifconfig  eth0 | awk '/inet / {print $2}' | cut -d ':' -f2

##### Get your local IP regardless of your network interface

   ifconfig  | sed -ne 's/^.*inet \(addr:\)*\([^ ]*\).*/\2/;te' -e 'd;:e' -e '/^127\./d;p'

##### show your private/local ip address

   ifconfig  | grep cast | cut -d':' -f2 | cut -d' ' -f1

##### Get all IPs via ifconfig

   ifconfig  | perl -nle'/dr:(\S+)/ && print $1'

##### Get IPv4 of eth0 for use with scripts

   ifconfig  eth0 | grep -o "inet [^ ]*" | cut -d: -f2

##### Read just the IP address of a device

   ifconfig  -l | xargs -n1 ipconfig getifaddr 2> /dev/null

##### extraer la MAC del comando ifconfig

   ifconfig  eth0 | grep HW | cut -d " " -f 11

##### change mac address

   ifconfig  eth0 hw ether 00:11:22:33:44:55

##### get LAN ip

   ifconfig  | grep inet

##### Print all interfaces IP and Mac address in the same line

   ifconfig  | egrep -A2 "eth|wlan" | tr -d "\n"| sed 's/\-\-/\n/g'|awk '{print "mac: "$5 " " $7}' | sed 's/addr:/addr: /g'

##### List your interfaces and MAC addresses

   ifconfig  | awk '/HWaddr/ { print $1, $5 }'

##### Return IP Address

   ifconfig  -a| awk 'BEGIN{FS="[ :]+"} /Bcast/{print $4}'

##### Reading my nic's mac address

   ifconfig  eth3|sed 's/^eth3.*HWaddr //;q'

##### Get ethX mac addresses

   ifconfig  | awk '/HW/ {print $5}'

##### Reading my nic's mac address

   ifconfig  | grep HWaddr

##### get the public ip adress of server on shell

   ifconfig  | grep "inet addr:" | cut -d: -f2 | awk {'print($1)'} | grep -v 127.0

##### sends your internal IP by email

   ifconfig  en1 | awk '/inet / {print $2}' | mail -s "hello world" email@email.com

##### Get primary IP of the local machine

   ifconfig  $(route -n |grep -m1 -e ^'0\.0\.\0\.0' |awk '{print $NF}') |grep 'inet addr' |awk '{print $2}' |sed 's/addr://1'

##### Get IPv4 of eth0 for use with scripts

   ifconfig  eth0 | grep "inet " | cut -d ':' -f2 | awk '{print $1}'

##### Get all mac address

   ifconfig  | awk '/HWaddr/ { print $NF }'

##### List your MACs address

   ifconfig  eth0 | grep -o -E '([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}'

##### Show interface/ip using awk

   ifconfig  -a| awk '/^wlan|^eth|^lo/ {;a=$1;FS=":"; nextline=NR+1; next}{ if (NR==nextline) { split($2,b," ")}{ if ($2 ~ /[0-9]\./) {print a,b[1]}; FS=" "}}'

##### save command output to image

   ifconfig  | convert label:@- ip.png

##### save command output to image

   ifconfig  | convert label:@- ip.png

##### Get your internal IP address and nothing but your internal IP address

   ifconfig  $devices | grep "inet addr" | sed 's/.*inet addr:\([0-9\.]*\).*/\1/g'

##### save command output to image

   ifconfig  | convert label:@- ip.png

##### save command output to image

   ifconfig  | convert label:@- ip.png

##### save command output to image

   ifconfig  | convert label:@- ip.png

##### Delete all aliases for a network interface on a (Free)BSD system

   ifconfig  | grep "0xffffffff" | awk '{ print $2 }' | xargs -n 1 ifconfig em0 delete

##### Grab the first 3 octets of your ip addresses

   ifconfig  | awk -F: '/inet addr:/ { sub(/\.[^.]+$/, "", $2); if (!seen[$2]++ && $2 != "127.0.0") print $2 }'

##### Get all mac address

   ifconfig  -a| grep -o -E '([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}'

##### Get IPv4 of eth0 for use with scripts

   ifconfig  eth0 | grep 'inet addr' | cut -d ':' -f 2 | cut -d ' ' -f 1

##### Grab an interface's IP from ifconfig without screen clutter

   ifconfig  eth1 | grep inet\ addr | awk '{print $2}' | cut -d: -f2 | sed s/^/eth1:\ /g

##### Getting the ip address of eth0

   ifconfig  eth0 | awk '/inet addr/ {split ($2,A,":"); print A[2]}'

##### Get all IPs via ifconfig

   ifconfig  | awk '/ddr:[0-9]/ {sub(/addr:/, ""); print $2}'

##### Find all Mac Address

   ifconfig  | egrep [0-9A-Za-z]{2}\(:[0-9A-Za-z]{2}\){5} | awk '{print $1 ":\t" $5}'

##### Get your local IP regardless of your network interface

   ifconfig |sed '/inet/!d;/127.0/d;/dr:\s/d;s/^.*:\(.*\)B.*$/\1/'

##### NICs, IPs, and Mac

   ifconfig  -a | nawk 'BEGIN {FS=" "}{RS="\n"}{ if($1~ /:/) {printf "%s ", $1}}{ if($1=="inet") {print "  ",system("arp "$2)}}'|egrep -v "^[0-9]$"

##### Get MAC address

   ifconfig  | awk '/^eth0/ {print $5}'

##### List your interfaces and MAC addresses

   ifconfig  | grep HWaddr | awk '{print $1,$5}'

##### Print the IP address and the Mac address in the same line

   ifconfig  | head -n 2 | tr -d '\n' | sed -n 's/.*\(00:[^ ]*\).*\(adr:[^ ]*\).*/mac:\1 - \2/p'

##### Get all IPs via ifconfig

   ifconfig  | awk '/inet / {sub(/addr:/, "", $2); print $2}'

##### Simple MAC Changeing

   ifconfig  wlan0 hw ether 00:11:22:33:44:55

##### Get all IPs via ifconfig

   ifconfig  -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'

##### share internet connection with only one network interface

   ifconfig  eth0:1 192.168.0.1/24

##### Get all IPs via ifconfig

   ifconfig  | awk -F':| +'  '/ddr:/{print $4}'

##### Mac OS X - List all of my machine's IP addresses

   ifconfig  | awk '/inet / {print $2}'

##### Get the IP address

   ifconfig  | sed -n 's/.*inet addr:\([0-9.]\+\)\s.*/\1/p'

##### List Server IP address

   ifconfig  eth0 | grep inet | awk '{ print $2 }'

##### Get IPv4 of eth0 for use with scripts

   ifconfig  eth0 | perl -ne "print if m/inet addr:((\d+\.){3})+/" | sed "s/inet addr//" | sed "s/Bcast//" |awk -F: '{print $2}'

##### Disable an interface's multicast filter for testing

   ifconfig  eth0 allmulti

##### Get MAC ID linux command line

   ifconfig  |grep HWaddr |cut -d ' ' -f 1,11 |grep eth0 |cut -d ' ' -f 2|xargs | awk -F':' '{ print $1$2$3$4$5$6 }'

##### Get IPv4 of eth0 for use with scripts

   ifconfig  eth0 | awk '/inet / {print $2}' | cut -d ':' -f2

##### Get your local IP regardless of your network interface

   ifconfig  | sed -ne 's/^.*inet \(addr:\)*\([^ ]*\).*/\2/;te' -e 'd;:e' -e '/^127\./d;p'

##### show your private/local ip address

   ifconfig  | grep cast | cut -d':' -f2 | cut -d' ' -f1

##### Get all IPs via ifconfig

   ifconfig  | perl -nle'/dr:(\S+)/ && print $1'

##### Get IPv4 of eth0 for use with scripts

   ifconfig  eth0 | grep -o "inet [^ ]*" | cut -d: -f2

##### Read just the IP address of a device

   ifconfig  -l | xargs -n1 ipconfig getifaddr 2> /dev/null

##### extraer la MAC del comando ifconfig

   ifconfig  eth0 | grep HW | cut -d " " -f 11

##### change mac address

   ifconfig  eth0 hw ether 00:11:22:33:44:55

##### get LAN ip

   ifconfig  | grep inet

##### Print all interfaces IP and Mac address in the same line

   ifconfig  | egrep -A2 "eth|wlan" | tr -d "\n"| sed 's/\-\-/\n/g'|awk '{print "mac: "$5 " " $7}' | sed 's/addr:/addr: /g'

##### List your interfaces and MAC addresses

   ifconfig  | awk '/HWaddr/ { print $1, $5 }'

##### Return IP Address

   ifconfig  -a| awk 'BEGIN{FS="[ :]+"} /Bcast/{print $4}'

##### Reading my nic's mac address

   ifconfig  eth3|sed 's/^eth3.*HWaddr //;q'

##### Get ethX mac addresses

   ifconfig  | awk '/HW/ {print $5}'

##### Reading my nic's mac address

   ifconfig  | grep HWaddr

##### sends your internal IP by email

   ifconfig  en1 | awk '/inet / {print $2}' | mail -s "hello world" email@email.com
