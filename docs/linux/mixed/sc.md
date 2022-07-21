# sc

##### Broadcast your shell thru ports 5000, 5001, 5002 ...

   sc ript -qf | tee >(nc -kl 5000) >(nc -kl 5001) >(nc -kl 5002)

##### Broadcast your shell thru ports 5000, 5001, 5002 ...

   sc ript -qf | tee >(nc -kl 5000) >(nc -kl 5001) >(nc -kl 5002)

##### Take a screenshot of the screen, upload it to ompldr.org and put link to the clipboard and to the screenshots.log (with a date stamp) in a home directory.

   sc rot $1 /tmp/screenshot.png && curl -s -F file1=@/tmp/screenshot.png -F submit="OMPLOAD\!" http://ompldr.org/upload | egrep '(View file: <a href="v([A-Za-z0-9+\/]+)">)' | sed 's/^.*\(http:\/\/.*\)<.*$/\1/' | xsel -b -i ? (full in a sample output)

##### Take and post a screenshot in 3 seconds to imgur using scrot

   sc rot -d 3 '/tmp/%Y-%m-%d_$wx$h.png' -e 'cat $f'|curl -F "image=@-" -F "key=1913b4ac473c692372d108209958fd15" http://api.imgur.com/2/upload.xml|grep -Eo "<original>(.)*</original>" | grep -Eo "http://i.imgur.com/[^<]*"

##### scp file from hostb to hostc while logged into hosta

   sc p user@hostb:file user@hostc:

##### Select MacOSX Network Location

   sc select <location>

##### command to display info about the core specified

   sc hedtool 1

##### print info about compiled Scala class

   sc alac quicksort.scala && javap QuickSort

##### List detached screen sessions

   sc reen -ls | grep D

##### Broadcast your shell thru ports 5000, 5001, 5002 ...

   sc ript -qf | tee >(nc -l -p 5000)

##### SCP files to remote server using PEM file

   sc p -i /path/to/file.pem [local-files] root@[dest-host]:[dest-path]

##### Easily create and share X screen shots (remote webserver version)

   sc rot -e 'mv $f \$HOME/shots/; sitecopy -u shots; echo "\$BASE/$f" | xsel -i; feh `xsel -o`'

##### See the order for DNS resolution on your Mac

   sc util dns

##### Linux record terminal session and replay

   sc ript -t 2> timing.txt -a session.txt ; Run some commands here; exit; scriptreplay timing.txt session.txt

##### creates or attachs to screen

   sc reen -r irc || screen -S irc irssi

##### delete all tasks scheduled for the local computer

   sc htasks /delete /tn * /f

##### Automatically find and re-attach to a detached screen session

   sc reen -x `screen -ls | grep Detached | cut -c -10`

##### Download a file securely via a remote SSH server

   sc p $user@$server:$path/to/file .

##### Upload file to remote server using SCP

   sc p -P 22 /home/svnlabs.txt  root@92.178.0.56:/home/svnlabs.txt

##### copy `file.txt` to remote server

   sc p -l username -pw pa33w0rd file.txt 192.168.1.2:/path/to/dir

##### Upload file to remote server using SCP

   sc p /home/svnlabs.txt root@92.178.0.56:/home/

##### Upload file to remote server using SCP

   sc p -P 22 /home/svnlabs.txt  root@92.178.0.56:/home/svnlabs.txt

##### Start a file browser in the current directory

   sc reen -d -m nautilus no-desktop `pwd`

##### scp

   sc p -P 2202 /$filelocation user@host:/$final/$location

##### use scp to copy files

   sc p -P 1837 <path_to_loca_file> <remote_user>@<remote_ip>:<remote_ip>

##### Install your ssh key file on a remote system

   sc p ~/.ssh/id_rsa.pub user@remote:.ssh/authorized_keys

##### Get absolut path to your bash-script

   sc ript_path=$(cd $(dirname $0);pwd)

##### Terminal redirection

   sc ript -f /dev/pts/3

##### connects to a serial console

   sc reen /dev/ttyS0 9600

