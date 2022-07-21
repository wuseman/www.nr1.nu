# netstat

##### Find all IP connected to my host through TCP connection and count it

   netstat  -an |grep ":80" |awk '{print $5}' | sed s/::ffff://g | cut -d: -f1 |sort |uniq -c |sort -n | tail -1000 | grep -v "0.0.0.0"

##### Equivalent to ifconfig -a in HPUX

   netstat  -nr|egrep -v "Routing|Interface|lo0"|awk '{print $5}'|sort -u| while read l; do ifconfig $l ; echo "        Station Addr: `lanscan -ia|grep "$l "|cut -d ' ' -f 1`" ; done

##### Quick network status of machine

   netstat  -tn | awk 'NR>2 {print $6}' | sort | uniq -c | sort -rn

##### Open Port Check

   netstat  -an | grep color -i -E 'listen|listening'

##### See KeepAlive counters on tcp connections

   netstat  -town

##### Show number of connections per remote IP

   netstat  -antu | awk '{print $5}' | awk -F: '{print $1}' | sort | uniq -c | sort -n

##### Find default gateway

   netstat  -rn | awk '/UG/{print $2}'

##### Show apps that use internet connection at the moment.

   netstat  -lantp | grep -i establ | awk -F/ '{print $2}' | uniq | sort

##### All IP connected to  my host

   netstat  -nut | awk '$NF=="ESTABLISHED" {print $5}' | cut -d: -f1 | sort -u

##### display only tcp

   netstat  -4tnape

##### check open ports (both ipv4 and ipv6)

   netstat  -plnt

##### show open ports on computer

   netstat  -an | grep -i listen

##### Sorted list of established destination connections

   netstat  | grep EST | awk '{print $5}' | sort

##### Get number of established sessions on a given port

   netstat  -anp | grep :80 | grep ESTABLISHED | wc -l

##### Get connections from a SSH tunnel

   netstat  -t -p extend | grep USERNAME

##### Check if TCP port 25 is open

   netstat  -lntp

##### Lists all listening ports together with the PID of the associated process

   netstat  -tunlp

##### list current ssh clients

   netstat  -atn | grep :22 | grep ESTABLISHED | awk '{print $4}' | sed 's/:22//'

##### Checking total connections to each Ip inserver

   netstat  -alpn | grep :80 | awk '{print $4}' |awk -F: '{print $(NF-1)}' |sort | 

##### Show the number of current httpd processes

   netstat  -l -p tcp | egrep -e 'www.*[0-9]{3,4}\/(apache2|httpd)' | awk '{print$7}'

##### Network Interfaces

   netstat  -ie

##### netstat with group by (ip adress)

   netstat  -ntu | awk ' $5 ~ /^[0-9]/ {print $5}' | cut -d: -f1 | sort | uniq -c | sort -n

##### Prints tcp and udp connections

   netstat  -nlput

##### see the TIME_WAIT and ESTABLISHED nums of the network

   netstat  -n | awk '/^tcp/ {++B[$NF]} END {for(a in B) print a, B[a]}'

##### See a list of ports running

   netstat  -an | grep -i listen

##### Informations sur les connexions reseau

   netstat  -taupe

##### netstat -luntp

   netstat  -luntp

##### &#1593;&#1585;&#1590; &#1575;&#1578;&#1589;&#1575;&#1604;&#1575;&#1578; &#1604;&#1576;&#1608;&#1585;&#1578; &#1605;&#1581;&#1583;&#1583;

   netstat  -antp | grep 22

##### Display connections histogram

   netstat  -an | grep ESTABLISHED | awk '\''{print $5}'\'' | awk -F: '\''{print $1}'\'' | sort | uniq -c | awk '\''{ printf("%s\t%s\t",$2,$1); for (i = 0; i < $1; i++) {printf("*")}; print ""}'\''

##### Show apps that use internet connection at the moment. (Multi-Language)

   netstat  -lantp | grep -i stab | awk -F/ '{print $2}' | sort | uniq

##### Show all programs on UDP and TCP ports with timer information

   netstat  -putona

##### Examine processes generating traffic on your website

   netstat  -np | grep -v ^unix

##### List programs with open ports and connections

   netstat  -ntauple

