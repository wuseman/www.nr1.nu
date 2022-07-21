# shout

##### Create an easy to pronounce shortened URL from CLI

   shout  () { curl -s "http://shoutkey.com/new?url=$1" | sed -n 's/\<h1\>/\&/p' | sed 's/<[^>]*>//g;/</N;//b' ;}

##### Create an easy to pronounce shortened URL from CLI

   shout () { curl -s "http://shoutkey.com/new?url=${1}" | sed -n "/<h1>/s/.*href=\"\([^\"]*\)\".*/\1/p" ;}

##### Create an easy to pronounce shortened URL from CLI

   shout  () { curl -s "http://shoutkey.com/new?url=$1" | sed -n 's/\<h1\>/\&/p' | sed 's/<[^>]*>//g;/</N;//b' ;}

##### Create an easy to pronounce shortened URL from CLI

   shout () { curl -s "http://shoutkey.com/new?url=${1}" | sed -n "/<h1>/s/.*href=\"\([^\"]*\)\".*/\1/p" ;}
