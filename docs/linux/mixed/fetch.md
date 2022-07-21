# fetch

##### Get your external IP address

   fetch  -q -o - http://ipchicken.com | egrep -o '([[:digit:]]{1,3}\.){3}[[:digit:]]{1,3}'

##### Start delivery of mail queued on a secondary mail server.

   fetch mail -p etrn fetchdomains yourdomain.example.org secondary-server.example.org
