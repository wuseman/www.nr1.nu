# tshark

##### read ajp13 packet contents on terminal using tshark 1.4.15

   tshark  -r *.eth -S -R "ajp13" -d tcp.port==9009,ajp13  -s 0 -l -V | awk '/Apache JServ/ {p=1} /^ *$/ {p=0;printf "\n"} (p){printf "%s\n", $0} /^(Frame|Internet Pro|Transmission Control)/ {print $0}'

##### Extract infomation form pcap

   tshark  -r data.pcap -zio,phs

##### Print all connections of a source IP address in pcap

   tshark  -r data.pcap -R "ip.src==192.168.1.2" -T fields -e "ip.dst" |sort |uniq -c

##### Print out buddy name (aim) which has been capture in pcap

   tshark  -r data.pcap -R "ip.addr==192.168.1.2 && ip.addr==64.12.24.50 && aim" -d tcp.port==443,aim -T fields -e "aim.buddyname" |sort |uniq -c

##### Tshark to Generate Top Talkers by #TCP conv started per second.

   tshark  -qr [cap] -z conv,tcp | awk '{printf("%s:%s:%s\n",$1,$3,$10)}' | awk -F: '{printf("%s %s %s\n",$1,$3,substr($5,1,length($5)-10))}' | sort | uniq -c | sort -nr

##### capture mysql queries sent to server

   tshark  -i any -T fields -R mysql.query -e mysql.query

##### trace http requests with tshark

   tshark  -i en1 -z proto,colinfo,http.request.uri,http.request.uri -R http.request.uri

##### capture mysql queries sent to server

   tshark  -i any -T fields -R mysql.query -e mysql.query

##### trace http requests with tshark

   tshark  -i en1 -z proto,colinfo,http.request.uri,http.request.uri -R http.request.uri
