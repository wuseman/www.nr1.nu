# uniq

netstat -alpn | grep :80 | awk '{print $4}' |awk -F: '{print $(NF-1)}' |sort | 

   uniq  -c | sort -n

##### Convert uniq output to json

   uniq  -c | sed -r 's/([0-9]+)\s(.*)/"\2": \1,/;$s/,/\n}/;1i{'

##### Convert uniq output to json

   uniq  -c | sed -r 's/([0-9]+)\s(.*)/"\2": \1,/;$s/,/\n}/;1i{'
