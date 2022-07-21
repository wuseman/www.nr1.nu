# export

##### convert finenames containing a numeric index from differing to fixed index-length; padding required zeroes in front of first number

   export  l=$1; shift; rename 'my $l=$ENV{'l'}; my $z="0" x $l; s/\d+/substr("$z$&",-$l,$l)/e' "$@"

##### IFS - use entire lines in your for cycles

   export  IFS=$(echo -e "\n")

##### save  date and time for each command in history

   export  HISTTIMEFORMAT="%h/%d-%H:%M:%S "

##### Better PS aliases

   export  PSOA='user,pid,time,state,command' ; function _ps { /bin/ps $@ ; } ; alias psa='_ps ax -o $PSOA'

##### Day Date Time>  Instead of $ or # at the terminal

   export  PS1='\D{%a %D %T}> '

##### recursively add all sub folders with executable file of current folder to PATH environment variable

   export  PATH=$PATH$(find "$PWD" -name '.*' -prune -o -type f -a -perm /u+x -printf ':%h\n' | sort -u | tr -d '\n'); echo $PATH

##### Show internet IP Address in prompt > PS1 var

   export  PS1="[\u@`curl icanhazip.com` \W]$ "

##### grab all commandlinefu shell functions into a single file, suitable for sourcing.

   export  QQ=$(mktemp -d);(cd $QQ; curl -s -O http://www.commandlinefu.com/commands/browse/sort-by-votes/plaintext/[0-2400:25];for i in $(perl -ne 'print "$1\n" if( /^(\w+\(\))/ )' *|sort -u);do grep -h -m1 -B1 $i *; done)|grep -v '^' > clf.sh;rm -r $QQ

##### Windows person acting like an idiot in Linux?

   export  PS1="C:\\>"; clear

##### Colour part of your prompt red to indicate an error

   export  PS1='[\[\e[36;1m\]\u@\[\e[32;1m\]\h \[\e[31;1m\]\w]# \[\e[0m\]'

##### Find out local DISPLAY number

   export  DISPLAY=$(tr '\000' '\n' < /proc/`pidof Xorg`/cmdline | egrep '^:[0-9]+')

##### Remote Screenshot

   export  DISPLAY=":0.0" && import -window root screenshot.png

##### Append current directory to $PATH temporarily.

   export  PATH=$PATH:`pwd`

##### Export you history to nowhere

   export  HISTFILE=/dev/null/

##### Add timestamp to history

   export  HISTTIMEFORMAT="%F %T "

##### save  date and time for each command in history

   export  HISTTIMEFORMAT='%F %T '

##### Reports size of all folders in the current folder.  Useful when burning CD's and DVD's

   export  IFS=$'\n';for dir in $( ls -l | grep ^d | cut -c 52-);do du -sh $dir; done

##### Add a folder to PATH

   export  PATH=$PATH:/home/user/my_prog

##### Kill process you don't know the PID of, when pidof and pgrep are not available.

   export  var1=`ps -A | grep '[u]nique' | cut -d '?' -f 1`; echo${var1/ /}; kill -9 $var1

##### Sneaky logout

   export  HISTFILE=/dev/null && kill -9 $$

##### Bash prompt with user name, host, history number, current dir and just a touch of color

   export  PS1='\n[\u@\h \! \w]\n\[\e[32m\]$ \[\e[0m\]'

##### Sets shell timeout

   export  TMOUT=10

##### pretend to be busy in office to enjoy a cup of coffee

   export  GREP_COLOR='1;32'; cat /dev/urandom | hexdump -C | grep color=auto "ca fe"

##### Change prompt to MS-DOS one (joke)

   export  PS1="C:\$( pwd | sed 's:/:\\\\\:g' )> "

##### A bit of privacy in .bash_history

   export  HISTCONTROL=ignoreboth

##### Add a Clock to Your CLI

   export  PS1="${PS1%\\\$*}"' \t \$ '

##### Clean up display when the bash prompt is displayed

   export  PS1="\[\017\033[m\033[?9l\033[?1000l\]$PS1"

##### colored prompt

   export  PS1='\[\033[0;35m\]\h\[\033[0;33m\] \w\[\033[00m\]: '

##### Ensure that each machine that you log in to has its own history file

   export  HISTFILE="$HOME/.bash_history-$(hostname -s)"

##### StopWatch, simple text, hh:mm:ss using Unix Time

   export  I=$(date +%s); watch -t -n 1 'T=$(date +%s);E=$(($T-$I));hours=$((E / 3600)) ; seconds=$((E % 3600)) ; minutes=$((seconds / 60)) ; seconds=$((seconds % 60)) ; echo $(printf "%02d:%02d:%02d" $hours $minutes $seconds)'

##### Colour part of your prompt red to indicate an error

   export  PROMPT_COMMAND='if (($? > 0)); then echo -ne "\033[1;31m"; fi'; export PS1='[\[\]\u\[\033[0m\] \[\033[1;34m\]\w\[\033[0m\]]\$ '

##### execute your commands and avoid history records

   export  HISTCONTROL=ignorespace

##### pretend to be busy in office to enjoy a cup of coffee

   export  GREP_COLOR='1;32';while [ true ]; do head -n 100 /dev/urandom; sleep .1; done | hexdump -C | grep color=auto "ca fe"

##### Show current pathname in title of terminal

   export  PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007";'

##### Mac OS X: Change Color of the ls Command

   export  LSCOLORS=gxfxcxdxbxegedabagacad

##### Report the established connections for a particular port

   export  PORT=11211; ss -an4 | grep -E "ESTAB.*$PORT" | awk '{print $5}' | awk -F: '{print $1}' | sort | uniq -c | sort -nr

##### Mutt - Change mail sender.

   export  EMAIL=caiogore@domain.com && mutt -s "chave webmail" destination@domain.com < /dev/null

##### dd with progress bar and statistics to gzipped image

   export  BLOCKSIZE='sudo blockdev getsize64 /dev/sdc' && sudo dd if=/dev/sdc bs=1MB | pv -s $BLOCKSIZE | gzip -9 > USB_SD_BACKUP.img.gz

##### Export a directory to all clients via NFSv4, read/write.

   export fs -o fsid=0,rw :/home/jason

##### Speed up builds and scripts, remove duplicate entries in $PATH.  Users scripts are oftern bad:  PATH=/apath:$PATH type of thing cause diplicate.

   export  PATH=`echo -n $PATH | awk -v RS=":" '{ if (!x[$0]++) {printf s $0; s=":"} }'`

##### hanukkah colored bash prompt

   export  PS1="\e[0;34m[\u\e[0;34m@\h[\e[0;33m\w\e[0m\e[0m\e[0;34m]#\e[0m "

##### Pimp your less

   export  LESS='-x4FRSXs'

##### Define shell variable HISTIGNORE so that comments (lines starting with #) appear in shell history

   export  HISTIGNORE=' cd "`*: PROMPT_COMMAND=?*?'

##### Configuring proxy client on terminal

   export  http_proxy=<user>:<pass>@<server>:<port> ftp_proxy=<user>:<pass>@<server>:<port>

##### Change prompt to MS-DOS one (joke)

   export  PS1="C:\$( pwd | sed 's:/:\\\\\\:g' )\\> "

##### Use "most" as your man pager

   export  MANPAGER='most'

##### Incase you miss the famous 'C:\>' prompt

   export  PS1='C:${PWD//\//\\\}>'

##### set prompt and terminal title to display hostname, user ID and pwd

   export  PS1='\[\e]0;\h \u \w\a\]\n\[\e[0;34m\]\u@\h \[\e[33m\]\w\[\e[0;32m\]\n\$ '

##### ignore the .svn directory in filename completion

   export  FIGNORE=.svn

##### Enable color pattern match highlighting in grep(1)

   export  GREP_OPTIONS='color=auto'

##### set history file length

   export  HISTFILESIZE=99999

##### Ride another SSH agent

   export  SSH_AUTH_SOCK=`find /tmp/ssh* -type s -user [user] -mtime -1 | head -1`

##### Change mysql prompt to be more verbose

   export  MYSQL_PS1="mysql://\u@\h:/\d - \R:\m:\s > "

##### Add the time to BASH prompt

   export  PS1="(\@) $PS1"

##### Export OPML from Google Reader

   export -opml(){ curl -sH "Authorization: GoogleLogin auth=$(curl -sd "Email=$1&Passwd=$2&service=reader" https://www.google.com/accounts/ClientLogin | grep Auth | sed 's/Auth=\(.*\)/\1/')" http://www.google.com/reader/subscriptions/export; }

##### Let you vanish in the (bash) history.

   export  HISTSIZE=0

##### StopWatch, OnScreen version, blinking shily on all desktops

   export  I=$(date +%s); watch -t -n 1 'T=$(date +%s);E=$(($T-$I));hours=$((E / 3600)) ; seconds=$((E % 3600)) ; minutes=$((seconds / 60)) ; seconds=$((seconds % 60)) ; echo $(printf "%02d:%02d:%02d" $hours $minutes $seconds) | osd_cat -o 20 -d 1 -p bottom'

##### StopWatch, toilet version, amazing format inside terminal

   export  I=$(date +%s); watch -t -n 1 'T=$(date +%s);E=$(($T-$I));hours=$((E / 3600)) ; seconds=$((E % 3600)) ; minutes=$((seconds / 60)) ; seconds=$((seconds % 60)) ; echo $(printf "%02d:%02d:%02d" $hours $minutes $seconds) | toilet -f shadow'

##### Smiley prompt based on command exit status

   export  PS1="\[\e[01;32m\]\u@\h \[\e[01;34m\]\W \`if [ \$? = 0 ]; then echo -e '\[\e[01;32m\]:)'; else echo -e '\[\e[01;31m\]:('; fi\` \[\e[01;34m\]$\[\e[00m\]"

##### Remove from PATH paths containing a string

   export  PATH= $(echo $PATH | tr ':' '\n' | awk '!/matching string/' | paste -sd:)

##### Set Java home directory based on version for Mac OSX Yosemite

   export  JAVA_HOME=$(/usr/libexec/java_home -v 1.7)

##### Receiving alerts about commands who exit with failure

   export  PROMPT_COMMAND='( x=$? ; let x!=0 && echo shell returned $x )'

##### Fast grepping (avoiding UTF overhead)

   export  LANG=C; grep string longBigFile.log

##### Create new user with sudo rights with home dir, bash shell

   export  NEWUSER=newuser; mkdir /home/$NEWUSER; useradd -d /home/$NEWUSER -s /bin/bash -G sudo $NEWUSER; passwd $NEWUSER

##### Don't save commands in bash history (only for current session)

   export  HISTSIZE=0

##### List process ids (including parent and child process) of a process given its name. Similar to pgrep

   export  proc=chrome && ps aux | grep $proc | grep -v grep |awk '{print $2}'

##### Remove all older kernels then the current running kernel for Ubuntu/Debian base system

   export  KEEP_KERNEL=2; dpkg -l 'linux-image*' | awk '/^ii/ { print $2 }' | grep "[0-9]" | awk 'BEGIN{i=1}{print i++, $0}' | grep `uname -r` -B99 | sort -r | tail -n+$(($KEEP_KERNEL+2)) | awk '{print $2}'| xargs apt-get -y purge

##### Let you vanish in the (bash) history.

   export  HISTFILE=/dev/null

##### Make bash look like DOS

   export  PS1='C:${PWD//\//\\\}>'

##### Cool PS1 with host, time, path and user. With color!

   export  PS1="[\[\e[1;32m\]\u\[\e[m\]\[\e[1;31m\]@\[\e[m\]\[\e[3;35m\]\H\[\e[m\] \[\e[1;30m\]| \[\e[m\]\[\e[1;34m\]\w\[\e[m\] \[\e[1;29m\]\t\[\e[m\]]\[\e[1;33m\]$\[\e[m\]"

##### Show IP Address in prompt > PS1 var

   export  PS1="[\u@`hostname -I` \W]$ "

##### Pretend your shell is MS-DOS command.com

   export  PROMPT_COMMAND=$PROMPT_COMMAND'; export PWD_UPCASE="${PWD^^}"'; export PS1='C:${PWD_UPCASE//\\//\\\\}>'

##### IFS - use entire lines in your for cycles

   export  IFS=$(echo -e "\n")

##### save  date and time for each command in history

   export  HISTTIMEFORMAT="%h/%d-%H:%M:%S "

##### grab all commandlinefu shell functions into a single file, suitable for sourcing.

   export  QQ=$(mktemp -d);(cd $QQ; curl -s -O http://www.commandlinefu.com/commands/browse/sort-by-votes/plaintext/[0-2400:25];for i in $(perl -ne 'print "$1\n" if( /^(\w+\(\))/ )' *|sort -u);do grep -h -m1 -B1 $i *; done)|grep -v '^' > clf.sh;rm -r $QQ

##### Add timestamp to history

   export  HISTTIMEFORMAT="%F %T "

##### save  date and time for each command in history

   export  HISTTIMEFORMAT='%F %T '

##### Bash prompt with user name, host, history number, current dir and just a touch of color

   export  PS1='\n[\u@\h \! \w]\n\[\e[32m\]$ \[\e[0m\]'

##### Sets shell timeout

   export  TMOUT=10

##### pretend to be busy in office to enjoy a cup of coffee

   export  GREP_COLOR='1;32'; cat /dev/urandom | hexdump -C | grep color=auto "ca fe"

##### Change prompt to MS-DOS one (joke)

   export  PS1="C:\$( pwd | sed 's:/:\\\\\:g' )> "

##### A bit of privacy in .bash_history

   export  HISTCONTROL=ignoreboth

##### Add a Clock to Your CLI

   export  PS1="${PS1%\\\$*}"' \t \$ '

##### Clean up display when the bash prompt is displayed

   export  PS1="\[\017\033[m\033[?9l\033[?1000l\]$PS1"

##### colored prompt

   export  PS1='\[\033[0;35m\]\h\[\033[0;33m\] \w\[\033[00m\]: '

##### Ensure that each machine that you log in to has its own history file

   export  HISTFILE="$HOME/.bash_history-$(hostname -s)"

##### StopWatch, simple text, hh:mm:ss using Unix Time

   export  I=$(date +%s); watch -t -n 1 'T=$(date +%s);E=$(($T-$I));hours=$((E / 3600)) ; seconds=$((E % 3600)) ; minutes=$((seconds / 60)) ; seconds=$((seconds % 60)) ; echo $(printf "%02d:%02d:%02d" $hours $minutes $seconds)'

##### Colour part of your prompt red to indicate an error

   export  PROMPT_COMMAND='if (($? > 0)); then echo -ne "\033[1;31m"; fi'; export PS1='[\[\]\u\[\033[0m\] \[\033[1;34m\]\w\[\033[0m\]]\$ '

##### execute your commands and avoid history records

   export  HISTCONTROL=ignorespace

##### pretend to be busy in office to enjoy a cup of coffee

   export  GREP_COLOR='1;32';while [ true ]; do head -n 100 /dev/urandom; sleep .1; done | hexdump -C | grep color=auto "ca fe"

##### Show current pathname in title of terminal

   export  PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007";'

##### Mac OS X: Change Color of the ls Command

   export  LSCOLORS=gxfxcxdxbxegedabagacad

##### Report the established connections for a particular port

   export  PORT=11211; ss -an4 | grep -E "ESTAB.*$PORT" | awk '{print $5}' | awk -F: '{print $1}' | sort | uniq -c | sort -nr

##### Mutt - Change mail sender.

   export  EMAIL=caiogore@domain.com && mutt -s "chave webmail" destination@domain.com < /dev/null

##### dd with progress bar and statistics to gzipped image

   export  BLOCKSIZE='sudo blockdev getsize64 /dev/sdc' && sudo dd if=/dev/sdc bs=1MB | pv -s $BLOCKSIZE | gzip -9 > USB_SD_BACKUP.img.gz

##### Export a directory to all clients via NFSv4, read/write.

   export fs -o fsid=0,rw :/home/jason

##### Speed up builds and scripts, remove duplicate entries in $PATH.  Users scripts are oftern bad:  PATH=/apath:$PATH type of thing cause diplicate.

   export  PATH=`echo -n $PATH | awk -v RS=":" '{ if (!x[$0]++) {printf s $0; s=":"} }'`

##### hanukkah colored bash prompt

   export  PS1="\e[0;34m[\u\e[0;34m@\h[\e[0;33m\w\e[0m\e[0m\e[0;34m]#\e[0m "

##### Pimp your less

   export  LESS='-x4FRSXs'

##### Define shell variable HISTIGNORE so that comments (lines starting with #) appear in shell history

   export  HISTIGNORE=' cd "`*: PROMPT_COMMAND=?*?'

##### Configuring proxy client on terminal

   export  http_proxy=<user>:<pass>@<server>:<port> ftp_proxy=<user>:<pass>@<server>:<port>

##### Change prompt to MS-DOS one (joke)

   export  PS1="C:\$( pwd | sed 's:/:\\\\\\:g' )\\> "

##### Use "most" as your man pager

   export  MANPAGER='most'

##### Incase you miss the famous 'C:\>' prompt

   export  PS1='C:${PWD//\//\\\}>'

##### set prompt and terminal title to display hostname, user ID and pwd

   export  PS1='\[\e]0;\h \u \w\a\]\n\[\e[0;34m\]\u@\h \[\e[33m\]\w\[\e[0;32m\]\n\$ '

##### ignore the .svn directory in filename completion

   export  FIGNORE=.svn

##### Enable color pattern match highlighting in grep(1)

   export  GREP_OPTIONS='color=auto'

##### set history file length

   export  HISTFILESIZE=99999

##### Ride another SSH agent

   export  SSH_AUTH_SOCK=`find /tmp/ssh* -type s -user [user] -mtime -1 | head -1`

##### Change mysql prompt to be more verbose

   export  MYSQL_PS1="mysql://\u@\h:/\d - \R:\m:\s > "

##### Add the time to BASH prompt

   export  PS1="(\@) $PS1"

##### Export OPML from Google Reader

   export -opml(){ curl -sH "Authorization: GoogleLogin auth=$(curl -sd "Email=$1&Passwd=$2&service=reader" https://www.google.com/accounts/ClientLogin | grep Auth | sed 's/Auth=\(.*\)/\1/')" http://www.google.com/reader/subscriptions/export; }

##### Let you vanish in the (bash) history.

   export  HISTSIZE=0

##### StopWatch, OnScreen version, blinking shily on all desktops

   export  I=$(date +%s); watch -t -n 1 'T=$(date +%s);E=$(($T-$I));hours=$((E / 3600)) ; seconds=$((E % 3600)) ; minutes=$((seconds / 60)) ; seconds=$((seconds % 60)) ; echo $(printf "%02d:%02d:%02d" $hours $minutes $seconds) | osd_cat -o 20 -d 1 -p bottom'

##### StopWatch, toilet version, amazing format inside terminal

   export  I=$(date +%s); watch -t -n 1 'T=$(date +%s);E=$(($T-$I));hours=$((E / 3600)) ; seconds=$((E % 3600)) ; minutes=$((seconds / 60)) ; seconds=$((seconds % 60)) ; echo $(printf "%02d:%02d:%02d" $hours $minutes $seconds) | toilet -f shadow'

##### Smiley prompt based on command exit status

   export  PS1="\[\e[01;32m\]\u@\h \[\e[01;34m\]\W \`if [ \$? = 0 ]; then echo -e '\[\e[01;32m\]:)'; else echo -e '\[\e[01;31m\]:('; fi\` \[\e[01;34m\]$\[\e[00m\]"

##### Remove from PATH paths containing a string

   export  PATH= $(echo $PATH | tr ':' '\n' | awk '!/matching string/' | paste -sd:)

##### Set Java home directory based on version for Mac OSX Yosemite

   export  JAVA_HOME=$(/usr/libexec/java_home -v 1.7)

##### Receiving alerts about commands who exit with failure

   export  PROMPT_COMMAND='( x=$? ; let x!=0 && echo shell returned $x )'

##### Fast grepping (avoiding UTF overhead)

   export  LANG=C; grep string longBigFile.log

##### Create new user with sudo rights with home dir, bash shell

   export  NEWUSER=newuser; mkdir /home/$NEWUSER; useradd -d /home/$NEWUSER -s /bin/bash -G sudo $NEWUSER; passwd $NEWUSER

##### Don't save commands in bash history (only for current session)

   export  HISTSIZE=0

##### List process ids (including parent and child process) of a process given its name. Similar to pgrep

   export  proc=chrome && ps aux | grep $proc | grep -v grep |awk '{print $2}'

##### Remove all older kernels then the current running kernel for Ubuntu/Debian base system

   export  KEEP_KERNEL=2; dpkg -l 'linux-image*' | awk '/^ii/ { print $2 }' | grep "[0-9]" | awk 'BEGIN{i=1}{print i++, $0}' | grep `uname -r` -B99 | sort -r | tail -n+$(($KEEP_KERNEL+2)) | awk '{print $2}'| xargs apt-get -y purge

##### Let you vanish in the (bash) history.

   export  HISTFILE=/dev/null

##### Make bash look like DOS

   export  PS1='C:${PWD//\//\\\}>'

##### Show IP Address in prompt > PS1 var

   export  PS1="[\u@`hostname -I` \W]$ "