##### Take a screenshot of the focused window with a 4 second countdown

   sc rot -ucd4 -e 'eog $f'

##### Runs a command without hangups.

   sc reen -d -m command &

##### Share your terminal session (remotely or whatever)

   sc reen -x

##### Share a screen session

   sc reen -x <screen_id>

##### Shell recorder with replay

   sc ript -t /tmp/mylog.out 2>/tmp/mylog.time; <do your work>; <CTRL-D>; scriptreplay /tmp/mylog.time /tmp/mylog.out

##### Reconnect to screen without disconnecting other sessions

   sc reen -xR

##### Script Terminal Session

   sc ript -f /tmp/foo; tail -f /tmp/foo

##### Start screen with name and run command

   sc reen -dmS "name_me" echo "hi"

##### shortcut to scp a file to the same location on a remote machine

   sc p filename root@remote:`pwd`

##### Scan a document to PDF

   sc animage -p resolution 250 mode Gray -x 215.9 -y 279.4 | pnmtops -imageheight 11 -imagewidth 8.5 | ps2pdf - output.pdf

##### List all Windows services on the command line

   sc  queryex type= service state= all | find "_NAME"

##### connect to all screen instances running

   sc reen -ls | grep pts | gawk '{ split($1, x, "."); print x[1] }' | while read i; do gnome-terminal -e screen\ -dx\ $i; done

##### Bash scripts encryption and passphrase-protection

   sc rypt(){ [ -n "$1" ]&&{ echo '. <(echo "$(tail -n+2 $0|base64 -d|mcrypt -dq)"); exit;'>$1.scrypt;cat $1|mcrypt|base64 >>$1.scrypt;chmod +x $1.scrypt;};}

##### create screencast (record text and audio simultaneously) using 'script' and 'arecord'

   sc reencast() { arecord -R 1000 -f cd -t wav $1.wav & RECPID=$!; echo "Starting screencast in new shell. Exit subshell to quit."; script -t 2> $1.timing -a $1.session; kill $RECPID; }

##### Automatically find and re-attach to a detached screen session

   sc reen -RR

##### Start screen in detached mode

   sc reen -d -m [<command>]

##### using scanner device from command line

   sc animage -d mustek_usb resolution 100 mode Color > image.pnm

##### identify exported sonames in a path

   sc anelf nobanner recursive quiet soname format "+S#f"

##### identify NEEDED sonames in a path

   sc anelf nobanner recursive quiet needed format "+n#F" $1 | tr ',' '\n' | sort -u

##### autorun program when logon Windows XP

   sc htasks /create /sc onlogon /tn "Run prog" /tr prog.exe

##### capture selected window

   sc rot -s /tmp/file.png

##### Create Bash script to change modification time of files

   sc riptName="reorder_files.sh"; echo -e '#!/bin/sh\n' > "${scriptName}"; cat files.txt | while read file; do echo "touch ${file}; sleep 0.5;" >> "${scriptName}"; done; chmod +x "${scriptName}";

##### Open screen on the previous command

   sc reen !!

##### Broadcast your shell thru UDP on port 5000

   sc ript -qf >(nc -ub 192.168.1.255 5000)

##### Share a 'screen'-session

   sc reen -x

##### Automatically find and re-attach to a detached screen session

   sc reen -D -R

##### Output Windows services in a neatly formated list (cygwin)

   sc  query state= all | awk '/SERVICE_NAME/{printf"%s:",$2;getline;gsub(/DISP.*:\ /,"");printf"%s\n",$0}' | column -ts\:

##### scrot screenshot without window appearing

   sc rot '%Y-%m-%d_$wx$h_scrot.png'

##### Resume a detached screen session, resizing to fit the current terminal

   sc reen -raAd

##### Check the state of a service

   sc  query service_name

##### Get file from remote system

   sc p username@host|ipaddress:/directory/path .

