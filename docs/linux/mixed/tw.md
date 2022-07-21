# tw

##### Serve current directory tree at http://$HOSTNAME:8080/

   tw istd -no web

##### translate what is in the clipboard in english and write it to the terminal

   tw  translate.google.com.de-en `xsel`

##### another tweet function

   tw eet () { curl -u UserName -d status="$*" http://twitter.com/statuses/update.xml; }

##### Update twitter with curl

   tw eet(){ update=$(echo $*); [ ${#update} -lt 141 ] && curl -su user:pass -d source=curl -d status="$update" http://twitter.com/statuses/update.xml ->/dev/null || echo $(( ${#update} - 140 )) too many characters >&2; }

##### Serve current directory tree at http://$HOSTNAME:8080/

   tw istd -n web path .

##### Update twitter via curl as Function

   tw eet(){ curl -u "$1" -d status="$2" "http://twitter.com/statuses/update.xml"; }

##### Tweet your status from the command line

   tw url /1/statuses/update.json -d status="$1"

##### another tweet function

   tw eet () { curl -u UserName -d status="$*" http://twitter.com/statuses/update.xml; }

##### Update twitter with curl

   tw eet(){ update=$(echo $*); [ ${#update} -lt 141 ] && curl -su user:pass -d source=curl -d status="$update" http://twitter.com/statuses/update.xml ->/dev/null || echo $(( ${#update} - 140 )) too many characters >&2; }

##### Serve current directory tree at http://$HOSTNAME:8080/

   tw istd -n web path .

##### Update twitter via curl as Function

   tw eet(){ curl -u "$1" -d status="$2" "http://twitter.com/statuses/update.xml"; }
