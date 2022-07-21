# ip

##### Get all IPs via ifconfig

   ip config getpacket en0 | grep yi| sed s."yiaddr = "."en0: ".  ipconfig getpacket en1 | grep yi| sed s."yiaddr = "."en1: ".

##### network throughput test

   ip erf -s

##### Get the IP address

   ip  a s eth0 | awk '/inet / {print $2} | sed -e 's/\/..//g'

##### Get the IP address

   ip  a s eth0 | awk -F"[/ ]+" '/inet / {print $3}'

##### Block an IP address

   ip tables -A INPUT -s 65.55.44.100 -j DROP

##### Find default gateway

   ip  route show | awk '$3 ~ /^[1-9]+/ {print $3;}'

##### Show Network IP and Subnet

   ip calc $(ifconfig eth0 | grep "inet addr:" | cut -d':' -f2,4 | sed 's/.+Bcast:/\//g') | awk '/Network/ { print $2 } '

##### get eth0 ip address

   ip  -4 addr show eth0 | awk ' /inet/ {print $2}'

##### show ip address

   ip  -f inet addr show eth0

##### Network Interfaces

   ip  link

##### List your MACs address

   ip  addr show eth0 | grep ether | awk '{print $2}'

##### Get internal and external IP addresses

   ip s(){ for if in ${1:-$(ip link list|grep '^.: '|cut -d\  -f2|cut -d: -f1)};do cur=$(ifconfig $if|grep "inet addr"|sed 's/.*inet addr:\([0-9\.]*\).*/\1/g');printf '%-5s%-15s%-15s\n' $if $cur $(nc -s $cur sine.cluenet.org 128 2>/dev/null||echo $cur);done;}

##### Read just the IP address of a device

   ip  addr|grep "inet "

##### flush cached dns lookups

   ip config /flushdns

##### View your machine firewall settings

   ip tables -L -n -v

##### show ip

   ip  a

##### Get the IP address

   ip  a s eth0 | grep "inet " | head -n 1 | awk '{print $2}' | cut -f1 -d'/'

##### Delete all firewall rules in a chain or all chains

   ip tables -F

##### stop children visiting sex sites:www.baidu.com

   ip tables -A OUTPUT www.baidu.com -p tcp -j REJECT reject-with tcp-reset

##### get all the data about your IP configuration across all network cards

   ip config /all

##### Find default gateway

   ip  route | awk '/default/{print $3}'

##### Get all mac address

   ip  link show

##### Print IP of any interface. Useful for scripts.

   ip  route show dev ppp0 | awk '{ print $7 }'

##### Show all configured ipv4

   ip  -o -4 a s

##### Show current iptables rules, with line numbers

   ip tables -nL -v line-numbers

##### Tired of switching between proxy and no proxy? here's the solution.

   ip tables -t nat -A OUTPUT -d ! 10.0.0.0/8 -p tcp dport 80 -j DNAT to-destination 10.1.1.123:3128

##### Get an IP address out of fail2ban jail

   ip tables -D fail2ban-SSH -s <ip_address_to_be_set_free> -j DROP

##### monitor network traffic and throughput in real time

   ip traf

##### Print the IPv4 address of a given interface

   ip  a s eth0 | awk -F'[/ ]+' '/inet[^6]/{print $3}'

##### List your MACs address

   ip  link | awk '/link/ {print $2}'

##### Get the IP address

   ip  -f inet a | awk '/inet / { print $2 }'

##### Get IPv4 of eth0 for use with scripts

   ip  addr show eth0 | awk '/inet / {FS = "/"; $0 = $2; print $1}'

##### Put public IP address in a variable

   ip =$(curl ip.pla1.net)

##### Route outbound SMTP connections through a addtional IP address rather than your primary

   ip tables -t nat -A POSTROUTING -p tcp dport 25 -j SNAT to-source IP_TO_ROUTE_THROUGH

##### Grab IP address on machine with multiple interfaces

   ip  route get 8.8.8.8 2>/dev/null|grep -Eo 'src [0-9.]+'|grep -Eo '[0-9.]+'

##### Fetch the Gateway Ip Address

   ip  route list match 0.0.0.0/0 | cut -d " " -f 3

##### add a ip address to a network device

   ip  addr add 192.168.10.1/24 dev eth0

