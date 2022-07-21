# finger

##### find out public ip address by using any host that have 'efingerd -n'

   finger  @www.linuxbanks.cn | grep -oE '([[:digit:]]{1,3}\.){3}[[:digit:]]{1,3}' | head -n1

##### Get user's full name in Mac OS X

   finger  `whoami` | awk -F: '{ print $3 }' | head -n1 | sed 's/^ //'

##### Get user's full name in Mac OS X

   finger  $(whoami) | egrep -o 'Name: [a-zA-Z0-9 ]{1,}' | cut -d ':' -f 2 | xargs echo

##### Get user's full name in Mac OS X

   finger  $(whoami) | perl -ne '/Name: ([a-zA-Z0-9 ]{1,})/ && print "$1\n"'

##### Prints out, what the users name, notifyed in the gecos field, is

   finger  | grep $(whoami) | head -n1 | awk '{print $2 " " $3}'

##### Get user's full name in Mac OS X

   finger  `whoami` | awk -F: '{ print $3 }' | head -n1 | sed 's/^ //'

##### Get user's full name in Mac OS X

   finger  $(whoami) | egrep -o 'Name: [a-zA-Z0-9 ]{1,}' | cut -d ':' -f 2 | xargs echo

##### Get user's full name in Mac OS X

   finger  $(whoami) | perl -ne '/Name: ([a-zA-Z0-9 ]{1,})/ && print "$1\n"'