##### List the number and type of active network connections

   netstat  -ant | awk '{print $NF}' | grep -v '[a-z]' | sort | uniq -c

##### Show complete URL in netstat output

   netstat  -tup -W | column -t

##### List Listen Port by numbers

   netstat  -tlpn | sort -t: -k2 -n

##### netstat with group by ip adress

   netstat  -ntu | awk ' $5 ~ /^[0-9]/ {print $5}' | cut -d: -f1 | sort | uniq -c | sort -n

##### Show apps that use internet connection at the moment.

   netstat  -lantp | grep -i establ | awk -F/ '{print $2}' | sort | uniq

##### find an unused unprivileged TCP port

   netstat  -atn | awk ' /tcp/ {printf("%s\n",substr($4,index($4,":")+1,length($4) )) }' | sed -e "s/://g" | sort -rnu | awk '{array [$1] = $1} END {i=32768; again=1; while (again == 1) {if (array[i] == i) {i=i+1} else {print i; again=0}}}'

##### Show in a web server, running in the port 80, how many ESTABLISHED connections by ip it has.

   netstat  -ant | grep :80 | grep ESTABLISHED | awk '{print $5}' | awk -F: '{print $1}' | sort | uniq -c | sort -n

##### Sorted list of established destination connections

   netstat  | awk '/EST/{print $5}' | sort

##### Two command output

   netstat  -n | grep ESTAB |grep  :80  | tee /dev/stderr | wc -l

##### calulate established tcp connection of local machine

   netstat  -an|grep -ci "tcp.*established"

##### Most simple way to get a list of open ports

   netstat  -lnp

##### calulate established tcp connection of local machine

   netstat  -an | awk '$1 ~ /[Tt][Cc][Pp]/ && $NF ~ /ESTABLISHED/{i++}END{print "Connected:\t", i}'

##### List all TCP opened ports on localhost in LISTEN mode

   netstat  -nptl

##### List top 20 IP from which TCP connection is in SYN_RECV state

   netstat  -pant 2> /dev/null | grep SYN_ | awk '{print $5;}' | cut -d: -f1 | sort | uniq -c | sort -n | tail -20

##### Who has the most Apache connections.

   netstat  -anl | grep :80 | awk '{print $5}' | cut -d ":" -f 1 | uniq -c | sort -n | grep -c IPHERE

##### Netstat Connection Check

   netstat  -ntu | awk '{print $5}' |  cut -d: -f1 | sort | uniq -c | sort -n | tail

##### Show complete URL in netstat output

   netstat  -pnut -W | column -t -s $'\t'

##### Show what PID is listening on port 80 on Linux

   netstat  -alnp | grep ::80

##### All IP connected to  my host

   netstat  -lantp | grep ESTABLISHED |awk '{print $5}' | awk -F: '{print $1}' | sort -u

##### get a process list by listen port

   netstat  -ntlp | grep -w 80 | awk '{print $7}' | cut -d/ -f1

##### IP addresses connected to port 80

   netstat  -tn 2>/dev/null | grep ':80 ' | awk '{print $5}' |sed -e 's/::ffff://' | cut -f1 -d: | sort | uniq -c | sort -rn | head

##### TCP and UDP listening sockets

   netstat  -t -u -l

##### The program listening on port 8080 through IPv6

   netstat  -lnp6 | grep :8080 | sed 's#^[^\/]*/\([a-z0-9]*\)#\1#'

##### list ips with high number of connections

   netstat  -tn 2>/dev/null | grep :80 | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -nr | head

##### Show all LISTENing and open server connections, with port number and process name/pid

   netstat  -tulpn

##### Show which programs are listening on TCP and UDP ports

   netstat  -plunt

##### Show all listening and established ports TCP and UDP together with the PID of the associated process

   netstat  -plantu

##### list current ssh clients

   netstat  -tn | awk '($4 ~ /:22\s*/) && ($6 ~ /^EST/) {print substr($5, 0, index($5,":"))}'

##### tell if a port is in use

   netstat  -a numeric-ports | grep 8321

##### Lists all listening ports together with the PID of the associated process

   netstat  -anpe

##### Number of open connections per ip.

   netstat  -ntu | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -n