##### Remove specific entries from iptables

   ip tables -L INPUT line-numbers

##### Show your local ipv4 IP

   ip  -o -4 a s | awk -F'[ /]+' '$2!~/lo/{print $4}'

##### Show LAN IP with ip(8)

   ip  route show dev eth0 | awk '{print $7}'

##### Check for Firewall Blockage.

   ip tables -L -n line-numbers | grep xx.xx.xx.xx

##### Get your default route

   ip  route | grep default | awk '{print $3}'

##### Print a single route to a destination and its contents exactly as the kernel sees it

   ip  route get dest_ip

##### Delete an IPtable rules based on row number

   ip tables -L -vnx line-numbers; iptables -t nat -D <chain-name> <number>

##### Get the IP address of a machine. Just the IP, no junk.

   ip  -o -4 addr show | awk -F '[ /]+' '/global/ {print $4}'

##### Get ethX mac addresses

   ip  link | grep 'link/ether' | awk '{print $2}'

##### Prevent an IPv6 address on an interface from being used as source address of packets.

   ip  addr change 2001:db8:1:2::ab dev eth0 preferred_lft 0

##### Another way to see the network interfaces

   ip  addr show

##### Print the IPv4 address of a given interface

   ip  addr show enp3s0 | awk '/inet[^6]/{print $2}' | awk -F'/' '{print $1}'

##### Provide information on IPC (Inter-process communication) facilities

   ip cs

##### Print the IPv4 address of a given interface

   ip  a s eth0 | sed -nr 's!.*inet ([^/]+)/.*!\1!p'

##### Find Mac address

   ip  li | grep ether | awk '{print $2}'

##### List your MACs address

   ip  li | grep ff

##### Redirect port 80 to 8080

   ip tables -t nat -A PREROUTING -i eno12345678 -p tcp dport 80 -j REDIRECT to-port 8080

##### Get IPv4 of eth0 for use with scripts

   ip  addr show eth0 |grep 'inet\b' |awk '{print $2}' |sed  -r -e 's/\/.*?//g'

##### List you configure's ip address in your system

   ip  addr list | grep global | awk '{print $7"\t"$2}'

##### Remove semaphores

   ip cs -s | grep apache | awk ' { print $2 } ' | xargs ipcrm sem

##### Find ur local network cidr Notation

   ip  addr show |grep -w inet | grep -v 127.0.0.1 | awk '{ print $2}'| cut -d "/" -f 2

##### Clear IPC Message Queue

   ip cs -a | grep 0x | awk '{printf( "-Q %s ", $1 )}' | xargs ipcrm

##### Cloack an IP range from some IPs via iptables

   ip tables -A FORWARD -i br0 -m iprange src-range 192.168.0.x-192.168.0.y -m iprange dst-range 192.168.0.w-192.168.0.z  -j DROP

##### Persistent saving of iptables rules

   ip tables-save > firewall.conf; rm -f /etc/network/if-up.d/iptables; echo '#!/bin/sh' > /etc/network/if-up.d/iptables; echo "iptables-restore < firewall.conf" >> /etc/network/if-up.d/iptables; chmod +x /etc/network/if-up.d/iptables

##### get eth0 ip address

   ip  -f inet addr |grep "global eth0$"|awk '{print $2}'|cut -d '/' -f 1

##### Remove all message queues owned by user foo

   ip cs -q | grep foo | awk '{print $2}' | xargs -I ipcid ipcrm -q ipcid

##### Get eth0 ip

   ip  addr show dev eth0 | awk '/inet/ {sub(/\//, " "); print $2}'

##### Block an IP address from connecting to a server

   ip tables -A INPUT -s 222.35.138.25/32 -j DROP

##### View firewall config including devices on linux w/netfilter

   ip tables -L -n -v

##### Get Interface's IP on Mac

   ip config getifaddr <Interface>

##### Get ethX mac addresses

   ip  link show eth0 | grep "link/ether" | awk '{print $2}'

##### simple echo of IPv4 IP addresses assigned to a machine

   ip  addr | awk '/inet / {sub(/\/.*/, "", $2); print $2}'

