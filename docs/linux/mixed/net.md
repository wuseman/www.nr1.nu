# net

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### Find all IP connected to my host through TCP connection and count it

   net stat -an |grep ":80" |awk '{print $5}' | sed s/::ffff://g | cut -d: -f1 |sort |uniq -c |sort -n | tail -1000 | grep -v "0.0.0.0"

##### Equivalent to ifconfig -a in HPUX

   net stat -nr|egrep -v "Routing|Interface|lo0"|awk '{print $5}'|sort -u| while read l; do ifconfig $l ; echo "        Station Addr: `lanscan -ia|grep "$l "|cut -d ' ' -f 1`" ; done

##### Quick network status of machine

   net stat -tn | awk 'NR>2 {print $6}' | sort | uniq -c | sort -rn

##### Open Port Check

   net stat -an | grep color -i -E 'listen|listening'

##### See KeepAlive counters on tcp connections

   net stat -town

##### Show number of connections per remote IP

   net stat -antu | awk '{print $5}' | awk -F: '{print $1}' | sort | uniq -c | sort -n

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### Find default gateway

   net stat -rn | awk '/UG/{print $2}'

##### Show apps that use internet connection at the moment.

   net stat -lantp | grep -i establ | awk -F/ '{print $2}' | uniq | sort

##### All IP connected to  my host

   net stat -nut | awk '$NF=="ESTABLISHED" {print $5}' | cut -d: -f1 | sort -u

##### Show all groups user is a member of and other useful info

   net  user USERNAME /domain

##### display only tcp

   net stat -4tnape

##### check open ports (both ipv4 and ipv6)

   net stat -plnt

##### show open ports on computer

   net stat -an | grep -i listen

##### Sorted list of established destination connections

   net stat | grep EST | awk '{print $5}' | sort

##### Get number of established sessions on a given port

   net stat -anp | grep :80 | grep ESTABLISHED | wc -l

##### Get connections from a SSH tunnel

   net stat -t -p extend | grep USERNAME

##### Check if TCP port 25 is open

   net stat -lntp

##### Save the network interface info into a text file, so that you can re-apply it later

   net sh interface ip dump > current-interfaces.txt

##### Lists all listening ports together with the PID of the associated process

   net stat -tunlp

##### list current ssh clients

   net stat -atn | grep :22 | grep ESTABLISHED | awk '{print $4}' | sed 's/:22//'

##### Checking total connections to each Ip inserver

   net stat -alpn | grep :80 | awk '{print $4}' |awk -F: '{print $(NF-1)}' |sort | 

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### Show the number of current httpd processes

   net stat -l -p tcp | egrep -e 'www.*[0-9]{3,4}\/(apache2|httpd)' | awk '{print$7}'

##### Network Interfaces

   net stat -ie

##### netstat with group by (ip adress)

   net stat -ntu | awk ' $5 ~ /^[0-9]/ {print $5}' | cut -d: -f1 | sort | uniq -c | sort -n

##### Find out what is using the bandwidth

   net hogs

##### Prints tcp and udp connections

   net stat -nlput

##### see the TIME_WAIT and ESTABLISHED nums of the network

   net stat -n | awk '/^tcp/ {++B[$NF]} END {for(a in B) print a, B[a]}'

##### See a list of ports running

   net stat -an | grep -i listen

##### Informations sur les connexions reseau

   net stat -taupe

##### netstat -luntp

   net stat -luntp

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### &#1593;&#1585;&#1590; &#1575;&#1578;&#1589;&#1575;&#1604;&#1575;&#1578; &#1604;&#1576;&#1608;&#1585;&#1578; &#1605;&#1581;&#1583;&#1583;

   net stat -antp | grep 22

