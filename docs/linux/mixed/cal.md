# cal

##### Today's date on a yearly calendar...

   cal  -y | tr '\n' '|' | sed "s/^/ /;s/$/ /;s/ $(date +%e) / $(date +%e | sed 's/./#/g') /$(date +%m | sed s/^0//)" | tr '|' '\n'

##### Command line calculator

   cal c() { echo "scale=4; ${*//,/.}" | bc -l; }

##### Colored cal output

   cal  | sed -E "2,8s/(^|[^0-9])($(date +%e))( |$)/\1$(echo "\033[0;36m\2\033[0m")\3/g"

##### Today's date on a yearly calendar...

   cal  -y

##### Get the date for the last Saturday of a given month

   cal  04 2012 | awk 'NF <= 7 { print $7 }' | grep -v "^$" | tail -1

##### Displays a 3-Month Calendar

   cal  -3

##### prettier "cal" command

   cal  |grep -A7 -B7 color=auto $(date +%d)

##### Show some trivia related to the current date

   cal endar

##### Show this month's calendar, with today's date highlighted

   cal  | grep before-context 6 after-context 6 color -e " $(date +%e)" -e "^$(date +%e)"

##### Print a monthly calendar with today's date highlighted

   cal  | grep -E color "\b`date +%e`\b|$"

##### Get the date for the last Saturday of a given month

   cal  04 2012 | awk '{ $7 && X=$7 } END { print X }'

##### Command line calculator

   cal c() { python -c "from math import *; print $1"; }

##### Command line calculator

   cal c() { bc <<< $*; }

##### command line calculator

   cal c(){ awk "BEGIN{ print $* }" ;}

##### Show a calendar

   cal  [[month] year]

##### prettier

   cal  | grep -C7 color=auto $(date +%d)

##### floating point shell calculator

   cal c() { awk 'BEGIN { OFMT="%f"; print '"$*"'; exit}'; }

##### Returns last day of current month

   cal  | egrep -e '^ [0-9]|^[0-9]' | tr '\n' ' ' | awk '{print $NF}'

##### synchronicity

   cal  09 1752

##### prettier "cal" command

   cal  |grep -A7 -B7 color=auto $(date +%d)

##### Show some trivia related to the current date

   cal endar

##### Show this month's calendar, with today's date highlighted

   cal  | grep before-context 6 after-context 6 color -e " $(date +%e)" -e "^$(date +%e)"

##### Print a monthly calendar with today's date highlighted

   cal  | grep -E color "\b`date +%e`\b|$"

##### Get the date for the last Saturday of a given month

   cal  04 2012 | awk '{ $7 && X=$7 } END { print X }'

##### Command line calculator

   cal c() { python -c "from math import *; print $1"; }

##### Command line calculator

   cal c() { bc <<< $*; }

##### command line calculator

   cal c(){ awk "BEGIN{ print $* }" ;}

##### Show a calendar

   cal  [[month] year]

##### prettier

   cal  | grep -C7 color=auto $(date +%d)

##### floating point shell calculator

   cal c() { awk 'BEGIN { OFMT="%f"; print '"$*"'; exit}'; }

##### Returns last day of current month

   cal  | egrep -e '^ [0-9]|^[0-9]' | tr '\n' ' ' | awk '{print $NF}'

##### synchronicity

   cal  09 1752
