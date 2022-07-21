# la

##### Convert an mp3 and add to it a img

   la me -v 2 -b 192 ti /path/to/file.jpg audio.mp3 new-audio.mp3

##### Last shutdown date and time of a system

   la st -x | grep shutdown | head -1

##### See how much time you've spent logged in

   la st|grep `whoami`|grep -v logged|cut -c61-71|sed -e 's/[()]//g'|awk '{ sub("\\+", ":");split($1,a,":");if(a[3]){print a[1]*60*60+a[2]*60+a[3]} else {print a[1]*60+a[2] }; }'|paste -s -d+ -|bc|awk '{printf "%dh:%dm:%ds\n",$1/(60*60),$1%(60*60)/60,$1%60}'

##### create an mp3 with variable bitrate

   la me -h -V 6 track9.wav track9.mp3

##### Convert wav to mp3

   la me rec01.wav rec01.mp3

##### Launch a Daemon on OSX tiger

   la unchctl load /Library/LaunchDaemons/<plist config filename>.plist

##### This command will tell the last login and reboot related information

   la st

##### Show the single most recently modified file in a directory

   la stfile () { find ${1:-.} -maxdepth 1 -type f -printf "%T+ %p\n" | sort -n | tail -n1 | sed 's/[^[:space:]]\+ //'; }

##### how long system has been running

   la st reboot

##### Find out the last times your system was rebooted (for the duration of wtmp).

   la st reboot

##### reduce mp3 bitrate (and size, of course)

   la me mp3input -m m resample 24 input.mp3

##### Get top N files in X directory

   la rgest() { dir=${1:-"./"}; count=${2:-"10"}; echo "Getting top $count largest files in $dir"; du -sx "$dir/"* | sort -nk 1 | tail -n $count | cut -f2 | xargs -I file du -shx file; }

##### To get how many users logged in and logged out and how many times ?

   la st | awk '{ print $1 }' | sort | uniq -c | grep -v wtmp

##### shows history of logins on the server

   la st -aiF | head

##### Quick glance at who's been using your system recently

   la st  | grep -v "^$" | awk '{ print $1 }' | sort -nr | uniq -c

##### convert wav into mp3 using lame

   la me -V2 rec01.wav rec01.mp3

##### Show the last 20 sessions logged on the machine

   la st -n 20

##### Get the time and date of the last server reboot

   la st reboot

##### Get the time and date of the last server reboot

   la st reboot

##### shows history of logins on the server

   la st

##### to get how many users logged in and logged out and how many times purely using awk

   la st | awk '$1!~/wtmp/{logs[$1]++}END{for (i in logs) print i, logs[i]}'

##### Show all archives.

   la 

##### Convert a mp3 file to CBR 128 kbps high quality

   la me -m j -V 4 -q 0 lowpass 17 -b 128 cbr "infile" "128/outfile"

##### Laminate files line by line

   la m -f 1.4 myfile

##### Find out the last times your system was rebooted (for the duration of wtmp).

   la st reboot

##### reduce mp3 bitrate (and size, of course)

   la me mp3input -m m resample 24 input.mp3

##### Get top N files in X directory

   la rgest() { dir=${1:-"./"}; count=${2:-"10"}; echo "Getting top $count largest files in $dir"; du -sx "$dir/"* | sort -nk 1 | tail -n $count | cut -f2 | xargs -I file du -shx file; }

##### To get how many users logged in and logged out and how many times ?

   la st | awk '{ print $1 }' | sort | uniq -c | grep -v wtmp

##### shows history of logins on the server

   la st -aiF | head

##### Quick glance at who's been using your system recently

   la st  | grep -v "^$" | awk '{ print $1 }' | sort -nr | uniq -c

##### convert wav into mp3 using lame

   la me -V2 rec01.wav rec01.mp3

##### Show the last 20 sessions logged on the machine

   la st -n 20

##### Get the time and date of the last server reboot

   la st reboot

##### Get the time and date of the last server reboot

   la st reboot

##### shows history of logins on the server

   la st

##### to get how many users logged in and logged out and how many times purely using awk

   la st | awk '$1!~/wtmp/{logs[$1]++}END{for (i in logs) print i, logs[i]}'