##### Display connections histogram

   net stat -an | grep ESTABLISHED | awk '\''{print $5}'\'' | awk -F: '\''{print $1}'\'' | sort | uniq -c | awk '\''{ printf("%s\t%s\t",$2,$1); for (i = 0; i < $1; i++) {printf("*")}; print ""}'\''

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### To Stop or Start (Restart) a Windows service from a Linux machine

   net  rpc -I indirizzoip -U nomeutente%password servizio {stop|start} nomedelservizio

##### Show apps that use internet connection at the moment. (Multi-Language)

   net stat -lantp | grep -i stab | awk -F/ '{print $2}' | sort | uniq

##### Show all programs on UDP and TCP ports with timer information

   net stat -putona

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### Examine processes generating traffic on your website

   net stat -np | grep -v ^unix

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### List programs with open ports and connections

   net stat -ntauple

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### List the number and type of active network connections

   net stat -ant | awk '{print $NF}' | grep -v '[a-z]' | sort | uniq -c

##### Show complete URL in netstat output

   net stat -tup -W | column -t

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### List Listen Port by numbers

   net stat -tlpn | sort -t: -k2 -n

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### netstat with group by ip adress

   net stat -ntu | awk ' $5 ~ /^[0-9]/ {print $5}' | cut -d: -f1 | sort | uniq -c | sort -n

##### Stop or Start (Restart) a Windows service from a Linux machine

   net  rpc -I ADDRESS -U USERNAME%PASSWORD service {stop|start} SVCNAME

##### Monitor bandwidth by pid

   net hogs -p eth0

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### Show apps that use internet connection at the moment.

   net stat -lantp | grep -i establ | awk -F/ '{print $2}' | sort | uniq

##### find an unused unprivileged TCP port

   net stat -atn | awk ' /tcp/ {printf("%s\n",substr($4,index($4,":")+1,length($4) )) }' | sed -e "s/://g" | sort -rnu | awk '{array [$1] = $1} END {i=32768; again=1; while (again == 1) {if (array[i] == i) {i=i+1} else {print i; again=0}}}'

##### Show in a web server, running in the port 80, how many ESTABLISHED connections by ip it has.

   net stat -ant | grep :80 | grep ESTABLISHED | awk '{print $5}' | awk -F: '{print $1}' | sort | uniq -c | sort -n

##### Sorted list of established destination connections

   net stat | awk '/EST/{print $5}' | sort

##### Two command output

   net stat -n | grep ESTAB |grep  :80  | tee /dev/stderr | wc -l

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### calulate established tcp connection of local machine

   net stat -an|grep -ci "tcp.*established"

##### Most simple way to get a list of open ports

   net stat -lnp

##### calulate established tcp connection of local machine

   net stat -an | awk '$1 ~ /[Tt][Cc][Pp]/ && $NF ~ /ESTABLISHED/{i++}END{print "Connected:\t", i}'

##### List all TCP opened ports on localhost in LISTEN mode

   net stat -nptl

##### List top 20 IP from which TCP connection is in SYN_RECV state

   net stat -pant 2> /dev/null | grep SYN_ | awk '{print $5;}' | cut -d: -f1 | sort | uniq -c | sort -n | tail -20

##### Who has the most Apache connections.

   net stat -anl | grep :80 | awk '{print $5}' | cut -d ":" -f 1 | uniq -c | sort -n | grep -c IPHERE

##### Query ip pools based on successive netnames via whois

   net =DTAG-DIAL ; for (( i=1; i<30; i++ )); do whois -h whois.ripe.net $net$i | grep '^inetnum:' | sed "s;^.*:;$net$i;" ; done

##### Netstat Connection Check

   net stat -ntu | awk '{print $5}' |  cut -d: -f1 | sort | uniq -c | sort -n | tail

##### Show complete URL in netstat output

   net stat -pnut -W | column -t -s $'\t'

##### Show what PID is listening on port 80 on Linux

   net stat -alnp | grep ::80

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### All IP connected to  my host

   net stat -lantp | grep ESTABLISHED |awk '{print $5}' | awk -F: '{print $1}' | sort -u