##### find an unused unprivileged TCP port

   netstat   -atn | perl -0777 -ne '@ports = /tcp.*?\:(\d+)\s+/imsg ; for $port (32768..61000) {if(!grep(/^$port$/, @ports)) { print $port; last } }'

##### Find default gateway

   netstat  -rn | grep UG | tr -s " " | cut -d" " -f2

##### Fetch the Gateway Ip Address

   netstat  -nr | awk 'BEGIN {while ($3!="0.0.0.0") getline; print $2}'

##### netstat with group by (ip adress)

   netstat  -ntu | awk ' $5 ~ /^(::ffff:|[0-9|])/ { gsub("::ffff:","",$5); print $5}' | cut -d: -f1 | sort | uniq -c | sort -nr

##### check open ports (both ipv4 and ipv6)

   netstat  -plntu

##### To find which host made maximum number of specific tcp connections

   netstat  -n | grep '^tcp.*<IP>:<PORT>' | tr " " | awk 'BEGIN{FS="( |:)"}{print $6}' | sort | uniq -c | sort -n -k1 | awk '{if ($1 >= 10){print $2}}'

##### Count TCP States From Netstat

   netstat  -an | awk '/tcp/ {print $6}' | sort | uniq -c

##### To find the LDAP clients connected to LDAP service running on Solaris

   netstat  -n -f inet|awk '/\.389/{print $2}'|cut -f1-4 -d.|sort -u

##### Summarize the number of open TCP connections by state

   netstat  -nt | awk '{print $6}' | sort | uniq -c | sort -n -k 1 -r

##### calulate established tcp connection of local machine

   netstat  -an | grep -Ec '^tcp.+ESTABLISHED$'

##### count IPv4 connections per IP

   netstat  -anp |grep 'tcp\|udp' | awk '{print $5}' | sed s/::ffff:// | cut -d: -f1 | sort | uniq -c | sort -n

##### TCP and UDP listening sockets

   netstat  -tunlapo

##### Active Internet connections (only servers)

   netstat  -lnptu

##### open listening ports

   netstat  -ltn | awk -n '/tcp /{ split($4, x, ":"); print(x[2]); }' | sort -n

##### List state of NAT.

   netstat -nat -n

##### Check for listening services

   netstat  -tuapen | grep LISTEN

##### netstat with group by (ip adress)

   netstat  -nt | awk -F":" '{print $2}' | sort | uniq -c

##### Graph # of connections for each hosts.

   netstat  -an | grep ESTABLISHED | awk '{print $5}' | awk -F: '{print $1}' | sort | uniq -c | awk '{ printf("%s\t%s\t",$2,$1) ; for (i = 0; i < $1; i++) {printf("*")}; print "" }'

##### Graph # of connections for each hosts.

   netstat  -an | grep ESTABLISHED | awk '{print $5}' | awk -F: '{print $1}' | sort | uniq -c | awk '{ printf("%s\t%s\t",$2,$1) ; for (i = 0; i < $1; i++) {printf("*")}; print "" }'

##### Find out if MySQL is up and listening on Linux

   netstat  -tap | grep mysql

##### get the IP connected to the server (usefull to detect IP that should be blocked)

   netstat  -ntu | awk '{print $5}' | cut -d: -f1 | sort  | uniq -c | sort -n

##### NETSTAT ESTABLISHED

   netstat  | find "ESTABLISHED"

##### monitor all open connections to specific port

   netstat  -anp | grep ":<port>"

##### Check if TCP port 25 is open

   netstat  -tln | grep :25

##### Command results as an image capture

   netstat  -rn | convert label:@- netstat.png

##### List open TCP/UDP ports

   netstat  -anp tcp udp | grep LISTEN

##### Show number of connections per remote IP

   netstat  -antu | awk '$5 ~ /[0-9]:/{split($5, a, ":"); ips[a[1]]++} END {for (ip in ips) print ips[ip], ip | "sort -k1 -nr"}'

##### List open TCP/UDP ports

   netstat  -ltun

##### Netstat List out Remote IP's Connected to Server Only

   netstat  -tn | awk '{print $5}' | egrep -v '(localhost|\*\:\*|Address|and|servers|fff|127\.0\.0)' | sed 's/:[0-99999999].*//g'

##### find out which TCP ports are listening and opened by which process in verbose

   netstat  -tlvp

