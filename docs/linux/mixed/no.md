# no

##### to make any command run even if sytem gets shut down

   no hup df -k | sort -rn 12

##### To generate the list of dates using bash shell

   no w=`date +"%Y/%m/%d" -d "04/02/2005"` ; end=`date +"%Y/%m/%d" -d "07/31/2005"`; while [ "$now" != "$end" ] ; do now=`date +"%Y/%m/%d" -d "$now + 1 day"`;  echo "$now"; done

##### Making scripts runs on backgourd and logging output

   no hup exemplo.sh &

##### Nofity Message in Ubuntu

   no tify-send -i /usr/share/pixmaps/gnome-irc.png "Title" \ "This is a desktop notification commandlinefu."

##### forking a process from gnome-terminal detached from the terminal.

   no hup gnome-open .  0</dev/null 1>/dev/null 2>/dev/null&

##### Runs a command without hangups.

   no hup <command> &

##### Silently Execute a Shell Script that runs in the background and won't die on HUP/logout

   no hup /bin/sh myscript.sh 1>&2 &>/dev/null 1>&2 &>/dev/null&

##### Running VirtualBox as headless

   no hup VBoxHeadless -p 3052 -startvm ServidorProducao &

##### Important 'default VLAN' command, for Foundry (Brocade) RX and MLX BigIron L3 (routers & switches)

   no  untag

##### run command with opposite return code

   no t () { "$@" && return 1 || return 0; }

##### nautilus

   no hup nautilus &

##### List path of binaries

   no t necessarily better, but many...!

##### Show a notify popup in Gnome that expires in specified time and does not leave an icon in notifications tray

   no tify-send hint=int:transient:1 -u low -t 100 "Command" "Finished"

##### Notify me when users log in

   no tifyme -C `cat /etc/passwd | cut -d: -f1`

##### prevent large files from being cached in memory (backups!)

   no cache <I/O-heavy-command>

##### pipe output to notify-send

   no tify-send -t 5000 "date" "$(date)"

##### Detach a process from the current shell

   no hup ping -i1 www.google.com &

##### nohup  that doesn't generate nohup.out

   no hup <command> 2> /dev/null > /dev/null &

##### invoke MATLAB functions from command line

   no hup matlab -nosplash -nodesktop -nodisplay -nojvm -logfile output.log -r "function(0)" >output &

##### notify brightness level [custom]

   no tify-send " " -i notification-display-brightness-low -h int:value:50 -h string:x-canonical-private-synchronous:brightness

##### Making scripts runs on backgourd and logging output

   no hup bash example.sh 2>&1 | tee -i i-like-log-files.log &

##### Periodically run a command without hangups, and send the output to your e-mail

   no hup bash -c "while true; do ps -x | mail pascalv@mmmmail.com; sleep 3600; done" | mail pascalv@mmmmail.com &

##### Hide comments

   no comments () { cat $1 | egrep -v '^[[:space:]]*#|^[[:space:]]*$|^[[:space:]]*;' | sed '/<!.*>/d' | sed '/<!/,/>/d'; }

##### Generate Files with Random Content and Size in Bash

   no _of_files=10; counter=1;  while [[ $counter -le $no_of_files ]];   do echo Creating file no $counter;   dd bs=1024 count=$RANDOM skip=$RANDOM if=/dev/sda of=random-file.$counter;   let "counter += 1";  done

##### Debug gulp task

   no de-debug $(which gulp) task-name

##### Run nohup background script background

   no hup some_command/script.sh > /dev/null 2>&1&

##### Send pop-up notifications on Gnome

   no tify-send ["<title>"] "<body>"

##### Send pop-up notifications on Gnome

   no tify-send ["<title>"] "<body>"

##### Send murmurd log lines to syslog

   no hup  tail /var/log/murmur.log | perl -ne '/^<.>[0-9:. -]{24}(\d+ => )?(.*)/; $pid=`pgrep -u murmur murmurd | head`; chomp $pid; `logger -p info -t "murmurd[$pid]" \\"$2\\"`;' &

##### Don't track history for the current session starting after the command

   no hist(){ export HISTFILE=/dev/null; }

##### Nohup

   no hup ./my-shell-script.sh &

##### Running qbittorrent-nox without killing it when the terminal closses.

   no hup qbittorrent-nox & disown

##### Dump /dev/ttyS0 on background automatically from startup

   no hup cat  /dev/ttyS0 | tee -a llamadas.db&

##### Runs a command without hangups.

   no hup <command> &

##### Silently Execute a Shell Script that runs in the background and won't die on HUP/logout

   no hup /bin/sh myscript.sh 1>&2 &>/dev/null 1>&2 &>/dev/null&

##### Show a notify popup in Gnome that expires in specified time and does not leave an icon in notifications tray

   no tify-send hint=int:transient:1 -u low -t 100 "Command" "Finished"

##### Notify me when users log in

   no tifyme -C `cat /etc/passwd | cut -d: -f1`

##### prevent large files from being cached in memory (backups!)

   no cache <I/O-heavy-command>

##### pipe output to notify-send

   no tify-send -t 5000 "date" "$(date)"

##### Detach a process from the current shell

   no hup ping -i1 www.google.com &

##### nohup  that doesn't generate nohup.out

   no hup <command> 2> /dev/null > /dev/null &

##### invoke MATLAB functions from command line

   no hup matlab -nosplash -nodesktop -nodisplay -nojvm -logfile output.log -r "function(0)" >output &

##### notify brightness level [custom]

   no tify-send " " -i notification-display-brightness-low -h int:value:50 -h string:x-canonical-private-synchronous:brightness

##### Making scripts runs on backgourd and logging output

   no hup bash example.sh 2>&1 | tee -i i-like-log-files.log &

##### Periodically run a command without hangups, and send the output to your e-mail

   no hup bash -c "while true; do ps -x | mail pascalv@mmmmail.com; sleep 3600; done" | mail pascalv@mmmmail.com &

##### Hide comments

   no comments () { cat $1 | egrep -v '^[[:space:]]*#|^[[:space:]]*$|^[[:space:]]*;' | sed '/<!.*>/d' | sed '/<!/,/>/d'; }

##### Generate Files with Random Content and Size in Bash

   no _of_files=10; counter=1;  while [[ $counter -le $no_of_files ]];   do echo Creating file no $counter;   dd bs=1024 count=$RANDOM skip=$RANDOM if=/dev/sda of=random-file.$counter;   let "counter += 1";  done

##### Debug gulp task

   no de-debug $(which gulp) task-name

##### Run nohup background script background

   no hup some_command/script.sh > /dev/null 2>&1&

##### Send pop-up notifications on Gnome

   no tify-send ["<title>"] "<body>"

##### Send murmurd log lines to syslog

   no hup  tail /var/log/murmur.log | perl -ne '/^<.>[0-9:. -]{24}(\d+ => )?(.*)/; $pid=`pgrep -u murmur murmurd | head`; chomp $pid; `logger -p info -t "murmurd[$pid]" \\"$2\\"`;' &

##### Don't track history for the current session starting after the command

   no hist(){ export HISTFILE=/dev/null; }