##### get a process list by listen port

   net stat -ntlp | grep -w 80 | awk '{print $7}' | cut -d/ -f1

##### IP addresses connected to port 80

   net stat -tn 2>/dev/null | grep ':80 ' | awk '{print $5}' |sed -e 's/::ffff://' | cut -f1 -d: | sort | uniq -c | sort -rn | head

##### TCP and UDP listening sockets

   net stat -t -u -l

##### The program listening on port 8080 through IPv6

   net stat -lnp6 | grep :8080 | sed 's#^[^\/]*/\([a-z0-9]*\)#\1#'

##### list ips with high number of connections

   net stat -tn 2>/dev/null | grep :80 | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -nr | head

##### Show all LISTENing and open server connections, with port number and process name/pid

   net stat -tulpn

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### Show which programs are listening on TCP and UDP ports

   net stat -plunt

##### Show all listening and established ports TCP and UDP together with the PID of the associated process

   net stat -plantu

##### list current ssh clients

   net stat -tn | awk '($4 ~ /:22\s*/) && ($6 ~ /^EST/) {print substr($5, 0, index($5,":"))}'

##### tell if a port is in use

   net stat -a numeric-ports | grep 8321

##### Lists all listening ports together with the PID of the associated process

   net stat -anpe

##### Number of open connections per ip.

   net stat -ntu | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -n

##### find an unused unprivileged TCP port

   net stat  -atn | perl -0777 -ne '@ports = /tcp.*?\:(\d+)\s+/imsg ; for $port (32768..61000) {if(!grep(/^$port$/, @ports)) { print $port; last } }'

##### Find default gateway

   net stat -rn | grep UG | tr -s " " | cut -d" " -f2

##### Fetch the Gateway Ip Address

   net stat -nr | awk 'BEGIN {while ($3!="0.0.0.0") getline; print $2}'

##### netstat with group by (ip adress)

   net stat -ntu | awk ' $5 ~ /^(::ffff:|[0-9|])/ { gsub("::ffff:","",$5); print $5}' | cut -d: -f1 | sort | uniq -c | sort -nr

##### check open ports (both ipv4 and ipv6)

   net stat -plntu

##### To find which host made maximum number of specific tcp connections

   net stat -n | grep '^tcp.*<IP>:<PORT>' | tr " " | awk 'BEGIN{FS="( |:)"}{print $6}' | sort | uniq -c | sort -n -k1 | awk '{if ($1 >= 10){print $2}}'

##### Count TCP States From Netstat

   net stat -an | awk '/tcp/ {print $6}' | sort | uniq -c

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### how to allow a program to listen through the firewall

   net sh firewall add programmaautorizzato C:\nltest.exe mltest enable

##### To find the LDAP clients connected to LDAP service running on Solaris

   net stat -n -f inet|awk '/\.389/{print $2}'|cut -f1-4 -d.|sort -u

##### Summarize the number of open TCP connections by state

   net stat -nt | awk '{print $6}' | sort | uniq -c | sort -n -k 1 -r

##### calulate established tcp connection of local machine

   net stat -an | grep -Ec '^tcp.+ESTABLISHED$'

##### count IPv4 connections per IP

   net stat -anp |grep 'tcp\|udp' | awk '{print $5}' | sed s/::ffff:// | cut -d: -f1 | sort | uniq -c | sort -n

##### TCP and UDP listening sockets

   net stat -tunlapo

##### Add member to domain group

   net  group groupname username /add /domain

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### Active Internet connections (only servers)

   net stat -lnptu

##### open listening ports

   net stat -ltn | awk -n '/tcp /{ split($4, x, ":"); print(x[2]); }' | sort -n

##### List state of NAT.

   net stat-nat -n

##### Check for listening services

   net stat -tuapen | grep LISTEN

##### netstat with group by (ip adress)

   net stat -nt | awk -F":" '{print $2}' | sort | uniq -c