##### Geolocate a given IP address

   ip 2loc() { wget -qO - www.ip2location.com/$1 | grep "<span id=\"dgLookup__ctl2_lblICountry\">" | sed 's/<[^>]*>//g; s/^[\t]*//; s/&quot;/"/g; s/</</g; s/>/>/g; s/&amp;/\&/g'; }

##### Find default gateway

   ip  route list 0/0

##### Easy IPTables management

   ip tables-save > iptables.current; vi iptables.current; iptables-restore iptables.current; service iptables save

##### Easy IPTables management

   ip tables-save > iptables.current; vi iptables.current; iptables-restore iptables.current; service iptables save

##### Stop iptables completely

   ip tables -P INPUT ACCEPT; iptables -P FORWARD ACCEPT; iptables -P OUTPUT ACCEPT; for table in `cat /proc/net/ip_tables_names`; do iptables -t $table -F; iptables -t $table -Z; iptables -t $table -X; done

##### get the default gateway

   ip  -4 route list 0/0

##### Redirect incoming traffic to SSH, from a port of your choosing

   ip tables -t nat -A PREROUTING -p tcp dport [port of your choosing] -j REDIRECT to-ports 22

##### Disable all iptables rules without disconnecting yourself

   ip tables -F && iptables -X && iptables -P INPUT ACCEPT && iptables -OUTPUT ACCEPT

##### Remove all unused shared memory segments for current user

   ip cs -ma | awk '/^m / { if ($9 == 0) { print $2 }}' | xargs -n 1 ipcrm -m

##### Get just LAN IP without all the extra stuff

   ip  addr show | grep "inet " | while read INET IP TRASH; do if [ $IP != "127.0.0.1/8" ]; then echo $IP; exit 0; fi; done | sed s:/[1-9][1-9]:"":

##### network throughput test

   ip erf -s

##### Find default gateway

   ip  route | awk '/default/{print $3}'

##### Get all mac address

   ip  link show

##### Print IP of any interface. Useful for scripts.

   ip  route show dev ppp0 | awk '{ print $7 }'

##### Show all configured ipv4

   ip  -o -4 a s

##### Show current iptables rules, with line numbers

   ip tables -nL -v line-numbers

##### Tired of switching between proxy and no proxy? here's the solution.

   ip tables -t nat -A OUTPUT -d ! 10.0.0.0/8 -p tcp dport 80 -j DNAT to-destination 10.1.1.123:3128

##### Get an IP address out of fail2ban jail

   ip tables -D fail2ban-SSH -s <ip_address_to_be_set_free> -j DROP

##### monitor network traffic and throughput in real time

   ip traf

##### Print the IPv4 address of a given interface

   ip  a s eth0 | awk -F'[/ ]+' '/inet[^6]/{print $3}'

##### List your MACs address

   ip  link | awk '/link/ {print $2}'

##### Get the IP address

   ip  -f inet a | awk '/inet / { print $2 }'

##### Get IPv4 of eth0 for use with scripts

   ip  addr show eth0 | awk '/inet / {FS = "/"; $0 = $2; print $1}'

##### Put public IP address in a variable

   ip =$(curl ip.pla1.net)

##### Route outbound SMTP connections through a addtional IP address rather than your primary

   ip tables -t nat -A POSTROUTING -p tcp dport 25 -j SNAT to-source IP_TO_ROUTE_THROUGH

##### Grab IP address on machine with multiple interfaces

   ip  route get 8.8.8.8 2>/dev/null|grep -Eo 'src [0-9.]+'|grep -Eo '[0-9.]+'

##### Fetch the Gateway Ip Address

   ip  route list match 0.0.0.0/0 | cut -d " " -f 3

##### add a ip address to a network device

   ip  addr add 192.168.10.1/24 dev eth0

##### Remove specific entries from iptables

   ip tables -L INPUT line-numbers

##### Show your local ipv4 IP

   ip  -o -4 a s | awk -F'[ /]+' '$2!~/lo/{print $4}'

##### Show LAN IP with ip(8)

   ip  route show dev eth0 | awk '{print $7}'

##### Check for Firewall Blockage.

   ip tables -L -n line-numbers | grep xx.xx.xx.xx

##### Get your default route

   ip  route | grep default | awk '{print $3}'

##### Print a single route to a destination and its contents exactly as the kernel sees it

   ip  route get dest_ip