##### Restrict the bandwidth for the SCP command

   sc p -l10 pippo@serverciccio:/home/zutaniddu/* .

##### Start urxvt and do whatever is needed to open the screen session named "main"

   sc reen -ls | grep main && urxvt -name screen -e screen -x main || urxvt -name screen -e screen -R -S main

##### Start screen, attach here an now to sessionname , be quiet

   sc reen -R -D -S sessionname -q

##### SCP file from remote location to local directory

   sc p user@hostname:/remotedir/file.name /localdir

##### Remote copy in batch, exclude specified pattern

   sc p -r `ls | grep -vE "(Pattern1|Pattern2)"` user@remote_host:/location

##### Screenshot in $1 seconds, upload and retrieve URI from ompdlr.org

   sc rotit(){ echo "Screenshot in $1 seconds...";scrot -d $1 '%Y%m%d%h.png' -e 'curl -sF file1=@- http://ompldr.org/upload < $f | grep -P -o "(?<=File:).*(http://ompldr.org/.*)\<\/a\>";rm $f'| sed -r 's@.*(http://ompldr.org/\w{1,7}).*@\1@';}

##### Opens up a background session within an existing fron-end session

   sc reen

##### use screen as a terminal emulator to connect to serial consoles

   sc reen /dev/tty<device> 9600

##### copy multiple files using SCP

   sc p username@computer:"path/To/File1 path/To/File2" destination/

##### starts a detached screen with name

   sc reen -S [name] -d -m [<command>]

##### scp with compression.

   sc p -C 10.0.0.4:/tmp/backup.sql /path/to/backup.sql

##### share a path when starting a new screen window

   sc reen -X eval "chdir $PWD"

##### Terminal redirection

   sc ript /dev/null | tee /dev/pts/3

##### Connected to first screen session created

   sc reen -x $(screen -ls | awk 'NR == 2 { print $1 }')

##### Easily create and share X screen shots (local webserver version)

   sc rot -e 'mv $f \$HOME/public_html/shots/; echo "http://\$HOSTNAME/~\$USER/shots/$f" | xsel -i; feh `xsel -o`'

##### make a log of a terminal session

   sc ript

##### Broadcast your shell thru ports 5000, 5001, 5002 ...

   sc ript -qf | tee >(nc -kl 5000) >(nc -kl 5001) >(nc -kl 5002)

##### scp file from hostb to hostc while logged into hosta

   sc p user@hostb:file user@hostc:

##### Get absolut path to your bash-script

   sc ript_path=$(cd $(dirname $0);pwd)

##### Terminal redirection

   sc ript -f /dev/pts/3

##### connects to a serial console

   sc reen /dev/ttyS0 9600

##### Take a screenshot of the focused window with a 4 second countdown

   sc rot -ucd4 -e 'eog $f'

##### Runs a command without hangups.

   sc reen -d -m command &

##### Share your terminal session (remotely or whatever)

   sc reen -x

##### Share a screen session

   sc reen -x <screen_id>

##### Shell recorder with replay

   sc ript -t /tmp/mylog.out 2>/tmp/mylog.time; <do your work>; <CTRL-D>; scriptreplay /tmp/mylog.time /tmp/mylog.out

##### Reconnect to screen without disconnecting other sessions

   sc reen -xR

##### Script Terminal Session

   sc ript -f /tmp/foo; tail -f /tmp/foo

##### Start screen with name and run command

   sc reen -dmS "name_me" echo "hi"

##### shortcut to scp a file to the same location on a remote machine

   sc p filename root@remote:`pwd`

##### Scan a document to PDF

   sc animage -p resolution 250 mode Gray -x 215.9 -y 279.4 | pnmtops -imageheight 11 -imagewidth 8.5 | ps2pdf - output.pdf

##### List all Windows services on the command line

   sc  queryex type= service state= all | find "_NAME"

##### connect to all screen instances running

   sc reen -ls | grep pts | gawk '{ split($1, x, "."); print x[1] }' | while read i; do gnome-terminal -e screen\ -dx\ $i; done

##### Bash scripts encryption and passphrase-protection

   sc rypt(){ [ -n "$1" ]&&{ echo '. <(echo "$(tail -n+2 $0|base64 -d|mcrypt -dq)"); exit;'>$1.scrypt;cat $1|mcrypt|base64 >>$1.scrypt;chmod +x $1.scrypt;};}

##### create screencast (record text and audio simultaneously) using 'script' and 'arecord'

   sc reencast() { arecord -R 1000 -f cd -t wav $1.wav & RECPID=$!; echo "Starting screencast in new shell. Exit subshell to quit."; script -t 2> $1.timing -a $1.session; kill $RECPID; }

##### Automatically find and re-attach to a detached screen session

   sc reen -RR

##### Start screen in detached mode

   sc reen -d -m [<command>]

##### using scanner device from command line

   sc animage -d mustek_usb resolution 100 mode Color > image.pnm

##### identify exported sonames in a path

   sc anelf nobanner recursive quiet soname format "+S#f"

##### identify NEEDED sonames in a path

   sc anelf nobanner recursive quiet needed format "+n#F" $1 | tr ',' '\n' | sort -u

##### autorun program when logon Windows XP

   sc htasks /create /sc onlogon /tn "Run prog" /tr prog.exe

##### capture selected window

   sc rot -s /tmp/file.png

##### Create Bash script to change modification time of files

   sc riptName="reorder_files.sh"; echo -e '#!/bin/sh\n' > "${scriptName}"; cat files.txt | while read file; do echo "touch ${file}; sleep 0.5;" >> "${scriptName}"; done; chmod +x "${scriptName}";

##### Open screen on the previous command

   sc reen !!

##### Broadcast your shell thru UDP on port 5000

   sc ript -qf >(nc -ub 192.168.1.255 5000)

##### Share a 'screen'-session

   sc reen -x

##### Automatically find and re-attach to a detached screen session

   sc reen -D -R

##### Output Windows services in a neatly formated list (cygwin)

   sc  query state= all | awk '/SERVICE_NAME/{printf"%s:",$2;getline;gsub(/DISP.*:\ /,"");printf"%s\n",$0}' | column -ts\:

##### scrot screenshot without window appearing

   sc rot '%Y-%m-%d_$wx$h_scrot.png'

##### Resume a detached screen session, resizing to fit the current terminal

   sc reen -raAd

##### Check the state of a service

   sc  query service_name

##### Get file from remote system

   sc p username@host|ipaddress:/directory/path .

##### Restrict the bandwidth for the SCP command

   sc p -l10 pippo@serverciccio:/home/zutaniddu/* .

##### Start urxvt and do whatever is needed to open the screen session named "main"

   sc reen -ls | grep main && urxvt -name screen -e screen -x main || urxvt -name screen -e screen -R -S main

##### Start screen, attach here an now to sessionname , be quiet

   sc reen -R -D -S sessionname -q

##### SCP file from remote location to local directory

   sc p user@hostname:/remotedir/file.name /localdir

##### Remote copy in batch, exclude specified pattern

   sc p -r `ls | grep -vE "(Pattern1|Pattern2)"` user@remote_host:/location

##### Screenshot in $1 seconds, upload and retrieve URI from ompdlr.org

   sc rotit(){ echo "Screenshot in $1 seconds...";scrot -d $1 '%Y%m%d%h.png' -e 'curl -sF file1=@- http://ompldr.org/upload < $f | grep -P -o "(?<=File:).*(http://ompldr.org/.*)\<\/a\>";rm $f'| sed -r 's@.*(http://ompldr.org/\w{1,7}).*@\1@';}

##### Opens up a background session within an existing fron-end session

   sc reen

##### use screen as a terminal emulator to connect to serial consoles

   sc reen /dev/tty<device> 9600

##### copy multiple files using SCP

   sc p username@computer:"path/To/File1 path/To/File2" destination/

##### starts a detached screen with name

   sc reen -S [name] -d -m [<command>]

##### scp with compression.

   sc p -C 10.0.0.4:/tmp/backup.sql /path/to/backup.sql

##### share a path when starting a new screen window

   sc reen -X eval "chdir $PWD"

##### Terminal redirection

   sc ript /dev/null | tee /dev/pts/3

##### Connected to first screen session created

   sc reen -x $(screen -ls | awk 'NR == 2 { print $1 }')

##### make a log of a terminal session

   sc ript
