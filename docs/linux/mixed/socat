# socat

##### Get readline support for the sqlplus command.

   socat  READLINE EXEC:'sqlplus',pty,setsid,ctty

##### Tail a log-file over the network

   socat  -u FILE:/var/log/syslog,ignoreeof TCP4-LISTEN:12345,fork,reuseaddr

##### Create a single-use TCP proxy with debug output to stderr

   socat  -v tcp4-l:<port> tcp4:<host>:<port>

##### Serial console to a Vmware VM

   socat  unix-connect:/tmp/socket stdio,echo=0,raw

##### make a central proxy access from where it's high speed link available.

   socat  TCP4-LISTEN:3128,reuseaddr,fork TCP6:[xxxx:xxxx::xxxx]:3128

##### Get readline support for the sqlplus command.

   socat  READLINE,history=$HOME/.sqlplus_history EXEC:'sqlplus64\ USER\/PASS@HOST\:PORT\/SID',pty,setsid,ctty

##### UDP over SSH

   socat  udp-listen:1611 system:'ssh remoteserver "socat stdio udp-connect:remotetarget:161"'

##### Create a tunnel from a remote server to the local machine using a specific source port

   socat  TCP-LISTEN:locport,fork TCP:XXX.XXX.XXX.XXX:YYY,sourceport=srcport

##### Linux socket-to-socket tunnel (MySQL example)

   socat  "UNIX-LISTEN:/tmp/mysqld.temp.sock,reuseaddr,fork" EXEC:"ssh username@remoteserver.com socat STDIO UNIX-CONNECT\:/var/run/mysqld/mysqld.sock"

##### Tail a log-file over the network

   socat  -u FILE:/var/log/syslog,ignoreeof TCP4-LISTEN:12345,fork,reuseaddr

##### Create a single-use TCP proxy with debug output to stderr

   socat  -v tcp4-l:<port> tcp4:<host>:<port>

##### Serial console to a Vmware VM

   socat  unix-connect:/tmp/socket stdio,echo=0,raw

##### make a central proxy access from where it's high speed link available.

   socat  TCP4-LISTEN:3128,reuseaddr,fork TCP6:[xxxx:xxxx::xxxx]:3128

##### Get readline support for the sqlplus command.

   socat  READLINE,history=$HOME/.sqlplus_history EXEC:'sqlplus64\ USER\/PASS@HOST\:PORT\/SID',pty,setsid,ctty