##### Delete an IPtable rules based on row number

   ip tables -L -vnx line-numbers; iptables -t nat -D <chain-name> <number>

##### Get the IP address of a machine. Just the IP, no junk.

   ip  -o -4 addr show | awk -F '[ /]+' '/global/ {print $4}'

##### Get ethX mac addresses

   ip  link | grep 'link/ether' | awk '{print $2}'

##### Prevent an IPv6 address on an interface from being used as source address of packets.

   ip  addr change 2001:db8:1:2::ab dev eth0 preferred_lft 0

##### Another way to see the network interfaces

   ip  addr show

##### Print the IPv4 address of a given interface

   ip  addr show enp3s0 | awk '/inet[^6]/{print $2}' | awk -F'/' '{print $1}'

##### Provide information on IPC (Inter-process communication) facilities

   ip cs

##### Print the IPv4 address of a given interface

   ip  a s eth0 | sed -nr 's!.*inet ([^/]+)/.*!\1!p'

##### Find Mac address

   ip  li | grep ether | awk '{print $2}'

##### List your MACs address

   ip  li | grep ff

##### Redirect port 80 to 8080

   ip tables -t nat -A PREROUTING -i eno12345678 -p tcp dport 80 -j REDIRECT to-port 8080

##### Get IPv4 of eth0 for use with scripts

   ip  addr show eth0 |grep 'inet\b' |awk '{print $2}' |sed  -r -e 's/\/.*?//g'

##### List you configure's ip address in your system

   ip  addr list | grep global | awk '{print $7"\t"$2}'

##### Remove semaphores

   ip cs -s | grep apache | awk ' { print $2 } ' | xargs ipcrm sem

##### Find ur local network cidr Notation

   ip  addr show |grep -w inet | grep -v 127.0.0.1 | awk '{ print $2}'| cut -d "/" -f 2

##### Clear IPC Message Queue

   ip cs -a | grep 0x | awk '{printf( "-Q %s ", $1 )}' | xargs ipcrm

##### Cloack an IP range from some IPs via iptables

   ip tables -A FORWARD -i br0 -m iprange src-range 192.168.0.x-192.168.0.y -m iprange dst-range 192.168.0.w-192.168.0.z  -j DROP

##### Persistent saving of iptables rules

   ip tables-save > firewall.conf; rm -f /etc/network/if-up.d/iptables; echo '#!/bin/sh' > /etc/network/if-up.d/iptables; echo "iptables-restore < firewall.conf" >> /etc/network/if-up.d/iptables; chmod +x /etc/network/if-up.d/iptables

##### get eth0 ip address

   ip  -f inet addr |grep "global eth0$"|awk '{print $2}'|cut -d '/' -f 1

##### Remove all message queues owned by user foo

   ip cs -q | grep foo | awk '{print $2}' | xargs -I ipcid ipcrm -q ipcid

##### Get eth0 ip

   ip  addr show dev eth0 | awk '/inet/ {sub(/\//, " "); print $2}'

##### Block an IP address from connecting to a server

   ip tables -A INPUT -s 222.35.138.25/32 -j DROP

##### View firewall config including devices on linux w/netfilter

   ip tables -L -n -v

##### Get Interface's IP on Mac

   ip config getifaddr <Interface>

##### Get ethX mac addresses

   ip  link show eth0 | grep "link/ether" | awk '{print $2}'

##### simple echo of IPv4 IP addresses assigned to a machine

   ip  addr | awk '/inet / {sub(/\/.*/, "", $2); print $2}'

##### Geolocate a given IP address

   ip 2loc() { wget -qO - www.ip2location.com/$1 | grep "<span id=\"dgLookup__ctl2_lblICountry\">" | sed 's/<[^>]*>//g; s/^[\t]*//; s/&quot;/"/g; s/</</g; s/>/>/g; s/&amp;/\&/g'; }

##### Find default gateway

   ip  route list 0/0

##### Easy IPTables management

   ip tables-save > iptables.current; vi iptables.current; iptables-restore iptables.current; service iptables save

##### Redirect incoming traffic to SSH, from a port of your choosing

   ip tables -t nat -A PREROUTING -p tcp dport [port of your choosing] -j REDIRECT to-ports 22
