# ar

##### Tricky implementation of two-dimensional array in Bash.

   ar r[i*100+j]="whatever"

##### Download file with multiple simultaneous connections

   ar ia2c -s 4 http://my/url

##### arp-scan -l without duplicates

   ar p-scan -l -g -interface (nic)

##### Pulseaudio: play line-in through your speakers

   ar ecord|aplay

##### Download file with multiple simultaneous connections

   ar ia2c -x 4 http://my/url

##### output your microphone to a remote computer's speaker

   ar ecord -f dat | ssh -C user@host aplay -f dat

##### Determine MAC address of remote host when you know its IP address

   ar ping 192.168.1.2

##### extract content of a Debian package

   ar  -x package.deb

##### add static arp entry to default gateway, arp poison protection

   ar p -s $(route -n | awk '/^0.0.0.0/ {print $2}') \ $(arp -n | grep `route -n | awk '/^0.0.0.0/ {print $2}'`| awk '{print $3}')

##### Check if system is 32bit or 64bit

   ar ch

##### Spy audio, it only records if detects a sound or noise

   ar ecord -q -f cd -d 1 recvol.wav;sox recvol.wav -n stat 2>&1|grep RMS|grep amplitude|cut -d"." -f2|cut -c 1-2>recvol;echo $((`cat recvol`+1))>recvol;rec -t wav - silence 1 0.1 `cat recvol` -1 1.0 `cat recvol`%|lame -s 44.1 -a -v - >record.mp3

##### Throttle download speed (at speed x )

   ar ia2c max-download-limit=100K file.metalink

##### Scan for [samba|lanman] NetBIOS names and ip addresses in LAN by ARP.

   ar p-scan -I eth0 -l | perl -ne '/((\d{1,3}\.){3}\d{1,3})/ and $ip=$1 and $_=`nmblookup -A $ip` and /([[:alnum:]-]+)\s+<00>[^<]+<ACTIVE>/m and printf "%15s  %s\n",$ip,$1'

##### Less a grep result, going directly to the first match in the first file

   ar gv=("$@"); rest=${argv[@]:1}; less -JMN +"/$1" `grep -l $1 $rest`

##### Record microphone input and output to date stamped mp3 file

   ar ecord -q -f cd -r 44100 -c2 -t raw | lame -S -x -h -b 128 - `date +%Y%m%d%H%M`.mp3

##### Realtime delay effect

   ar ecord -D plughw:1,0 | play -d echos 0.3 0.2 700 0.25 800 0.3

##### List wireless clients connected to an access point

   ar p -i <interface>

##### Name a backup/archive file based on current date and time

   ar chivefile=filename-$(date +%Y%m%d-%H%M).tar.gz

##### Tricky implementation of two-dimensional array in Bash.

   ar r[i*100+j]="whatever"

##### Download file with multiple simultaneous connections

   ar ia2c -s 4 http://my/url

##### Download file with multiple simultaneous connections

   ar ia2c -x 4 http://my/url

##### output your microphone to a remote computer's speaker

   ar ecord -f dat | ssh -C user@host aplay -f dat

##### Determine MAC address of remote host when you know its IP address

   ar ping 192.168.1.2

##### extract content of a Debian package

   ar  -x package.deb

##### add static arp entry to default gateway, arp poison protection

   ar p -s $(route -n | awk '/^0.0.0.0/ {print $2}') \ $(arp -n | grep `route -n | awk '/^0.0.0.0/ {print $2}'`| awk '{print $3}')

##### Check if system is 32bit or 64bit

   ar ch

##### Spy audio, it only records if detects a sound or noise

   ar ecord -q -f cd -d 1 recvol.wav;sox recvol.wav -n stat 2>&1|grep RMS|grep amplitude|cut -d"." -f2|cut -c 1-2>recvol;echo $((`cat recvol`+1))>recvol;rec -t wav - silence 1 0.1 `cat recvol` -1 1.0 `cat recvol`%|lame -s 44.1 -a -v - >record.mp3

##### Throttle download speed (at speed x )

   ar ia2c max-download-limit=100K file.metalink

##### Scan for [samba|lanman] NetBIOS names and ip addresses in LAN by ARP.

   ar p-scan -I eth0 -l | perl -ne '/((\d{1,3}\.){3}\d{1,3})/ and $ip=$1 and $_=`nmblookup -A $ip` and /([[:alnum:]-]+)\s+<00>[^<]+<ACTIVE>/m and printf "%15s  %s\n",$ip,$1'

##### Less a grep result, going directly to the first match in the first file

   ar gv=("$@"); rest=${argv[@]:1}; less -JMN +"/$1" `grep -l $1 $rest`

##### Record microphone input and output to date stamped mp3 file

   ar ecord -q -f cd -r 44100 -c2 -t raw | lame -S -x -h -b 128 - `date +%Y%m%d%H%M`.mp3

##### Realtime delay effect

   ar ecord -D plughw:1,0 | play -d echos 0.3 0.2 700 0.25 800 0.3

##### List wireless clients connected to an access point

   ar p -i <interface>

##### Name a backup/archive file based on current date and time

   ar chivefile=filename-$(date +%Y%m%d-%H%M).tar.gz
