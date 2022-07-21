# nm

##### Get a list of all valid ip address in a local network?

   nm ap -sP 192.168.1.*

##### UNIX/ WAS related commands

   nm on -f -T -^ -s 15 -c 12

##### A list of IPs (only) that are online in a specific subnet.

   nm ap -sP  192.168.1.0/24 | awk "/^Host/"'{ print $3 }' |nawk -F'[()]' '{print $2}'

##### Display only hosts up in network

   nm ap -sP -PR -oG - `/sbin/ip -4 addr show | awk '/inet/ {print $2}' | sed 1d`

##### NMAP_UNDERGROUND_VECTRA

   nm ap -sS -O -v -oS - 192.168.2.0/24

##### Scan Network for Rogue APs.

   nm ap -A -p1-85,113,443,8080-8100 -T4 min-hostgroup 50 max-rtt-timeout 2000 initial-rtt-timeout 300 max-retries 3 host-timeout 20m max-scan-delay 1000 -oA wapscan 10.0.0.0/8

##### The NMAP command you can use scan for the Conficker virus on your LAN

   nm ap -PN -T4 -p139,445 -n -v script=smb-check-vulns script-args safe=1 192.168.0.1-254

##### nmap IP block and autogenerate comprehensive Nagios service checks

   nm ap -sS -O -oX /tmp/nmap.xml 10.1.1.0/24 -v -v && perl nmap2nagios.pl -v -r /tmp/10net.xml -o /etc/nagios/10net.cfg

##### Conficker Detection with NMAP

   nm ap -PN -d -p445 script=smb-check-vulns script-args=safe=1 IP-RANGES

##### network interface and routing summary

   nm ap iflist

##### Find all active ip's in a subnet

   nm ap -v -sP 192.168.0.0/16 10.0.0.0/8

##### Using NMAP to check if a port is open or close

   nm ap -oG - -T4 -p22 -v 192.168.0.254 | grep ssh

##### Show all machines on the network

   nm ap 192.168.0-1.0-255 -sP

##### List alive hosts in specific subnet

   nm ap -sP 192.168.1.0/24

##### determine if tcp port is open

   nm ap -p 80 hostname

##### Get a list of ssh servers on the local subnet

   nm ap -p 22 open -sV 192.168.2.0/24

##### List of reverse DNS records for a subnet

   nm ap -R -sL 209.85.229.99/27 | awk '{if($3=="not")print"("$2") no PTR";else print$3" is "$2}' | grep '('

##### list all opened ports on host

   nm ap -p 1-65535 open localhost

##### Get list of servers with a specific port open

   nm ap -sT -p 80 -oG - 192.168.1.* | grep open

##### Scan Subnet for IP and MAC addresses

   nm ap -sP 192.168.1.0/24

##### Get info about remote host ports and OS detection

   nm ap -sS -P0 -sV -O <target>

##### Ping all hosts on 192.168.1.0/24

   nm ap -sn 192.168.1.0/24

##### List symbols from a dynamic library (.so file)

   nm  dynamic <libfile.so>

##### Get a list of ssh servers on the local subnet

   nm ap -p 22 10.3.1.1/16 | grep -B 4 "open"

##### Nmap list IPs in a network and saves in a txt

   nm ap -sP 192.168.1.0/24 | grep "Nmap scan report for"| cut -d' ' -f 5  > ips.txt

##### ping a range of IP addresses

   nm ap -sP 192.168.1.100-254

##### look for a function reference in a library set

   nm  defined-only print-file-name lib*so 2>/dev/null | grep ' pthread_create$'

##### Display network pc "name" and "workgroup"

   nm blookup -A <ip>

##### Ping a range of addresses

   nm ap -sP -T Insane 192.168.1.1-254

##### count of down available ips

   nm ap -v -sP 192.168.10.0/24 | grep down | wc -l

##### count of down available ips

   nm ap -v -sP 192.168.10.0/24 | grep -c down

##### script broadcast-pppoe-discover

   nm ap -T4 script broadcast-pppoe-discover 192.168.122.0/24

##### Generate random IP addresses

   nm ap -n -iR 0 -sL | cut -d" " -f 2

##### nmap port scanning

   nm ap -v -sT 192.168.0.0/24

