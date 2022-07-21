# nslookup

##### Check reverse DNS

   nslookup  {ip}

##### Query Wikipedia via console over DNS

   nslookup  -q=txt <topic>.wp.dg.cx

##### Get the ip registered to a domain on OpenWRT

   nslookup  commandlinefu.com|sed 's/[^0-9. ]//g'|tail -n 1|awk -F " " '{print $2}'

##### Get IP address from domain

   nslookup  www.example.com | tail -2 | head -1 | awk '{print $2}'

##### Check version of DNS Server

   nslookup  -q=txt -class=CHAOS version.bind NS.PHX5.NEARLYFREESPEECH.NET

##### Query Wikipedia via console over DNS

   nslookup  -q=txt <topic>.wp.dg.cx

##### Get the ip registered to a domain on OpenWRT

   nslookup  commandlinefu.com|sed 's/[^0-9. ]//g'|tail -n 1|awk -F " " '{print $2}'

##### Get IP address from domain

   nslookup  www.example.com | tail -2 | head -1 | awk '{print $2}'

##### Check version of DNS Server

   nslookup  -q=txt -class=CHAOS version.bind NS.PHX5.NEARLYFREESPEECH.NET
