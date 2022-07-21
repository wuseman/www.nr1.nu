# uptime

##### Uptime in minute

   uptime  | awk -F ',' ' {print $1" "$2}'|awk ' {print $3" "$4" "$5}' | sed '1,$s/:/ /' | awk ' {if ($4 =="user") print $1*60 + $2;else if ($2=="mins") print $1;else print $1*24*60 + $2*60 + $3}'

##### how long system has been running

   uptime 

##### Uptime in minute

   uptime  | awk -F ',' ' {print $1} ' | awk ' {print $3} ' | awk -F ':' ' {hrs=$1; min=$2; print hrs*60 + min} '

##### Display only the actual uptime value

   uptime  | cut -d "," -f 1 | cut -d " " -f 4-

##### Uptime in minute

   uptime  | awk -F ',' ' {print $1} ' | awk ' {print $3} ' | awk -F ':' ' {hrs=$1; min=$2; print hrs*60 + min} '

##### Display only the actual uptime value

   uptime  | cut -d "," -f 1 | cut -d " " -f 4-