##### find an unused unprivileged TCP port

   netstat  -tan | awk '$1 == "tcp" && $4 ~ /:/ { port=$4; sub(/^[^:]+:/, "", port); used[int(port)] = 1; } END { for (p = 32768; p <= 61000; ++p) if (! (p in used)) { print p; exit(0); }; exit(1); }'

##### showing opened ports on machine

   netstat  -tulpnc

##### find an unused unprivileged TCP port

   netstat  -atn | perl -ane 'if ( $F[3] =~ /(\d+)$/ ) { $x{$1}=1 } END{ print( (grep {!$x{$_}} 32768..61000)[0] . "\n" )}'

##### Lists open ports

   netstat  -antuwp | egrep "(^[^t])|(^tcp.*LISTEN)"

##### Number of connections per IP with range 24

   netstat  -tn | grep :80 | awk '{print $5}'| grep -v ':80' | cut -f1 -d: |cut -f1,2,3  -d. | sort | uniq -c| sort -n

##### Check the connection of the maximum number of IP

   netstat  -na | grep ESTABLISHED | awk '{print$5}' | awk -F : '{print$1}' | sort | uniq -c | sort -r

##### Detect Connections On Port - Android

   netstat  -lptu | grep -E "22.*ESTABLISHED" | cut -s -d ':' -f2 | awk '{print $2}'

##### How to Kill Process that is Running on Certain Port in Windows?

   netstat  -a -o -n | grep 8080

##### List all IP's connected to port 80

   netstat  -tn 2>/dev/null | grep :80 | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -nr | head

##### See who are using a specific port

   netstat  -Aan | grep .80 | grep -v 127.0.0.1 | grep EST | awk '{print $6}' | cut -d "." -f1,2,3,4 | sort | uniq

##### Equivalent to ifconfig -a in HPUX

   netstat  -in

##### Print whois info about connected ip addresses

   netstat  -np inet|awk '/firefox/{split($5,a,":");z[a[1]]++} END{for(i in z){system("whois " i)}}'|less

##### All IP connected to  my host

   netstat  -nut | sed '/ESTABLISHED/!d;s/.*[\t ]\+\(.*\):.*/\1/' | sort -u

##### Number of open connections per ip.

   netstat  -an | grep 80 | wc -l

##### Quick network status of machine

   netstat  -tn | awk 'NR>2 {print $6}' | sort | uniq -c | sort -rn

##### See KeepAlive counters on tcp connections

   netstat  -town

##### check open ports (both ipv4 and ipv6)

   netstat  -plnt

##### see the TIME_WAIT and ESTABLISHED nums of the network

   netstat  -n | awk '/^tcp/ {++B[$NF]} END {for(a in B) print a, B[a]}'

##### Display connections histogram

   netstat  -an | grep ESTABLISHED | awk '\''{print $5}'\'' | awk -F: '\''{print $1}'\'' | sort | uniq -c | awk '\''{ printf("%s\t%s\t",$2,$1); for (i = 0; i < $1; i++) {printf("*")}; print ""}'\''

##### Show apps that use internet connection at the moment. (Multi-Language)

   netstat  -lantp | grep -i stab | awk -F/ '{print $2}' | sort | uniq

##### Show all programs on UDP and TCP ports with timer information

   netstat  -putona

##### Examine processes generating traffic on your website

   netstat  -np | grep -v ^unix

##### List programs with open ports and connections

   netstat  -ntauple

##### List the number and type of active network connections

   netstat  -ant | awk '{print $NF}' | grep -v '[a-z]' | sort | uniq -c

##### Show complete URL in netstat output

   netstat  -tup -W | column -t

##### List Listen Port by numbers

   netstat  -tlpn | sort -t: -k2 -n

##### netstat with group by ip adress

   netstat  -ntu | awk ' $5 ~ /^[0-9]/ {print $5}' | cut -d: -f1 | sort | uniq -c | sort -n

##### Show apps that use internet connection at the moment.

   netstat  -lantp | grep -i establ | awk -F/ '{print $2}' | sort | uniq

##### find an unused unprivileged TCP port

   netstat  -atn | awk ' /tcp/ {printf("%s\n",substr($4,index($4,":")+1,length($4) )) }' | sed -e "s/://g" | sort -rnu | awk '{array [$1] = $1} END {i=32768; again=1; while (again == 1) {if (array[i] == i) {i=i+1} else {print i; again=0}}}'