##### Graph # of connections for each hosts.

   net stat -an | grep ESTABLISHED | awk '{print $5}' | awk -F: '{print $1}' | sort | uniq -c | awk '{ printf("%s\t%s\t",$2,$1) ; for (i = 0; i < $1; i++) {printf("*")}; print "" }'

##### Graph # of connections for each hosts.

   net stat -an | grep ESTABLISHED | awk '{print $5}' | awk -F: '{print $1}' | sort | uniq -c | awk '{ printf("%s\t%s\t",$2,$1) ; for (i = 0; i < $1; i++) {printf("*")}; print "" }'

##### Find out if MySQL is up and listening on Linux

   net stat -tap | grep mysql

##### get the IP connected to the server (usefull to detect IP that should be blocked)

   net stat -ntu | awk '{print $5}' | cut -d: -f1 | sort  | uniq -c | sort -n

##### NETSTAT ESTABLISHED

   net stat | find "ESTABLISHED"

##### monitor all open connections to specific port

   net stat -anp | grep ":<port>"

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### Check if TCP port 25 is open

   net stat -tln | grep :25

##### Command results as an image capture

   net stat -rn | convert label:@- netstat.png

##### List open TCP/UDP ports

   net stat -anp tcp udp | grep LISTEN

##### Show number of connections per remote IP

   net stat -antu | awk '$5 ~ /[0-9]:/{split($5, a, ":"); ips[a[1]]++} END {for (ip in ips) print ips[ip], ip | "sort -k1 -nr"}'

##### List open TCP/UDP ports

   net stat -ltun

##### Netstat List out Remote IP's Connected to Server Only

   net stat -tn | awk '{print $5}' | egrep -v '(localhost|\*\:\*|Address|and|servers|fff|127\.0\.0)' | sed 's/:[0-99999999].*//g'

##### find out which TCP ports are listening and opened by which process in verbose

   net stat -tlvp

##### find an unused unprivileged TCP port

   net stat -tan | awk '$1 == "tcp" && $4 ~ /:/ { port=$4; sub(/^[^:]+:/, "", port); used[int(port)] = 1; } END { for (p = 32768; p <= 61000; ++p) if (! (p in used)) { print p; exit(0); }; exit(1); }'

##### showing opened ports on machine

   net stat -tulpnc

##### find an unused unprivileged TCP port

   net stat -atn | perl -ane 'if ( $F[3] =~ /(\d+)$/ ) { $x{$1}=1 } END{ print( (grep {!$x{$_}} 32768..61000)[0] . "\n" )}'

##### Lists open ports

   net stat -antuwp | egrep "(^[^t])|(^tcp.*LISTEN)"

##### Number of connections per IP with range 24

   net stat -tn | grep :80 | awk '{print $5}'| grep -v ':80' | cut -f1 -d: |cut -f1,2,3  -d. | sort | uniq -c| sort -n

##### Check the connection of the maximum number of IP

   net stat -na | grep ESTABLISHED | awk '{print$5}' | awk -F : '{print$1}' | sort | uniq -c | sort -r

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### Detect Connections On Port - Android

   net stat -lptu | grep -E "22.*ESTABLISHED" | cut -s -d ':' -f2 | awk '{print $2}'

##### How to Kill Process that is Running on Certain Port in Windows?

   net stat -a -o -n | grep 8080

##### List all IP's connected to port 80

   net stat -tn 2>/dev/null | grep :80 | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -nr | head

##### Turn off wifi on macOS

   net worksetup -setairportpower en0 off

##### See who are using a specific port

   net stat -Aan | grep .80 | grep -v 127.0.0.1 | grep EST | awk '{print $6}' | cut -d "." -f1,2,3,4 | sort | uniq

##### Equivalent to ifconfig -a in HPUX

   net stat -in

##### Print whois info about connected ip addresses

   net stat -np inet|awk '/firefox/{split($5,a,":");z[a[1]]++} END{for(i in z){system("whois " i)}}'|less

