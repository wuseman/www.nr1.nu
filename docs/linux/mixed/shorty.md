# shorty

##### url shortner using google's shortner api

   shorty  () {   curl -s https://www.googleapis.com/urlshortener/v1/url\?key\=API_KEY  -H 'Content-Type: application/json' -d '{"longUrl": "'"$1"'"}' | egrep -o 'http://goo.gl/[^"]*' }

##### url shortner using google's shortner api

   shorty  () {   curl -s https://www.googleapis.com/urlshortener/v1/url\?key\=API_KEY  -H 'Content-Type: application/json' -d '{"longUrl": "'"$1"'"}' | egrep -o 'http://goo.gl/[^"]*' }