##### Find unused IPs on a given subnet

   nm ap -sP <subnet>.* | egrep -o '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+' > results.txt ; for IP in {1..254} ; do echo "<subnet>.${IP}" ; done >> results.txt ; cat results.txt | sort -n -t . -k 1,1 -k 2,2 -k 3,3 -k 4,4 | uniq -u

##### configure a network connection on RHEL7/CentOs7

   nm cli con add type ethernet con-name eth0 ifname enp0s3 ip4 x.x.x.x/x gw4 y.y.y.y

##### Display only hosts up in network

   nm ap -sP your network/submask | awk "/^Host/"'{ print $2 }'

##### nmap get active devices

   nm ap -sn 192.168.1.0/24

##### Scan computers OS and open services on all network

   nm ap -O 192.168.1.1/24

##### Find resolvable hosts in subnet

   nm ap -sL 74.125.237.1/24

##### nmap scan hosts for IP, MAC Address and device Vendor/Manufacturer

   nm ap -sP 10.0.0.0/8 | grep -v "Host" | tail -n +3 | tr '\n' ' ' | sed 's|Nmap|\nNmap|g' | grep "MAC Address" | cut -d " " -f5,8-15

##### Find unused IPs on a given subnet

   nm ap -T4 -sP 192.168.2.0/24 && egrep "00:00:00:00:00:00" /proc/net/arp

##### Getting a list of active addresses in your own network.

   nm ap -n -sP -oG - 10.10.10.*/32 | grep ": Up" | cut -d' ' -f2

##### List services running on each open port

   nm ap -T Aggressive -A -v 127.0.0.1 -p 1-65000

##### scan subnet for used IPs

   nm ap -T4 -sn 192.168.1.0/24

##### Get current connected wireless network with nm-tools

   nm -tool 2>/dev/null|sed -n '/Type:[ ]*802.11 WiFi/,/IPv4 Settings/{ /State:[ ]*connected/,/IPv4 Settings/{ s/^[ ]*//;/^\*.*Infra/ { s/^*//;s/:.*//;p }}}'

##### Show alive host on network

   nm ap -sP 192.168.0.* | grep Host | tr "(" ")" | cut -d\) -f2

##### Nmap find open TCP/IP ports for a target that is blocking ping

   nm ap -sT -PN -vv <target ip>

##### nmap -sP 192.168.1.*

   nm ap find alive hosts

##### nmap all my hosts in EC2

   nm ap -P0 -sV `aws output json ec2 describe-addresses | jq -r '.Addresses[].PublicIp'` | tee /dev/shm/nmap-output.txt

##### nmap check alivr hosts

   nm ap -sP 192.168.0.1/24

##### Get list of servers with a specific port open

   nm ap -sT -p 80 open 192.168.1.1/24

##### scan local network for SSH-able computers

   nm ap -sS -p 22 192.168.1.0/24

##### nmap  discorvery network on port 80

   nm ap -p 80 -T5 -n -min-parallelism 100 open 192.168.1.0/24

##### nmap get ip and hostname of scanned networks

   nm ap -sL 192.168.3.0/24

##### Scan Network for Rogue APs.

   nm ap -A -p1-85,113,443,8080-8100 -T4 min-hostgroup 50 max-rtt-timeout 2000 initial-rtt-timeout 300 max-retries 3 host-timeout 20m max-scan-delay 1000 -oA wapscan 10.0.0.0/8

##### The NMAP command you can use scan for the Conficker virus on your LAN

   nm ap -PN -T4 -p139,445 -n -v script=smb-check-vulns script-args safe=1 192.168.0.1-254

##### nmap IP block and autogenerate comprehensive Nagios service checks

   nm ap -sS -O -oX /tmp/nmap.xml 10.1.1.0/24 -v -v && perl nmap2nagios.pl -v -r /tmp/10net.xml -o /etc/nagios/10net.cfg

##### Conficker Detection with NMAP

   nm ap -PN -d -p445 script=smb-check-vulns script-args=safe=1 IP-RANGES

##### network interface and routing summary

   nm ap iflist

##### Find all active ip's in a subnet

   nm ap -v -sP 192.168.0.0/16 10.0.0.0/8

##### Using NMAP to check if a port is open or close

   nm ap -oG - -T4 -p22 -v 192.168.0.254 | grep ssh

##### Show all machines on the network

   nm ap 192.168.0-1.0-255 -sP