##### All IP connected to  my host

   net stat -nut | sed '/ESTABLISHED/!d;s/.*[\t ]\+\(.*\):.*/\1/' | sort -u

##### Change domain user password

   net  user user_name  new_password /domain

##### Number of open connections per ip.

   net stat -an | grep 80 | wc -l

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### Quick network status of machine

   net stat -tn | awk 'NR>2 {print $6}' | sort | uniq -c | sort -rn

##### See KeepAlive counters on tcp connections

   net stat -town

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### check open ports (both ipv4 and ipv6)

   net stat -plnt

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### see the TIME_WAIT and ESTABLISHED nums of the network

   net stat -n | awk '/^tcp/ {++B[$NF]} END {for(a in B) print a, B[a]}'

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### Display connections histogram

   net stat -an | grep ESTABLISHED | awk '\''{print $5}'\'' | awk -F: '\''{print $1}'\'' | sort | uniq -c | awk '\''{ printf("%s\t%s\t",$2,$1); for (i = 0; i < $1; i++) {printf("*")}; print ""}'\''

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### To Stop or Start (Restart) a Windows service from a Linux machine

   net  rpc -I indirizzoip -U nomeutente%password servizio {stop|start} nomedelservizio

##### Show apps that use internet connection at the moment. (Multi-Language)

   net stat -lantp | grep -i stab | awk -F/ '{print $2}' | sort | uniq

##### Show all programs on UDP and TCP ports with timer information

   net stat -putona

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### Examine processes generating traffic on your website

   net stat -np | grep -v ^unix

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### List programs with open ports and connections

   net stat -ntauple

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### List the number and type of active network connections

   net stat -ant | awk '{print $NF}' | grep -v '[a-z]' | sort | uniq -c

##### Show complete URL in netstat output

   net stat -tup -W | column -t

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### List Listen Port by numbers

   net stat -tlpn | sort -t: -k2 -n

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### netstat with group by ip adress

   net stat -ntu | awk ' $5 ~ /^[0-9]/ {print $5}' | cut -d: -f1 | sort | uniq -c | sort -n

##### Stop or Start (Restart) a Windows service from a Linux machine

   net  rpc -I ADDRESS -U USERNAME%PASSWORD service {stop|start} SVCNAME

##### Monitor bandwidth by pid

   net hogs -p eth0

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### Show apps that use internet connection at the moment.

   net stat -lantp | grep -i establ | awk -F/ '{print $2}' | sort | uniq

##### find an unused unprivileged TCP port

   net stat -atn | awk ' /tcp/ {printf("%s\n",substr($4,index($4,":")+1,length($4) )) }' | sed -e "s/://g" | sort -rnu | awk '{array [$1] = $1} END {i=32768; again=1; while (again == 1) {if (array[i] == i) {i=i+1} else {print i; again=0}}}'

##### Show in a web server, running in the port 80, how many ESTABLISHED connections by ip it has.

   net stat -ant | grep :80 | grep ESTABLISHED | awk '{print $5}' | awk -F: '{print $1}' | sort | uniq -c | sort -n

##### Sorted list of established destination connections

   net stat | awk '/EST/{print $5}' | sort

##### Two command output

   net stat -n | grep ESTAB |grep  :80  | tee /dev/stderr | wc -l

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### calulate established tcp connection of local machine

   net stat -an|grep -ci "tcp.*established"

##### Most simple way to get a list of open ports

   net stat -lnp

##### calulate established tcp connection of local machine

   net stat -an | awk '$1 ~ /[Tt][Cc][Pp]/ && $NF ~ /ESTABLISHED/{i++}END{print "Connected:\t", i}'

##### List all TCP opened ports on localhost in LISTEN mode

   net stat -nptl

