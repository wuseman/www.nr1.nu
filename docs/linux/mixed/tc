# tc

##### Show header HTTP with tcpdump

   tc pdump -s 1024 -l -A -n host 192.168.9.56

##### tcpdump -nqt -s 0 -A -i eth0 port 5060

   tc pdump -nqt -s 0 -A -i eth0 port 5060

##### Convert a file from ISO-8859-1 (or whatever) to UTF-8 (or whatever)

   tc s -f 8859-1 -t utf /some/file

##### show all upd tcp an icmp traffic but ssh

   tc pdump -n -v tcp or udp or icmp and not port 22

##### Show network throughput

   tc pdump -w - |pv -bert >/dev/null

##### Sniffing network to generate a pcap file in CLI mode on a remote host and open it via local Wireshark ( GUI ).

   tc pdump -v -i <INTERFACE> -s 0 -w /tmp/sniff.pcap port <PORT> # On the remote side

##### SMTP Analysis

   tc pdump -l -s0 -w - tcp dst port 25 | strings | grep -i 'MAIL FROM\|RCPT TO'

##### Capture data in ASCII. 1500 bytes

   tc pdump -ieth0 -n tcp port 80 -A -s1500

##### tcmdump check ping

   tc pdump -nni eth0 -e icmp[icmptype] == 8

##### Getting started with tcpdump

   tc pdump -nli eth0; tcpdump -nli eth0 src or dst w.x.y.z; tcpdump -nli eth0 port 80; tcpdump -nli eth0 proto udp

##### Output sound when your computer is downloading something

   tc pdump | aplay -c 2

##### Get Cisco network information

   tc pdump -nn -v -i eth0 -s 1500 -c 1 'ether[20:2] == 0x2000'

##### Trace and view network traffic

   tc pdump -A -s 0 port 80

##### tcpdump sniff pop3,imap,smtp and http

   tc pdump -i eth0 port http or port smtp or port imap or port pop3 -l -A | egrep -i 'pass=|pwd=|log=|login=|user=|username=|pw=|passw=|passwd=|password=|pass:|user:|userna me:|password:|login:|pass |user '

##### TCPDUMP & Save Capture to Remote Server w/ GZIP

   tc pdump -i eth0 -w - | ssh forge.remotehost.com -c arcfour,blowfish-cbc -C -p 50005 "cat - | gzip > /tmp/eth0.pcap.gz"

##### unbuffered tcpdump

   tc p(){ tcpdump -nUs0 -w- -iinterface $1|tcpdump -n${2-A}r- ;} usage: tcp '[primitives]' [X|XX]

##### Plaintext credentials sniffing with tcpdump and grep

   tc pdump port http or port ftp or port smtp or port imap or port pop3 -l -A | egrep -i 'pass=|pwd=|log=|login=|user=|username=|pw=|passw=|passwd=|password=|pass:|user:|username:|password:|login:|pass |user ' color=auto line-buffered -B20

##### tcpdump whole packets to file in ascii and hex with ip adresses instead of hostname

   tc pdump host <IP> -nXXv -s0 -w file.pcap

##### tcpdump top 10 talkers

   tc pdump -tnn -c 2000 -i eth0  | awk -F "." '{print $1"."$2"."$3"."$4}' | sort | uniq -c | sort -nr | awk ' $1 > 10 '

##### tcpdump from src to dst

   tc pdump src <srcIP>  and dst <dstIP> -w file.pcap

##### Read a tcpdump file and count SYN packets to port 80, Order column by destination.

   tc pdump -ntr NAME_OF_CAPTURED_FILE.pcap 'tcp[13] = 0x02 and dst port 80' | awk '{print $4}' | tr . ' ' | awk '{print $1"."$2"."$3"."$4}' | sort | uniq -c | awk ' {print $2 "\t" $1 }'

##### view http traffic

   tc pdump -i eth0  port 80 -w -