##### Show in a web server, running in the port 80, how many ESTABLISHED connections by ip it has.

   netstat  -ant | grep :80 | grep ESTABLISHED | awk '{print $5}' | awk -F: '{print $1}' | sort | uniq -c | sort -n

##### Sorted list of established destination connections

   netstat  | awk '/EST/{print $5}' | sort

##### Two command output

   netstat  -n | grep ESTAB |grep  :80  | tee /dev/stderr | wc -l

##### calulate established tcp connection of local machine

   netstat  -an|grep -ci "tcp.*established"

##### Most simple way to get a list of open ports

   netstat  -lnp

##### calulate established tcp connection of local machine

   netstat  -an | awk '$1 ~ /[Tt][Cc][Pp]/ && $NF ~ /ESTABLISHED/{i++}END{print "Connected:\t", i}'

##### List all TCP opened ports on localhost in LISTEN mode

   netstat  -nptl

##### List top 20 IP from which TCP connection is in SYN_RECV state

   netstat  -pant 2> /dev/null | grep SYN_ | awk '{print $5;}' | cut -d: -f1 | sort | uniq -c | sort -n | tail -20

##### Who has the most Apache connections.

   netstat  -anl | grep :80 | awk '{print $5}' | cut -d ":" -f 1 | uniq -c | sort -n | grep -c IPHERE

##### Netstat Connection Check

   netstat  -ntu | awk '{print $5}' |  cut -d: -f1 | sort | uniq -c | sort -n | tail

##### Show complete URL in netstat output

   netstat  -pnut -W | column -t -s $'\t'

##### Show what PID is listening on port 80 on Linux

   netstat  -alnp | grep ::80

##### All IP connected to  my host

   netstat  -lantp | grep ESTABLISHED |awk '{print $5}' | awk -F: '{print $1}' | sort -u

##### get a process list by listen port

   netstat  -ntlp | grep -w 80 | awk '{print $7}' | cut -d/ -f1

##### IP addresses connected to port 80

   netstat  -tn 2>/dev/null | grep ':80 ' | awk '{print $5}' |sed -e 's/::ffff://' | cut -f1 -d: | sort | uniq -c | sort -rn | head

##### TCP and UDP listening sockets

   netstat  -t -u -l

##### The program listening on port 8080 through IPv6

   netstat  -lnp6 | grep :8080 | sed 's#^[^\/]*/\([a-z0-9]*\)#\1#'

##### list ips with high number of connections

   netstat  -tn 2>/dev/null | grep :80 | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -nr | head

##### Show all LISTENing and open server connections, with port number and process name/pid

   netstat  -tulpn

##### Show which programs are listening on TCP and UDP ports

   netstat  -plunt

##### Show all listening and established ports TCP and UDP together with the PID of the associated process

   netstat  -plantu

##### list current ssh clients

   netstat  -tn | awk '($4 ~ /:22\s*/) && ($6 ~ /^EST/) {print substr($5, 0, index($5,":"))}'

##### tell if a port is in use

   netstat  -a numeric-ports | grep 8321

##### Lists all listening ports together with the PID of the associated process

   netstat  -anpe

##### Number of open connections per ip.

   netstat  -ntu | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -n

##### find an unused unprivileged TCP port

   netstat   -atn | perl -0777 -ne '@ports = /tcp.*?\:(\d+)\s+/imsg ; for $port (32768..61000) {if(!grep(/^$port$/, @ports)) { print $port; last } }'

##### Find default gateway

   netstat  -rn | grep UG | tr -s " " | cut -d" " -f2

##### Fetch the Gateway Ip Address

   netstat  -nr | awk 'BEGIN {while ($3!="0.0.0.0") getline; print $2}'

##### netstat with group by (ip adress)

   netstat  -ntu | awk ' $5 ~ /^(::ffff:|[0-9|])/ { gsub("::ffff:","",$5); print $5}' | cut -d: -f1 | sort | uniq -c | sort -nr

##### check open ports (both ipv4 and ipv6)

   netstat  -plntu