##### List top 20 IP from which TCP connection is in SYN_RECV state

   net stat -pant 2> /dev/null | grep SYN_ | awk '{print $5;}' | cut -d: -f1 | sort | uniq -c | sort -n | tail -20

##### Who has the most Apache connections.

   net stat -anl | grep :80 | awk '{print $5}' | cut -d ":" -f 1 | uniq -c | sort -n | grep -c IPHERE

##### Query ip pools based on successive netnames via whois

   net =DTAG-DIAL ; for (( i=1; i<30; i++ )); do whois -h whois.ripe.net $net$i | grep '^inetnum:' | sed "s;^.*:;$net$i;" ; done

##### Netstat Connection Check

   net stat -ntu | awk '{print $5}' |  cut -d: -f1 | sort | uniq -c | sort -n | tail

##### Show complete URL in netstat output

   net stat -pnut -W | column -t -s $'\t'

##### Show what PID is listening on port 80 on Linux

   net stat -alnp | grep ::80

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### All IP connected to  my host

   net stat -lantp | grep ESTABLISHED |awk '{print $5}' | awk -F: '{print $1}' | sort -u

##### get a process list by listen port

   net stat -ntlp | grep -w 80 | awk '{print $7}' | cut -d/ -f1

##### IP addresses connected to port 80

   net stat -tn 2>/dev/null | grep ':80 ' | awk '{print $5}' |sed -e 's/::ffff://' | cut -f1 -d: | sort | uniq -c | sort -rn | head

##### TCP and UDP listening sockets

   net stat -t -u -l

##### The program listening on port 8080 through IPv6

   net stat -lnp6 | grep :8080 | sed 's#^[^\/]*/\([a-z0-9]*\)#\1#'

##### list ips with high number of connections

   net stat -tn 2>/dev/null | grep :80 | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -nr | head

##### Show all LISTENing and open server connections, with port number and process name/pid

   net stat -tulpn

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### Show which programs are listening on TCP and UDP ports

   net stat -plunt

##### Show all listening and established ports TCP and UDP together with the PID of the associated process

   net stat -plantu

##### list current ssh clients

   net stat -tn | awk '($4 ~ /:22\s*/) && ($6 ~ /^EST/) {print substr($5, 0, index($5,":"))}'

##### tell if a port is in use

   net stat -a numeric-ports | grep 8321

##### Lists all listening ports together with the PID of the associated process

   net stat -anpe

##### Number of open connections per ip.

   net stat -ntu | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -n

##### find an unused unprivileged TCP port

   net stat  -atn | perl -0777 -ne '@ports = /tcp.*?\:(\d+)\s+/imsg ; for $port (32768..61000) {if(!grep(/^$port$/, @ports)) { print $port; last } }'

##### Find default gateway

   net stat -rn | grep UG | tr -s " " | cut -d" " -f2

##### Fetch the Gateway Ip Address

   net stat -nr | awk 'BEGIN {while ($3!="0.0.0.0") getline; print $2}'

##### netstat with group by (ip adress)

   net stat -ntu | awk ' $5 ~ /^(::ffff:|[0-9|])/ { gsub("::ffff:","",$5); print $5}' | cut -d: -f1 | sort | uniq -c | sort -nr

##### check open ports (both ipv4 and ipv6)

   net stat -plntu

##### To find which host made maximum number of specific tcp connections

   net stat -n | grep '^tcp.*<IP>:<PORT>' | tr " " | awk 'BEGIN{FS="( |:)"}{print $6}' | sort | uniq -c | sort -n -k1 | awk '{if ($1 >= 10){print $2}}'

##### Count TCP States From Netstat

   net stat -an | awk '/tcp/ {print $6}' | sort | uniq -c

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### how to allow a program to listen through the firewall

   net sh firewall add programmaautorizzato C:\nltest.exe mltest enable

##### To find the LDAP clients connected to LDAP service running on Solaris

   net stat -n -f inet|awk '/\.389/{print $2}'|cut -f1-4 -d.|sort -u

