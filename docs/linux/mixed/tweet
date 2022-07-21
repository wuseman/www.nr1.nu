# tweet

##### another tweet function

   tweet  () { curl -u UserName -d status="$*" http://twitter.com/statuses/update.xml; }

##### Update twitter with curl

   tweet (){ update=$(echo $*); [ ${#update} -lt 141 ] && curl -su user:pass -d source=curl -d status="$update" http://twitter.com/statuses/update.xml ->/dev/null || echo $(( ${#update} - 140 )) too many characters >&2; }

##### Update twitter via curl as Function

   tweet (){ curl -u "$1" -d status="$2" "http://twitter.com/statuses/update.xml"; }

##### another tweet function

   tweet  () { curl -u UserName -d status="$*" http://twitter.com/statuses/update.xml; }

##### Update twitter with curl

   tweet (){ update=$(echo $*); [ ${#update} -lt 141 ] && curl -su user:pass -d source=curl -d status="$update" http://twitter.com/statuses/update.xml ->/dev/null || echo $(( ${#update} - 140 )) too many characters >&2; }

##### Update twitter via curl as Function

   tweet (){ curl -u "$1" -d status="$2" "http://twitter.com/statuses/update.xml"; }