##### get useful statistics from tcpdump (sort  by ip)

   tc pdump -nr capture.file | awk '{print }' | grep -oE '[0-9]{1,}.[0-9]{1,}.[0-9]{1,}.[0-9]{1,}' | sort | uniq -c | sort -n

##### Limit the rate of traffic to a particular address with tc.

   tc  qdisc add dev <dev> root handle 1: cbq avpkt 1000 bandwidth 100mbit;tc class add dev <dev> parent 1: classid 1:1 cbq rate 300kbit allot 1500 prio 5 bounded isolated;tc filter add dev <dev> parent 1: protocol ip prio 16 u32 match ip dst <ip> flowid 1:1

##### Realtime apache hits per second

   tc pflow -c port 80 | grep Host

##### show  tcp syn packets on all network interfaces

   tc pdump -i any -n tcp[13] == 2

##### kill ip connection

   tc pkill host <ip>

##### tcpdump -i eth1 -s0 -v -w /tmp/capture.pcap

   tc pdump -i eth1 -s0 -v -w /tmp/capture.pcap

##### tcpdump -i eth1 -s0 -v -w /tmp/capture_`date +%d_%m_%Y__%H_%I_%S`.pcap

   tc pdump -i eth1 -s0 -v -w /tmp/capture_`date +%d_%m_%Y__%H_%I_%S`.pcap

##### Show header HTTP with tcpdump

   tc pdump -s 1024 -l -A src 192.168.9.56 or dst 192.168.9.56

##### Get some useful output from tcpdump

   tc pdump -nvvX -s 768 src x.x.x.x and dst port 80

##### TCPDUMP & Save Capture to Remote Server

   tc pdump -i eth0 -w - | ssh savelocation.com -c arcfour,blowfish-cbc -C -p 50005 "cat - > /tmp/eth0.pcap"

##### Make "pcap" file

   tc pdump -i eth0 -s 65535 -w test_capture

##### see what traffic is mostly hitting you

   tc pdump -i eth0 -n  | head

##### Traceroute w/TCP to get through firewalls.

   tc ptraceroute www.google.com

##### Sniff ONLY POP3 authentication by intercepting the USER command

   tc pdump -i eth0 "tcp port pop3 and ip[40] = 85 and ip[41] = 83"  -s 1500 -n -w "sniff"

##### Make a quick network capture with tcpdump to a file - filename based on tcpdump arguments

   tc pdump -w "$(sed 's/-//gi; s/ /_/gi'<<<"-vvv -s0 -ieth1 -c10 icmp").pcap"

##### Convert a file from ISO-8859-1 (or whatever) to UTF-8 (or whatever)

   tc s -f 8859-1 -t utf /some/file

##### Show network throughput

   tc pdump -w - |pv -bert >/dev/null

##### Sniffing network to generate a pcap file in CLI mode on a remote host and open it via local Wireshark ( GUI ).

   tc pdump -v -i <INTERFACE> -s 0 -w /tmp/sniff.pcap port <PORT> # On the remote side

##### SMTP Analysis

   tc pdump -l -s0 -w - tcp dst port 25 | strings | grep -i 'MAIL FROM\|RCPT TO'

##### Capture data in ASCII. 1500 bytes

   tc pdump -ieth0 -n tcp port 80 -A -s1500

##### tcmdump check ping

   tc pdump -nni eth0 -e icmp[icmptype] == 8

##### Getting started with tcpdump

   tc pdump -nli eth0; tcpdump -nli eth0 src or dst w.x.y.z; tcpdump -nli eth0 port 80; tcpdump -nli eth0 proto udp

##### Output sound when your computer is downloading something

   tc pdump | aplay -c 2

##### Get Cisco network information

   tc pdump -nn -v -i eth0 -s 1500 -c 1 'ether[20:2] == 0x2000'

##### Trace and view network traffic

   tc pdump -A -s 0 port 80

##### tcpdump sniff pop3,imap,smtp and http

   tc pdump -i eth0 port http or port smtp or port imap or port pop3 -l -A | egrep -i 'pass=|pwd=|log=|login=|user=|username=|pw=|passw=|passwd=|password=|pass:|user:|userna me:|password:|login:|pass |user '

