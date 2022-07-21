# nohup

##### to make any command run even if sytem gets shut down

   nohup  df -k | sort -rn 12

##### Making scripts runs on backgourd and logging output

   nohup  exemplo.sh &

##### forking a process from gnome-terminal detached from the terminal.

   nohup  gnome-open .  0</dev/null 1>/dev/null 2>/dev/null&

##### Runs a command without hangups.

   nohup  <command> &

##### Silently Execute a Shell Script that runs in the background and won't die on HUP/logout

   nohup  /bin/sh myscript.sh 1>&2 &>/dev/null 1>&2 &>/dev/null&

##### Running VirtualBox as headless

   nohup  VBoxHeadless -p 3052 -startvm ServidorProducao &

##### nautilus

   nohup  nautilus &

##### Detach a process from the current shell

   nohup  ping -i1 www.google.com &

##### nohup  that doesn't generate nohup.out

   nohup  <command> 2> /dev/null > /dev/null &

##### invoke MATLAB functions from command line

   nohup  matlab -nosplash -nodesktop -nodisplay -nojvm -logfile output.log -r "function(0)" >output &

##### Making scripts runs on backgourd and logging output

   nohup  bash example.sh 2>&1 | tee -i i-like-log-files.log &

##### Periodically run a command without hangups, and send the output to your e-mail

   nohup  bash -c "while true; do ps -x | mail pascalv@mmmmail.com; sleep 3600; done" | mail pascalv@mmmmail.com &

##### Run nohup background script background

   nohup  some_command/script.sh > /dev/null 2>&1&

##### Send murmurd log lines to syslog

   nohup   tail /var/log/murmur.log | perl -ne '/^<.>[0-9:. -]{24}(\d+ => )?(.*)/; $pid=`pgrep -u murmur murmurd | head`; chomp $pid; `logger -p info -t "murmurd[$pid]" \\"$2\\"`;' &

##### Nohup

   nohup  ./my-shell-script.sh &

##### Running qbittorrent-nox without killing it when the terminal closses.

   nohup  qbittorrent-nox & disown

##### Dump /dev/ttyS0 on background automatically from startup

   nohup  cat  /dev/ttyS0 | tee -a llamadas.db&

##### Runs a command without hangups.

   nohup  <command> &

##### Silently Execute a Shell Script that runs in the background and won't die on HUP/logout

   nohup  /bin/sh myscript.sh 1>&2 &>/dev/null 1>&2 &>/dev/null&

##### Detach a process from the current shell

   nohup  ping -i1 www.google.com &

##### nohup  that doesn't generate nohup.out

   nohup  <command> 2> /dev/null > /dev/null &

##### invoke MATLAB functions from command line

   nohup  matlab -nosplash -nodesktop -nodisplay -nojvm -logfile output.log -r "function(0)" >output &

##### Making scripts runs on backgourd and logging output

   nohup  bash example.sh 2>&1 | tee -i i-like-log-files.log &

##### Periodically run a command without hangups, and send the output to your e-mail

   nohup  bash -c "while true; do ps -x | mail pascalv@mmmmail.com; sleep 3600; done" | mail pascalv@mmmmail.com &

##### Run nohup background script background

   nohup  some_command/script.sh > /dev/null 2>&1&

##### Send murmurd log lines to syslog

   nohup   tail /var/log/murmur.log | perl -ne '/^<.>[0-9:. -]{24}(\d+ => )?(.*)/; $pid=`pgrep -u murmur murmurd | head`; chomp $pid; `logger -p info -t "murmurd[$pid]" \\"$2\\"`;' &
