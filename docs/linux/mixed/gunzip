# gunzip

##### Quickly find a count of how many times invalid users have attempted to access your system

   gunzip  -c /var/log/auth.log.*.gz | cat - /var/log/auth.log /var/log/auth.log.0 | grep "Invalid user" | awk '{print $8;}' | sort | uniq -c | less

##### Keep gz file after uncompressing

   gunzip  -c x.txt.gz >x.txt

##### Extract tar.gz in a single command

   gunzip  < foo.tar.gz | tar xvf -

##### Quickly find a count of how many times invalid users have attempted to access your system

   gunzip  -c /var/log/auth.log.*.gz | cat - /var/log/auth.log /var/log/auth.log.0 | grep "Invalid user" | awk '{print $8;}' | sort | uniq -c | less
