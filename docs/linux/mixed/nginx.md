# nginx

##### Prepend text to stdout of running job

   nginx  2>&1 | awk '{print "[NGINX] " $0}' &
