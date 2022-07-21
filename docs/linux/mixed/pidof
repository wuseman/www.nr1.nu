# pidof

##### exit if another instance is running

   pidof  -x -o $$ ${0##*/} && exit

##### Count httpd processes

   pidof  httpd | wc -w

##### Get a process's pid by supplying its name

   pidof  () { ps acx | egrep -i $@ | awk '{print $1}'; }

##### list process ids for given program

   pidof  httpd

##### See what apache is doing without restarting it in debug mode

   pidof  httpd | sed 's/ / -p /g' | xargs strace -fp

##### exit if another instance is running

   pidof  -x -o $$ ${0##*/} && exit

##### Get a process's pid by supplying its name

   pidof  () { ps acx | egrep -i $@ | awk '{print $1}'; }

##### list process ids for given program

   pidof  httpd

##### See what apache is doing without restarting it in debug mode

   pidof  httpd | sed 's/ / -p /g' | xargs strace -fp