##### TCPDUMP & Save Capture to Remote Server w/ GZIP

   tc pdump -i eth0 -w - | ssh forge.remotehost.com -c arcfour,blowfish-cbc -C -p 50005 "cat - | gzip > /tmp/eth0.pcap.gz"

##### unbuffered tcpdump

   tc p(){ tcpdump -nUs0 -w- -iinterface $1|tcpdump -n${2-A}r- ;} usage: tcp '[primitives]' [X|XX]

##### Plaintext credentials sniffing with tcpdump and grep

   tc pdump port http or port ftp or port smtp or port imap or port pop3 -l -A | egrep -i 'pass=|pwd=|log=|login=|user=|username=|pw=|passw=|passwd=|password=|pass:|user:|username:|password:|login:|pass |user ' color=auto line-buffered -B20

##### tcpdump whole packets to file in ascii and hex with ip adresses instead of hostname

   tc pdump host <IP> -nXXv -s0 -w file.pcap

##### tcpdump top 10 talkers

   tc pdump -tnn -c 2000 -i eth0  | awk -F "." '{print $1"."$2"."$3"."$4}' | sort | uniq -c | sort -nr | awk ' $1 > 10 '

##### tcpdump from src to dst

   tc pdump src <srcIP>  and dst <dstIP> -w file.pcap

##### Read a tcpdump file and count SYN packets to port 80, Order column by destination.

   tc pdump -ntr NAME_OF_CAPTURED_FILE.pcap 'tcp[13] = 0x02 and dst port 80' | awk '{print $4}' | tr . ' ' | awk '{print $1"."$2"."$3"."$4}' | sort | uniq -c | awk ' {print $2 "\t" $1 }'

##### view http traffic

   tc pdump -i eth0  port 80 -w -

##### get useful statistics from tcpdump (sort  by ip)

   tc pdump -nr capture.file | awk '{print }' | grep -oE '[0-9]{1,}.[0-9]{1,}.[0-9]{1,}.[0-9]{1,}' | sort | uniq -c | sort -n

##### Limit the rate of traffic to a particular address with tc.

   tc  qdisc add dev <dev> root handle 1: cbq avpkt 1000 bandwidth 100mbit;tc class add dev <dev> parent 1: classid 1:1 cbq rate 300kbit allot 1500 prio 5 bounded isolated;tc filter add dev <dev> parent 1: protocol ip prio 16 u32 match ip dst <ip> flowid 1:1

##### Realtime apache hits per second

   tc pflow -c port 80 | grep Host

##### show  tcp syn packets on all network interfaces

   tc pdump -i any -n tcp[13] == 2

##### kill ip connection

   tc pkill host <ip>

##### tcpdump -i eth1 -s0 -v -w /tmp/capture.pcap

   tc pdump -i eth1 -s0 -v -w /tmp/capture.pcap

##### tcpdump -i eth1 -s0 -v -w /tmp/capture_`date +%d_%m_%Y__%H_%I_%S`.pcap

   tc pdump -i eth1 -s0 -v -w /tmp/capture_`date +%d_%m_%Y__%H_%I_%S`.pcap

##### Show header HTTP with tcpdump

   tc pdump -s 1024 -l -A src 192.168.9.56 or dst 192.168.9.56

##### Get some useful output from tcpdump

   tc pdump -nvvX -s 768 src x.x.x.x and dst port 80

##### TCPDUMP & Save Capture to Remote Server

   tc pdump -i eth0 -w - | ssh savelocation.com -c arcfour,blowfish-cbc -C -p 50005 "cat - > /tmp/eth0.pcap"

##### Make "pcap" file

   tc pdump -i eth0 -s 65535 -w test_capture

##### see what traffic is mostly hitting you

   tc pdump -i eth0 -n  | head

##### Traceroute w/TCP to get through firewalls.

   tc ptraceroute www.google.com
