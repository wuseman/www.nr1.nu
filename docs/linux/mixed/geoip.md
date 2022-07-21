# geoip

##### geoip information

   geoip lookup www.commandlinefu.com

##### Provides external IP, Country and City in a formated manner.

   geoip  () {  curl -s "http://www.geoiptool.com/?IP=$1" | html2text | egrep color 'City:|IP Address:|Country:' }

##### Geolocate a given IP address

   geoip () { lynx -dump "http://api.hostip.info/get_html.php?ip=$1&position=true"; }

##### geoip information

   geoip () { wget -qO - http://freegeoip.net/xml/$1 | sed '3,12!d;s/<//g;s/>/: /g;s/\/.*//g' ; }

##### geoip information

   geoip () { lynx -dump "http://www.geoiptool.com/en/?IP=$1" | sed -n '/Host Name/,/Postal code/p' ; }

##### geoip lookup

   geoip (){curl -s "http://www.geody.com/geoip.php?ip=${1}" | sed '/^IP:/!d;s/<[^>][^>]*>//g' ;}

##### Geolocate a given IP address

   geoip lookup <ipadress>

##### geoip lookup

   geoip (){curl -s "http://www.geody.com/geoip.php?ip=${1}" | sed '/^IP:/!d;s/<[^>][^>]*>//g' ;}

##### Geolocate a given IP address

   geoip lookup <ipadress>
