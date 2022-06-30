# tshark

###  Extract post only

```sh
tshark -Y "http.request.method == POST" -T fields -e text -r sagemcom_update.pcapng
```
```sh
tshark http.user_agent matches "^.{1,9}$"                          
```
###  Sniff HTTP Requests
```sh
tshark tcp port 80 and (((ip[2:2] - ((ip[0]&0xf)<<2)) - ((tcp[12]&0xf0)>>2)) != 0)' -R 'http.request.method == "GET" || http.request.method == "HEAD"
```
###  Log HTTP Request / Receive Headers
```sh
tshark tcp port 80 or tcp port 443 -V -R "http.request || http.response"
```
###  Using packet filters
```sh
tshark -r network.pcap “http.request.method == POST and http.file_data contains password"
```
###  Using packet filters
```sh
tshark -nr sagemcom_update.pcapng http.request.method == POST and http.file_data contains guest
```
###  Grep all post and get
```sh
http.request.method == GET or http.request.method == POST
```
###  Capture only HTTP GET and POST packets
```sh
tcpdump -s 0 -A -vv 'tcp[((tcp[12:1] & 0xf0) >> 2):4] = 0x47455420'
```
### Extract HTTP Request URL's
```sh
tcpdump -s 0 -v -n -l | egrep -i "POST /|GET /|Host:"                                                                          
```
###  Extract HTTP Passwords in POST Requests
```sh
tcpdump -s 0 -A -n -l | egrep -i "POST /|pwd=|passwd=|password=|Host:"
```
### Good output
```sh
tcpdump -r AAA.pcap -s 0 -v -n -l -nnnn
tshark -i enp0s25  -Y 'http.request.method == "POST" and http.file_data'
```
### Resources

https://hackertarget.com/tcpdump-examples/