##### Summarize the number of open TCP connections by state

   net stat -nt | awk '{print $6}' | sort | uniq -c | sort -n -k 1 -r

##### calulate established tcp connection of local machine

   net stat -an | grep -Ec '^tcp.+ESTABLISHED$'

##### count IPv4 connections per IP

   net stat -anp |grep 'tcp\|udp' | awk '{print $5}' | sed s/::ffff:// | cut -d: -f1 | sort | uniq -c | sort -n

##### TCP and UDP listening sockets

   net stat -tunlapo

##### Add member to domain group

   net  group groupname username /add /domain

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### Active Internet connections (only servers)

   net stat -lnptu

##### open listening ports

   net stat -ltn | awk -n '/tcp /{ split($4, x, ":"); print(x[2]); }' | sort -n

##### List state of NAT.

   net stat-nat -n

##### Check for listening services

   net stat -tuapen | grep LISTEN

##### netstat with group by (ip adress)

   net stat -nt | awk -F":" '{print $2}' | sort | uniq -c

##### Graph # of connections for each hosts.

   net stat -an | grep ESTABLISHED | awk '{print $5}' | awk -F: '{print $1}' | sort | uniq -c | awk '{ printf("%s\t%s\t",$2,$1) ; for (i = 0; i < $1; i++) {printf("*")}; print "" }'

##### Find out if MySQL is up and listening on Linux

   net stat -tap | grep mysql

##### get the IP connected to the server (usefull to detect IP that should be blocked)

   net stat -ntu | awk '{print $5}' | cut -d: -f1 | sort  | uniq -c | sort -n

##### NETSTAT ESTABLISHED

   net stat | find "ESTABLISHED"

##### monitor all open connections to specific port

   net stat -anp | grep ":<port>"

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password

##### Check if TCP port 25 is open

   net stat -tln | grep :25

##### Command results as an image capture

   net stat -rn | convert label:@- netstat.png

##### List open TCP/UDP ports

   net stat -anp tcp udp | grep LISTEN

##### Show number of connections per remote IP

   net stat -antu | awk '$5 ~ /[0-9]:/{split($5, a, ":"); ips[a[1]]++} END {for (ip in ips) print ips[ip], ip | "sort -k1 -nr"}'

##### List open TCP/UDP ports

   net stat -ltun

##### Netstat List out Remote IP's Connected to Server Only

   net stat -tn | awk '{print $5}' | egrep -v '(localhost|\*\:\*|Address|and|servers|fff|127\.0\.0)' | sed 's/:[0-99999999].*//g'

##### find out which TCP ports are listening and opened by which process in verbose

   net stat -tlvp

##### find an unused unprivileged TCP port

   net stat -tan | awk '$1 == "tcp" && $4 ~ /:/ { port=$4; sub(/^[^:]+:/, "", port); used[int(port)] = 1; } END { for (p = 32768; p <= 61000; ++p) if (! (p in used)) { print p; exit(0); }; exit(1); }'

##### showing opened ports on machine

   net stat -tulpnc

##### find an unused unprivileged TCP port

   net stat -atn | perl -ane 'if ( $F[3] =~ /(\d+)$/ ) { $x{$1}=1 } END{ print( (grep {!$x{$_}} 32768..61000)[0] . "\n" )}'

##### Lists open ports

   net stat -antuwp | egrep "(^[^t])|(^tcp.*LISTEN)"

##### Number of connections per IP with range 24

   net stat -tn | grep :80 | awk '{print $5}'| grep -v ':80' | cut -f1 -d: |cut -f1,2,3  -d. | sort | uniq -c| sort -n

##### Check the connection of the maximum number of IP

   net stat -na | grep ESTABLISHED | awk '{print$5}' | awk -F : '{print$1}' | sort | uniq -c | sort -r

##### Shutdown a Windows machine from Linux

   net  rpc shutdown -I ipAddressOfWindowsPC -U username%password
