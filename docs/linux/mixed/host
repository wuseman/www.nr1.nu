# host

##### Dns zone transfer

   host  -la domain.com

##### Get just the IP for a hostname

   host  foo.com|grep " has address "|cut -d" " -f4

##### Get just the IP for a hostname

   host  google.com|awk '{print $NF}'

##### return external ip

   host  -t a dartsclink.com | sed 's/.*has address //'

##### Finding hostname and the IP Address of your machine

   host  `hostname`

##### IP address of current host

   host name -i

##### Display the linux host infomation.

   host info.sh

##### Get all ip address for the host

   host name -I

##### Check reverse DNS

   host  {checkIp or hostname} [dns server]

##### Test a serial connection

   host  A: cat /proc/dev/ttyS0    host B: echo hello > /dev/ttyS0

##### detect the fastest ldap server on a intranet

   host  -t srv _ldap._tcp  | sed "s/.*[ ]\([^ ]*\)[.]$/\1/g" | xargs -i ping -c 1 {} | grep -E "(statistics|avg)" | sed "s/^- \([^ ]*\).*/,\1:/g"|tr -d "\n" | tr "," "\n" | sed "1d;s|^\([^:]*\).*=[^/]*/\([^/]*\).*|\2\t\1|g" |sort -n

##### host - DNS lookup utility

   host  google.com

##### Get your external IP address if your machine has a DNS entry

   host  $HOSTNAME|cut -d' ' -f4

##### Get MX records for a domain

   host  -t mx foo.org

##### grab all of google IPv4 network blocks

   host  -t TXT _netblocks.google.com 8.8.8.8

##### Get the IP address

   host name -I

##### Read just the IP address of a device

   host name -I | awk '{print $1}'

##### Grab the first 3 octets of your ip addresses

   host name -i | tr " " "\n" | grep -v "::\|^169.254\|^127.0.0.1" | cut -d"." -f1-3

##### url to ip

   host  -t a www.google.com

##### resolve hostname to IP our vice versa with less output

   host result=$(host -t A www.example.com); echo "${hostresult##* }"

##### Get IP address from domain

   host  example.com | head -1 | awk '{print $4}'

##### Get the IP address of a machine. Just the IP, no junk.

   host  `hostname` | rev | cut -d' ' f1 | rev

##### Get all ip address for the host

   host name -I

##### Check reverse DNS

   host  {checkIp or hostname} [dns server]

##### Test a serial connection

   host  A: cat /proc/dev/ttyS0    host B: echo hello > /dev/ttyS0

##### detect the fastest ldap server on a intranet

   host  -t srv _ldap._tcp  | sed "s/.*[ ]\([^ ]*\)[.]$/\1/g" | xargs -i ping -c 1 {} | grep -E "(statistics|avg)" | sed "s/^- \([^ ]*\).*/,\1:/g"|tr -d "\n" | tr "," "\n" | sed "1d;s|^\([^:]*\).*=[^/]*/\([^/]*\).*|\2\t\1|g" |sort -n

##### host - DNS lookup utility

   host  google.com

##### Get your external IP address if your machine has a DNS entry

   host  $HOSTNAME|cut -d' ' -f4

##### Get MX records for a domain

   host  -t mx foo.org

##### grab all of google IPv4 network blocks

   host  -t TXT _netblocks.google.com 8.8.8.8

##### Get the IP address

   host name -I

##### Read just the IP address of a device

   host name -I | awk '{print $1}'

##### Grab the first 3 octets of your ip addresses

   host name -i | tr " " "\n" | grep -v "::\|^169.254\|^127.0.0.1" | cut -d"." -f1-3

##### url to ip

   host  -t a www.google.com

##### resolve hostname to IP our vice versa with less output

   host result=$(host -t A www.example.com); echo "${hostresult##* }"

##### Get IP address from domain

   host  example.com | head -1 | awk '{print $4}'

##### Get the IP address of a machine. Just the IP, no junk.

   host  `hostname` | rev | cut -d' ' f1 | rev
