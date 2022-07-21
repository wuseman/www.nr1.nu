# screen

##### List detached screen sessions

   screen  -ls | grep D

##### creates or attachs to screen

   screen  -r irc || screen -S irc irssi

##### Automatically find and re-attach to a detached screen session

   screen  -x `screen -ls | grep Detached | cut -c -10`

##### Start a file browser in the current directory

   screen  -d -m nautilus no-desktop `pwd`

##### connects to a serial console

   screen  /dev/ttyS0 9600

##### Runs a command without hangups.

   screen  -d -m command &

##### Share your terminal session (remotely or whatever)

   screen  -x

##### Share a screen session

   screen  -x <screen_id>

##### Reconnect to screen without disconnecting other sessions

   screen  -xR

##### Start screen with name and run command

   screen  -dmS "name_me" echo "hi"

##### connect to all screen instances running

   screen  -ls | grep pts | gawk '{ split($1, x, "."); print x[1] }' | while read i; do gnome-terminal -e screen\ -dx\ $i; done

##### create screencast (record text and audio simultaneously) using 'script' and 'arecord'

   screen cast() { arecord -R 1000 -f cd -t wav $1.wav & RECPID=$!; echo "Starting screencast in new shell. Exit subshell to quit."; script -t 2> $1.timing -a $1.session; kill $RECPID; }

##### Automatically find and re-attach to a detached screen session

   screen  -RR

##### Start screen in detached mode

   screen  -d -m [<command>]

##### Open screen on the previous command

   screen  !!

##### Share a 'screen'-session

   screen  -x

##### Automatically find and re-attach to a detached screen session

   screen  -D -R

##### Resume a detached screen session, resizing to fit the current terminal

   screen  -raAd

##### Start urxvt and do whatever is needed to open the screen session named "main"

   screen  -ls | grep main && urxvt -name screen -e screen -x main || urxvt -name screen -e screen -R -S main

##### Start screen, attach here an now to sessionname , be quiet

   screen  -R -D -S sessionname -q

##### Opens up a background session within an existing fron-end session

   screen 

##### use screen as a terminal emulator to connect to serial consoles

   screen  /dev/tty<device> 9600

##### starts a detached screen with name

   screen  -S [name] -d -m [<command>]

##### share a path when starting a new screen window

   screen  -X eval "chdir $PWD"

##### Connected to first screen session created

   screen  -x $(screen -ls | awk 'NR == 2 { print $1 }')

##### connects to a serial console

   screen  /dev/ttyS0 9600

##### Runs a command without hangups.

   screen  -d -m command &

##### Share your terminal session (remotely or whatever)

   screen  -x

##### Share a screen session

   screen  -x <screen_id>

##### Reconnect to screen without disconnecting other sessions

   screen  -xR

##### Start screen with name and run command

   screen  -dmS "name_me" echo "hi"

##### connect to all screen instances running

   screen  -ls | grep pts | gawk '{ split($1, x, "."); print x[1] }' | while read i; do gnome-terminal -e screen\ -dx\ $i; done

##### create screencast (record text and audio simultaneously) using 'script' and 'arecord'

   screen cast() { arecord -R 1000 -f cd -t wav $1.wav & RECPID=$!; echo "Starting screencast in new shell. Exit subshell to quit."; script -t 2> $1.timing -a $1.session; kill $RECPID; }

##### Automatically find and re-attach to a detached screen session

   screen  -RR

##### Start screen in detached mode

   screen  -d -m [<command>]

##### Open screen on the previous command

   screen  !!

##### Share a 'screen'-session

   screen  -x

##### Automatically find and re-attach to a detached screen session

   screen  -D -R

##### Resume a detached screen session, resizing to fit the current terminal

   screen  -raAd

##### Start urxvt and do whatever is needed to open the screen session named "main"

   screen  -ls | grep main && urxvt -name screen -e screen -x main || urxvt -name screen -e screen -R -S main

##### Start screen, attach here an now to sessionname , be quiet

   screen  -R -D -S sessionname -q

##### Opens up a background session within an existing fron-end session

   screen 

##### use screen as a terminal emulator to connect to serial consoles

   screen  /dev/tty<device> 9600

##### starts a detached screen with name

   screen  -S [name] -d -m [<command>]

##### share a path when starting a new screen window

   screen  -X eval "chdir $PWD"

##### Connected to first screen session created

   screen  -x $(screen -ls | awk 'NR == 2 { print $1 }')
