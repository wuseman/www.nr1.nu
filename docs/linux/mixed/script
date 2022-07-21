# script

##### Broadcast your shell thru ports 5000, 5001, 5002 ...

   script  -qf | tee >(nc -kl 5000) >(nc -kl 5001) >(nc -kl 5002)

##### Broadcast your shell thru ports 5000, 5001, 5002 ...

   script  -qf | tee >(nc -kl 5000) >(nc -kl 5001) >(nc -kl 5002)

##### Broadcast your shell thru ports 5000, 5001, 5002 ...

   script  -qf | tee >(nc -l -p 5000)

##### Linux record terminal session and replay

   script  -t 2> timing.txt -a session.txt ; Run some commands here; exit; scriptreplay timing.txt session.txt

##### Get absolut path to your bash-script

   script _path=$(cd $(dirname $0);pwd)

##### Terminal redirection

   script  -f /dev/pts/3

##### Shell recorder with replay

   script  -t /tmp/mylog.out 2>/tmp/mylog.time; <do your work>; <CTRL-D>; scriptreplay /tmp/mylog.time /tmp/mylog.out

##### Script Terminal Session

   script  -f /tmp/foo; tail -f /tmp/foo

##### Create Bash script to change modification time of files

   script Name="reorder_files.sh"; echo -e '#!/bin/sh\n' > "${scriptName}"; cat files.txt | while read file; do echo "touch ${file}; sleep 0.5;" >> "${scriptName}"; done; chmod +x "${scriptName}";

##### Broadcast your shell thru UDP on port 5000

   script  -qf >(nc -ub 192.168.1.255 5000)

##### Terminal redirection

   script  /dev/null | tee /dev/pts/3

##### make a log of a terminal session

   script 

##### Broadcast your shell thru ports 5000, 5001, 5002 ...

   script  -qf | tee >(nc -kl 5000) >(nc -kl 5001) >(nc -kl 5002)

##### Get absolut path to your bash-script

   script _path=$(cd $(dirname $0);pwd)

##### Terminal redirection

   script  -f /dev/pts/3

##### Shell recorder with replay

   script  -t /tmp/mylog.out 2>/tmp/mylog.time; <do your work>; <CTRL-D>; scriptreplay /tmp/mylog.time /tmp/mylog.out

##### Script Terminal Session

   script  -f /tmp/foo; tail -f /tmp/foo

##### Create Bash script to change modification time of files

   script Name="reorder_files.sh"; echo -e '#!/bin/sh\n' > "${scriptName}"; cat files.txt | while read file; do echo "touch ${file}; sleep 0.5;" >> "${scriptName}"; done; chmod +x "${scriptName}";

##### Broadcast your shell thru UDP on port 5000

   script  -qf >(nc -ub 192.168.1.255 5000)

##### Terminal redirection

   script  /dev/null | tee /dev/pts/3

##### make a log of a terminal session

   script 