##### List alive hosts in specific subnet

   nm ap -sP 192.168.1.0/24

##### determine if tcp port is open

   nm ap -p 80 hostname

##### Get a list of ssh servers on the local subnet

   nm ap -p 22 open -sV 192.168.2.0/24

##### List of reverse DNS records for a subnet

   nm ap -R -sL 209.85.229.99/27 | awk '{if($3=="not")print"("$2") no PTR";else print$3" is "$2}' | grep '('

##### list all opened ports on host

   nm ap -p 1-65535 open localhost

##### Get list of servers with a specific port open

   nm ap -sT -p 80 -oG - 192.168.1.* | grep open

##### Scan Subnet for IP and MAC addresses

   nm ap -sP 192.168.1.0/24

##### Get info about remote host ports and OS detection

   nm ap -sS -P0 -sV -O <target>

##### Ping all hosts on 192.168.1.0/24

   nm ap -sn 192.168.1.0/24

##### List symbols from a dynamic library (.so file)

   nm  dynamic <libfile.so>

##### Get a list of ssh servers on the local subnet

   nm ap -p 22 10.3.1.1/16 | grep -B 4 "open"

##### Nmap list IPs in a network and saves in a txt

   nm ap -sP 192.168.1.0/24 | grep "Nmap scan report for"| cut -d' ' -f 5  > ips.txt

##### ping a range of IP addresses

   nm ap -sP 192.168.1.100-254

##### look for a function reference in a library set

   nm  defined-only print-file-name lib*so 2>/dev/null | grep ' pthread_create$'

##### Display network pc "name" and "workgroup"

   nm blookup -A <ip>

##### Ping a range of addresses

   nm ap -sP -T Insane 192.168.1.1-254

##### count of down available ips

   nm ap -v -sP 192.168.10.0/24 | grep down | wc -l

##### count of down available ips

   nm ap -v -sP 192.168.10.0/24 | grep -c down

##### script broadcast-pppoe-discover

   nm ap -T4 script broadcast-pppoe-discover 192.168.122.0/24

##### Generate random IP addresses

   nm ap -n -iR 0 -sL | cut -d" " -f 2

##### nmap port scanning

   nm ap -v -sT 192.168.0.0/24

##### Find unused IPs on a given subnet

   nm ap -sP <subnet>.* | egrep -o '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+' > results.txt ; for IP in {1..254} ; do echo "<subnet>.${IP}" ; done >> results.txt ; cat results.txt | sort -n -t . -k 1,1 -k 2,2 -k 3,3 -k 4,4 | uniq -u

##### configure a network connection on RHEL7/CentOs7

   nm cli con add type ethernet con-name eth0 ifname enp0s3 ip4 x.x.x.x/x gw4 y.y.y.y

##### Display only hosts up in network

   nm ap -sP your network/submask | awk "/^Host/"'{ print $2 }'

##### nmap get active devices

   nm ap -sn 192.168.1.0/24

##### Scan computers OS and open services on all network

   nm ap -O 192.168.1.1/24

##### Find resolvable hosts in subnet

   nm ap -sL 74.125.237.1/24

##### nmap scan hosts for IP, MAC Address and device Vendor/Manufacturer

   nm ap -sP 10.0.0.0/8 | grep -v "Host" | tail -n +3 | tr '\n' ' ' | sed 's|Nmap|\nNmap|g' | grep "MAC Address" | cut -d " " -f5,8-15

##### Find unused IPs on a given subnet

   nm ap -T4 -sP 192.168.2.0/24 && egrep "00:00:00:00:00:00" /proc/net/arp

##### Getting a list of active addresses in your own network.

   nm ap -n -sP -oG - 10.10.10.*/32 | grep ": Up" | cut -d' ' -f2

##### List services running on each open port

   nm ap -T Aggressive -A -v 127.0.0.1 -p 1-65000

##### scan subnet for used IPs

   nm ap -T4 -sn 192.168.1.0/24

##### Get current connected wireless network with nm-tools

   nm -tool 2>/dev/null|sed -n '/Type:[ ]*802.11 WiFi/,/IPv4 Settings/{ /State:[ ]*connected/,/IPv4 Settings/{ s/^[ ]*//;/^\*.*Infra/ { s/^*//;s/:.*//;p }}}'