##### To find which host made maximum number of specific tcp connections

   netstat  -n | grep '^tcp.*<IP>:<PORT>' | tr " " | awk 'BEGIN{FS="( |:)"}{print $6}' | sort | uniq -c | sort -n -k1 | awk '{if ($1 >= 10){print $2}}'

##### Count TCP States From Netstat

   netstat  -an | awk '/tcp/ {print $6}' | sort | uniq -c

##### To find the LDAP clients connected to LDAP service running on Solaris

   netstat  -n -f inet|awk '/\.389/{print $2}'|cut -f1-4 -d.|sort -u

##### Summarize the number of open TCP connections by state

   netstat  -nt | awk '{print $6}' | sort | uniq -c | sort -n -k 1 -r

##### calulate established tcp connection of local machine

   netstat  -an | grep -Ec '^tcp.+ESTABLISHED$'

##### count IPv4 connections per IP

   netstat  -anp |grep 'tcp\|udp' | awk '{print $5}' | sed s/::ffff:// | cut -d: -f1 | sort | uniq -c | sort -n

##### TCP and UDP listening sockets

   netstat  -tunlapo

##### Active Internet connections (only servers)

   netstat  -lnptu

##### open listening ports

   netstat  -ltn | awk -n '/tcp /{ split($4, x, ":"); print(x[2]); }' | sort -n

##### List state of NAT.

   netstat -nat -n

##### Check for listening services

   netstat  -tuapen | grep LISTEN

##### netstat with group by (ip adress)

   netstat  -nt | awk -F":" '{print $2}' | sort | uniq -c

##### Graph # of connections for each hosts.

   netstat  -an | grep ESTABLISHED | awk '{print $5}' | awk -F: '{print $1}' | sort | uniq -c | awk '{ printf("%s\t%s\t",$2,$1) ; for (i = 0; i < $1; i++) {printf("*")}; print "" }'

##### Find out if MySQL is up and listening on Linux

   netstat  -tap | grep mysql

##### get the IP connected to the server (usefull to detect IP that should be blocked)

   netstat  -ntu | awk '{print $5}' | cut -d: -f1 | sort  | uniq -c | sort -n

##### NETSTAT ESTABLISHED

   netstat  | find "ESTABLISHED"

##### monitor all open connections to specific port

   netstat  -anp | grep ":<port>"

##### Check if TCP port 25 is open

   netstat  -tln | grep :25

##### Command results as an image capture

   netstat  -rn | convert label:@- netstat.png

##### List open TCP/UDP ports

   netstat  -anp tcp udp | grep LISTEN

##### Show number of connections per remote IP

   netstat  -antu | awk '$5 ~ /[0-9]:/{split($5, a, ":"); ips[a[1]]++} END {for (ip in ips) print ips[ip], ip | "sort -k1 -nr"}'

##### List open TCP/UDP ports

   netstat  -ltun

##### Netstat List out Remote IP's Connected to Server Only

   netstat  -tn | awk '{print $5}' | egrep -v '(localhost|\*\:\*|Address|and|servers|fff|127\.0\.0)' | sed 's/:[0-99999999].*//g'

##### find out which TCP ports are listening and opened by which process in verbose

   netstat  -tlvp

##### find an unused unprivileged TCP port

   netstat  -tan | awk '$1 == "tcp" && $4 ~ /:/ { port=$4; sub(/^[^:]+:/, "", port); used[int(port)] = 1; } END { for (p = 32768; p <= 61000; ++p) if (! (p in used)) { print p; exit(0); }; exit(1); }'

##### showing opened ports on machine

   netstat  -tulpnc

##### find an unused unprivileged TCP port

   netstat  -atn | perl -ane 'if ( $F[3] =~ /(\d+)$/ ) { $x{$1}=1 } END{ print( (grep {!$x{$_}} 32768..61000)[0] . "\n" )}'

##### Lists open ports

   netstat  -antuwp | egrep "(^[^t])|(^tcp.*LISTEN)"

##### Number of connections per IP with range 24

   netstat  -tn | grep :80 | awk '{print $5}'| grep -v ':80' | cut -f1 -d: |cut -f1,2,3  -d. | sort | uniq -c| sort -n

##### Check the connection of the maximum number of IP

   netstat  -na | grep ESTABLISHED | awk '{print$5}' | awk -F : '{print$1}' | sort | uniq -c | sort -r
