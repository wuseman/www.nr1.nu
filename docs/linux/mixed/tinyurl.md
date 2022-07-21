# tinyurl

##### shorten one URL with an alias that you choose; type "tinyurl URL ALIAS"

   tinyurl  () { URL="$1";ALIAS="$2"; curl -s 'http://tinyurl.com/create.php?source=indexpage&url='"$URL"'&submit=Make+TinyURL%21&alias='"$ALIAS" >/dev/null ;}
