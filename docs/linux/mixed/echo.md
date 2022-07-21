# echo

##### Execute a command at a given time

   echo  "ls -l" | at midnight

##### Execute a command at a given time

   echo  "ls -l" | at midnight

##### Execute a command at a given time

   echo  "ls -l" | at midnight

##### Execute a command at a given time

   echo  "ls -l" | at midnight

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Run a command only when load average is below a certain threshold

   echo  "rm -rf /unwanted-but-large/folder" | batch

##### Run a command only when load average is below a certain threshold

   echo  "rm -rf /unwanted-but-large/folder" | batch

##### Isolate file name from full path/find output

   echo  ${fullpath##*/}

##### search and cut between two strings

   echo  '<div class="Btn">link to open </div>'  | grep -oP '(?<="Btn").*?(?= </div>)' | cut -d ">" -f2

##### Sort a character string

   echo  sortmeplease|sed 's/./&\n/g'|sort|tr -d '\n'

##### Shows how many percents of all avaliable packages are installed in your gentoo system

   echo  $(echo 'scale=2; ' '100 * ' $(eix only-names -I | wc -l) / $(eix only-names | wc -l) | bc -l)%

##### Generate a unique MAC address from an IP Address

   echo  00:16:3e$(gethostip 10.1.2.11 | awk '{ print tolower(substr($3,3)) }' |sed 's/.\{2\}/:&/g' )

##### Convert from unixtime in millisecond

   echo  1395767373016 | gawk '{print strftime("%c", ( $0 + 500 ) / 1000 )}'

##### See how many more processes are allowed, awesome!

   echo  $(($(ulimit -u)-$(pgrep -u $USER|wc -l))

##### Disk usage summary

   echo  $(df -BG | grep sd | awk '{print $3}' | paste -sd+ | tr -d G | bc) GiB used in total

##### Go get those photos from a Picasa album

   echo  'Enter Picasa album RSS URL:"; read -e feedurl; GET "$feedurl" |sed 's/</\n</g' | grep media:content |sed 's/.*url='"'"'\([^'"'"']*\)'"'"'.*$/\1/' > wgetlist

##### Blackhole any level zones via dnsmasq

   echo  "address=/com/0.0.0.0" | sudo tee /etc/dnsmasq.d/dnsmasq-com-blackhole.conf && sudo systemctl restart dnsmasq

##### Display GCC Predefined Macros

   echo  | gcc -dM -E -

##### underscore to camelCase

   echo  to_camel_case__variable | sed -r 's/(.)_+(.)/\1\U\2/g;s/^[a-z]/\U&/'

##### Get Public IP Address from command line

   echo  `wget -q -O - http://www.whatismyip.org`

##### Do you really believe on Battery Remaining Time? Confirm it from time to time!

   echo  start > battery.txt; watch -n 60 'date >> battery.txt'

##### Export MySQL query as .csv file

   echo  "SELECT * FROM table; " | mysql -u root -p${MYSQLROOTPW} databasename | sed 's/\t/","/g;s/^/"/;s/$/"/;s/\n//g' > outfile.csv

##### Force a kernel panic

   echo  c > /proc/sysrq-trigger

##### Calculator on the go

   echo  2+3 |bc

##### Remove the first and the latest caracter of a string

   echo  foobar | sed -r 's/(^.|.$)//g'

##### Show seconds since modified of newest modified file in directory

   echo  $(( $( date +%s ) - $( stat -c %Y * | sort -nr | head -n 1 ) ))

##### Partition a new disk as all one partition tagged as "LInux LVM"

   echo  -e "n\np\n1\n\n\nt\n8e\nw" | fdisk /dev/sdX

##### Capitalize the word with dd

   echo  capitalize | { dd bs=1 count=1 conv=ucase 2> /dev/null; cat ;}

##### Sum files of certain extension in given directory

   echo  $(find <directory> -name '*.<extension>' -exec du -s {} \; | tee $(tty) | cut -f1 | tr '\n' '+') 0 | bc

##### Add a list of numbers

   echo  $((1+2+3+4))

##### convert a string from lower case into uppercase

   echo  lowercaseword  | tr  '[a-z]'   '[A-Z]'

##### Stores current working directory before exit and restores it on a new bash start

   echo  -e 'alias exit='\''pwd > ~/.lastdir;exit'\''\n[ -n "$(cat .lastdir 2>/dev/null)" ] && cd "$(cat .lastdir)"' >> ~/.bash_aliases

##### use perl instead of sed

   echo  "sed -e"|perl -pe 's/sed -e/perl -pe/'

##### Print text string vertically, one character per line.

   echo  Print text vertically|sed 's/\(.\)/\1\n/g'

##### A little bash daemon =)

   echo  "Starting Daemon"; ( while :; do sleep 15; echo "I am still running =]"; done ) & disown -h -ar $!

##### Terrorist threat level text

   echo  "Terrorist threat level: `sed $(perl -e "print int rand(99999)")"q;d" /usr/share/dict/words`"

##### Generate MD5 of string and output only the hash checksum

   echo  -n "String to get MD5" | md5sum | sed "s/  -//"

##### Count the days until the next holiday in Argentina.

   echo  Faltan `curl http://www.elproximoferiado.com.ar/index.php?country=AR -silent  | grep contador | cut -f2 -d">" | cut -f1 -d"<"` dias para el proximo feriado

##### Generate MD5 of string and output only the hash checksum

   echo  -n "String to MD5" | md5sum | awk '{print $1}'

##### Combo matrix

   echo  -e "CHECK=SAMPLE" output command_to_long

##### bookmarklet for commandlinefu.com search

   echo  "javascript:location.href='http://www.commandlinefu.com/commands/matching/'+encodeURIComponent('%s')+'/'+btoa('%s')+'/sort-by-votes'"

##### quick and easy way of validating a date format of yyyy-mm-dd and returning a boolean

   echo  2006-10-10  | grep -c '^[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]$'

##### Create nthash

   echo  -n "password" | iconv  -t utf-16le | openssl dgst -md4

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Use socat to create a largefile

   echo  | socat -u - file:/tmp/swapfile,create,largefile,seek=10000000000000

##### Lookaround in grep

   echo  "John's" | grep -Po '\b\w+(?<!s)\b'

##### Make all the cows tell a fortune

   echo  'Dir.foreach("/usr/local/Cellar/cowsay/3.03/share/cows") {|cow| puts cow; system "fortune | cowsay -f /usr/local/Cellar/cowsay/3.03/share/cows/#{cow}" }' | ruby

##### Check if variable is a number

   echo  $X | egrep "^[0-9]+$"

##### send echo to socket network

   echo  foo | ncat [ip address] [port]

##### displays a reminder message at the specified time

   echo  "DISPLAY=$DISPLAY xmessage convert db to innodb" | at 00:00

##### which domain controller the user currently logged onto

   echo  %logonserver%

##### Sort a list of numbers on on line, separated by spaces.

   echo  $numbers | sed "s/\( \|$\)/\n/g" | sort -nu | tr "\n" " " | sed -e "s/^ *//" -e "s/ $//"

##### a pseudo-random coin flip in python

   echo  "import random; print(random.choice(['heads', 'tails']))"  | python

##### regex to match an ip

   echo  127.0.0.1 | egrep -e '^(([01]?[0-9]{1,2}|2[0-4][0-9]|25[0-4])\.){3}([01]?[0-9]{1,2}|2[0-4][0-9]|25[0-4])$'

##### Echo exit status (a.k.a. return code)

   echo  $?

##### Sort a character string

   echo  sortmeplease | awk '{l=split($1,a,"");asort(a);while(x<=l){printf "%s",a[x];x++ }print "";}'

##### Add strikethrough to text

   echo  text | sed "s/\(.\)/\1-/g"

##### Greets the user appropriately

   echo  -e "12 morning\n15 afternoon\n24 evening" | awk '{if ('`date +%H`' < $1) print "Good " $2}'

##### before writing a new script

   echo  -n '#!'$(which awk)

##### Show last argument

   echo  !$

##### Improvement of curl + Twitter

   echo  "Set Twitter Status" ; read STATUS; curl -u user:pass -d status="$STATUS" http://twitter.com/statuses/update.xml

##### Emulate sleep in DOS/BAT

   echo  sleep() begins: %TIME% && FOR /l %a IN (10,-1,1) do (ECHO 1 >NUL %as&ping -n 2 -w 1 127.0.0.1>NUL) && echo sleep() end: %TIME%

##### Add a list of numbers

   echo  "1 2 3+p" | dc

##### Lowercase to Uppercase

   echo  "test" | sed 'y/abcdefghijklmnopqrstuvwxyz/ABCDEFGHIJKLMNOPQRSTUVWXYZ/'

##### A little bash daemon =)

   echo  "Starting Daemon"; ( while :; do sleep 15; echo "I am still running =]"; done ) & disown -h $!

##### Show directories in the PATH, one per line

   echo  src::${PATH} | awk 'BEGIN{pwd=ENVIRON["PWD"];RS=":";FS="\n"}!$1{$1=pwd}$1!~/^\//{$1=pwd"/"$1}{print $1}'

##### reset the bizzarre gone junk terminal to normal

   echo  "Xc" | tr "Xo" "\033\017

##### get a random number in bash

   echo  $[RANDOM % 100]  # range 0-99

##### Generate MD5 of string and output only the hash checksum

   echo  -n "String to MD5" | md5sum | cut -f1 -d' '

##### count number of CPU available for members of a given Virtual Organization

   echo  `lcg-infosites vo lhcb ce | cut -f 1| grep [[:digit:]]| tr '\n' '+' |sed -e 's/\ //g' -e 's/+$//'`|bc -l

##### read a file with table like data

   echo  1 2 3 > FILE; while read -a line; do echo ${line[2]}; done < FILE

##### Convert HH:MM:SS into seconds

   echo  00:29:36 | sed s/:/*60+/g | bc

##### Find the svn directory that a commit was made in.  Usefull if you have many projects in one repository.

   echo  "12345,12346" |sed -e's/ //'|tr "," "\n"| while read line; do  echo -n $line" "; svn log -vr $line https://url/to/svn/repository/|grep "/"|head -1|cut -d"/" -f2; done

##### Set an alarm to wake up [2]

   echo  "aplay path/to/song" |at [time]

##### a simple bash one-liner to create php file and call php function

   echo  '<?php echo str_rot13 ("Hello World") ?>' > hw.php && php hw.php && rm hw.php

##### view file content with echo

   echo  "$(</etc/issue)"

##### Add a custom package repository to apt sources.list

   echo  "[some repository]" | sudo tee -a /etc/apt/sources.list

##### repeat any string or char n times without spaces between

   echo  -e $_{1..80}'\b+'

##### List path of binaries

   echo  $PATH|awk -F: ' { for (i=1; i <= NF; i++) print $i }'

##### Disable ASLR

   echo  0 > /proc/sys/kernel/randomize_va_space

##### get linkspeed, ip-adress, mac-address and processor type from osx

   echo  "-" >> nicinfo.txt; echo "computer name x" >> nicinfo.txt; ifconfig | grep status >> nicinfo.txt; ifconfig | grep inet >> nicinfo.txt; ifconfig | grep ether >> nicinfo.txt; hostinfo | grep type >> nicinfo.txt;

##### regex to match an ip

   echo  "123.32.12.134" | grep -P '([01]?\d\d?|2[0-4]\d|25[0-5])\.([01]?\d\d?|2[0-4]\d|25[0-5])\.([01]?\d\d?|2[0-4]\d|25[0-5])\.([01]?\d\d?|2[0-4]\d|25[0-5])'

##### shutdown pc in a 4 hours

   echo  "shutdown -h now" | sudo at now + 4 hours

##### Automatd ssh public key setup without ssh-copy-id

   echo  'Host or User@Host?:'; read newserver && ssh-keygen -N "" -t rsa -f ~/.ssh/id_rsa ; ssh $newserver cat <~/.ssh/id_rsa.pub ">>" ~/.ssh/authorized_keys ; ssh $newserver

##### Facebook e-mail header X-Facebook IP deobfuscator

   echo  "X-Facebook: from zuckmail ([MTI3LjAuMC4x])" | cut -d \[ -f 2 | cut -d \] -f 1 | openssl base64 -d

##### How to execute and encrypted and password-protected bash script?

   echo  "ls" > script.bash; gpg -c script.bash; cat script.bash.gpg | gpg -d no-mdc-warning | bash

##### Rickroll your users who try to sudo

   echo  "alias sudo=\"aplay annoyingsoundfile.ogg\"" >> .bash_aliases

##### Get the rough (german) time from Twitter

   echo  -e "Berlin Date/Time is" `TZ=GMT-2 /bin/date \+%c`

##### Get your external IP address

   echo  -e "GET /ip HTTP/1.0\nUser-Agent: netcat\nHOST: ifconfig.me\n\n" | nc ifconfig.me 80 | sed -n '/^[0-9]/p'

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Perl One Liner to Generate a Random IP Address

   echo  $((RANDOM%256)).$((RANDOM%256)).$((RANDOM%256)).$((RANDOM%256))

##### show ls colors with demo

   echo  $LS_COLORS | sed 's/:/\n/g' | awk -F= '!/^$/{printf("%s \x1b[%smdemo\x1b[0m\n",$0,$2)}'

##### permanently let grep colorize its output

   echo  alias grep=\'grep color=auto\' >> ~/.bashrc ; . ~/.bashrc

##### Convert unix timestamp to date

   echo  $EPOCH|awk '{print strftime("%c",$1)}'

##### Add a list of numbers

   echo  "1+2+3+4" | bc

##### Print out "string" between "match1" and "match2"

   echo  "string" | sed -e 's/.*match1//' -e 's/match2.*$//'

##### Base64 decode

   echo  Y29tbWFuZGxpbmUuZnUgcm9ja3MK | base64 -d

##### Partition a new disk as all one partition tagged as

   echo  -e "o\nn\np\n1\n\n\nw\n" | fdisk /dev/sdX

##### Join lines

   echo  -e "aa\nbb\ncc\ndd\n123" | sed -e :a -e "/$/N; s/\n/;/; ta"

##### Figure out what shell you're running

   echo  $SHELL

##### Testing php configuration

   echo  "<?php phpinfo(); ?>" >> /srv/www/htdocs/test.php

##### Selecting a random file/folder of a folder

   echo  Selected $(ls -1 | sort -R | head -n 1)

##### lotto generator

   echo  $(shuf -i 1-49 | head -n6 | sort -n)

##### use a literal bang (exclamation point) in a command

   echo  '!'whammy

##### Encoding with base64

   echo  "Hello world" | base64

##### mkdir & cd into it as single command

   echo  'mkcd() { mkdir -p "$@" && cd "$_"; }' >> ~/.bashrc

##### SSH RPC (transparently run command on remote host)

   echo  -e '#!/bin/bash\nssh remote-user@remote-host $0 "$@"' >> /usr/local/bin/ssh-rpc; chmod +x /usr/local/bin/ssh-rpc; ln -s hostname /usr/local/bin/ssh-rpc; hostname

##### Get Futurama quotations from slashdot.org servers

   echo  -e "HEAD / HTTP/1.1\nHost: slashdot.org\n\n" | nc slashdot.org 80 | head -n5 | tail -1 | cut -f2 -d-

##### Figure out what shell you're running

   echo  $SHELL

##### free up memory

   echo  3 > /proc/sys/vm/drop_caches

##### grep 'hoge' **/*  => Argument list too long

   echo  **/* | xargs grep 'hoge'

##### Visit wikileaks.com

   echo  213.251.145.96 wikileaks.com | sudo tee -a /etc/hosts

##### Get your external IP address

   echo  -e "GET /automation/n09230945.asp HTTP/1.0\r\nHost: whatismyip.com\r\n" | nc whatismyip.com 80 | tail -n1

##### Random Number Between 1 And X

   echo  "$(od -An -N4 -tu4 /dev/urandom) % 5 + 1" | bc

##### Press Any Key to Continue

   echo  -n "Press any key to continue..." && read

##### Use tee to process a pipe with two or more processes

   echo  "tee can split a pipe in two"|tee >(rev) >(tr ' ' '_')

##### Force machine to reboot no matter what (even if /sbin/shutdown is hanging)

   echo  1 > /proc/sys/kernel/sysrq; echo b > /proc/sysrq-trigger

##### Synthesize text as speech

   echo  "hello world"  | festival tts

##### stop man  page content from disappearing on exit

   echo  "export LESS='FiX'" >> ~/.bashrc

##### before writing a new script

   echo  '#!'$(which bash) > script.sh

##### Convert the first character of a string to uppercase

   echo  'example' | sed -e 's/^\(.\)/\U\1/'

##### Clear your history saved into .bash_history file!

   echo  "" > .bash_history

##### Go to the Nth line of file

   echo  "13" | ed /etc/services

##### Count your Twit length before posting

   echo  "<your twit>" | wc -c -

##### Convert HH:MM:SS into seconds

   echo  00:29:36 | nawk -F: '{seconds=($1*60)*60; seconds=seconds+($2*60); seconds=seconds+$3; print seconds}'

##### View the newest xkcd comic.

   echo  alias xkcd="gwenview `w3m -dump http://xkcd.com/|grep png | awk '{print $5}'` 2> /dev/null" >> .bashrc

##### A faster ls

   echo  *

##### Use md5 to generate a pretty hard to crack password

   echo  "A great password" | md5sum

##### Run a command at a certain time

   echo  ?ls -l? | at 10am Jul 21

##### Run a command at a certain time #2

   echo  ?ls -l? | at midnight

##### doing some math...

   echo  1+1|bc

##### Bash logger

   echo  -en "$USER@$HOSTNAME:${PWD##*/}> ";while read x;do echo $x>>/tmp/log.txt;echo $x|$0 2>&1;echo -en "$USER@$HOSTNAME:${PWD##*/}> ";done

##### Random unsigned integer

   echo  $RANDOM

##### know the current running shell (the true)

   echo  $0

##### empty a file

   echo  > filename

##### How to Disable SELinux

   echo  0 >/selinux/enforce

##### (windows) Append date and Time to a file name use ren temp.txt instead of echo

   echo  tmp%date:~4,2%-%date:~7,2%-%date:~10,4%_%time%

##### floating point operations in shell scripts

   echo  $((3.0/5.0))

##### Which Version Is My Bash Shell?

   echo  $BASH_VERSION

##### Quickly create simple text file from command line w/o using vi/emacs

   echo  "your text" > filename

##### get your public ip address

   echo  -e "Content-type: text/plain\n\n$REMOTE_ADDR"

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### log your PC's motherboard and CPU temperature along with the current date

   echo  `date +%m/%d/%y%X |awk '{print $1;}' `" => "` cat /proc/acpi/thermal_zone/THRM/temperature | awk '{print $2, $3;}'` >> datetmp.log

##### convert unixtime to human-readable with awk

   echo  1234567890 | awk '{ print strftime("%c", $0); }'

##### Remove "ssh host"  from known hosts file.

   echo  "${1}" | egrep '^[[:digit:]]*$' ; if [ "$?" -eq 0 ] ; then sed -i "${1}"d $HOME/.ssh/known_hosts ; else printf "\tYou must enter a number!\n\n" ; exit 1 ; fi

##### Add a line for your username in the /etc/sudoers file, allowing you to sudo in Fedora

   echo  'loginname ALL=(ALL) ALL' >> /etc/sudoers

##### Empty a file

   echo  "" > filr.txt

##### Reboot as a different OS in Grub

   echo  "savedefault default=2 once" | grub batch; sudo reboot

##### find out how many days since given date

   echo  $((($(date +%s)-$(date +%s -d "march 1"))/86400))

##### Terminal Keyboard Shortcut list

   echo  -e "Terminal shortcut keys\n" && sed -e 's/\^/Ctrl+/g;s/M-/Shift+/g' <(stty -a 2>&1| sed -e 's/;/\n/g' | grep "\^" | tr -d ' ')

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Create a script of the last executed command

   echo  "!!" > foo.sh

##### Url Encode

   echo  "$url" | perl -MURI::Escape -ne 'chomp;print uri_escape($_),"\n"'

##### Find all dot files and directories

   echo  .*

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Create a script of the last executed command

   echo  "!!" > foo.sh

##### check site ssl certificate dates

   echo  | openssl s_client -connect www.google.com:443 2>/dev/null |openssl x509 -dates -noout

##### Given a file path, unplug the USB device on which the file is located (the file must be on an USB device !)

   echo  $(sudo lshw -businfo | grep -B 1 -m 1 $(df "/path/to/file" | tail -1 | awk '{print $1}' | cut -c 6-8) | head -n 1 | awk '{print $1}' | cut -c 5- | tr ":" "-") | sudo tee /sys/bus/usb/drivers/usb/unbind

##### Get the IP of the host your coming from when logged in remotely

   echo  ${SSH_CLIENT%% *}

##### Random Number Between 1 And X

   echo  $[RANDOM%X+1]

##### get cookies from firefox

   echo  ".mode tabs select host, case when host glob '.*' then 'TRUE' else 'FALSE' end, path, case when isSecure then 'TRUE' else 'FALSE' end, expiry, name, value from moz_cookies;" | sqlite3 ~/.mozilla/firefox/*.default/cookies.sqlite

##### enumerate with padding

   echo  {001..5}

##### Count the number of queries to a MySQL server

   echo  "SHOW PROCESSLIST\G" | mysql -u root -p | grep "Info:" | awk -F":" '{count[$NF]++}END{for(i in count){printf("%d: %s\n", count[i], i)}}' | sort -n

##### Change newline to space in a file just using echo

   echo  $(</tmp/foo)

##### Avoids ssh timeouts by sending a keep alive message to the server every 60 seconds

   echo  'ServerAliveInterval 60' >> /etc/ssh/ssh_config

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Create a script of the last executed command

   echo  "!!" > foo.sh

##### Display text as though it is being typed out in real time

   echo  "text to be displayed" | pv -qL 10

##### Let your computer lull you to sleep

   echo  {1..199}" sheep," | espeak -v english -s 80

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Create a script of the last executed command

   echo  "!!" > foo.sh

##### Get Futurama quotations from slashdot.org servers

   echo  -e "HEAD / HTTP/1.1\nHost: slashdot.org\n\n" | nc slashdot.org 80 | egrep "Bender|Fry" | sed "s/X-//"

##### Prepend text to a file

   echo  "text to prepend" | cat - file

##### Show exit status of all portions of a piped command eg. ls |this_doesn't_exist |wc

   echo  ${PIPESTATUS[@]}

##### Changes standard mysql client output to 'less'.

   echo  -e "[mysql]\npager=less -niSFX" >> ~/.my.cnf

##### Output as many input

   echo  'foo' | tee >(wc -c) >(grep o) >(grep f)

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Create a script of the last executed command

   echo  "!!" > foo.sh

##### Disable beep sound from your computer

   echo  "blacklist pcspkr"|sudo tee -a /etc/modprobe.d/blacklist.conf

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Create a script of the last executed command

   echo  "!!" > foo.sh

##### Backticks are evil

   echo  "The date is: $(date +%D)"

##### Change the window title of your xterm

   echo  "^[]0;My_Title_Goes _Here^G"

##### for too many arguments by *

   echo  *.log | xargs <command>

##### Happy Days

   echo  {'1,2,3',4}" o'clock" ROCK

##### Execute a command at a given time

   echo  "ls -l" | at midnight

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Create a script of the last executed command

   echo  "!!" > foo.sh

##### Backticks are evil

   echo  "The date is: $(date +%D)"

##### 'hpc' in the shell - starts a maximum of n compute commands modulo n controlled in parallel, using make

   echo  -n 'targets = $(subst .png,.jpg,$(wildcard *.png))\n$(targets):\n     convert $(subst .jpg,.png,$@) $@ \nall : $(targets)' | make -j 4 -f - all

##### Encrypt and password-protect execution of any bash script

   echo  "eval \"\$(dd if=\$0 bs=1 skip=XX 2>/dev/null|gpg -d 2>/dev/null)\"; exit" > script.secure; sed -i s:XX:$(stat -c%s script.secure): script.secure; gpg -c < script.bash >> script.secure; chmod +x script.secure

##### Simulate typing

   echo  "You can have a bit more realistic typing with some shell magic." | pv -qL $[10+(-2 + RANDOM%5)]

##### Found how how much memory in kB $PID is occupying in Linux

   echo  0$(awk '/Pss/ {printf "+"$2}' /proc/$PID/smaps)|bc

##### draw matrix using dot

   echo  'graph{node[shape=record];rankdir=LR;matrix[label="{1|2|3}|{4|5|6}|{7|8|9}",color=red]}' | dot -Tpng | display

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Create a script of the last executed command

   echo  "!!" > foo.sh

##### Backticks are evil

   echo  "The date is: $(date +%D)"

##### Capitalize first letter of each word in a string

   echo  'fOo BaR' | tr '[A-Z]' '[a-z]' | sed 's/\(^\| \)\([a-z]\)/\1\u\2/g'

##### Send a signed and encrypted email from the command line

   echo  "SECRET MESSAGE" | gpg -e armor -s | sendmail USER@DOMAIN.COM

##### convert ascii string to hex

   echo  $ascii | perl -ne 'printf "%x", ord for split //'

##### Another Matrix Style Implementation

   echo  -ne "\e[32m" ; while true ; do echo -ne "\e[$(($RANDOM % 2 + 1))m" ; tr -c "[:print:]" " " < /dev/urandom | dd count=1 bs=50 2> /dev/null ; done

##### Set laptop display brightness

   echo  <percentage> > /proc/acpi/video/VGA/LCD/brightness

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Create a script of the last executed command

   echo  "!!" > foo.sh

##### Backticks are evil

   echo  "The date is: $(date +%D)"

##### Binary digits Matrix effect

   echo  -e "\e[32m"; while :; do printf '%*c' $(($RANDOM % 30)) $(($RANDOM % 2)); done

##### send echo to socket network

   echo  "foo" > /dev/tcp/192.168.1.2/25

##### camelcase to underscore

   echo  thisIsATest | sed -E 's/([A-Z])/_\L\1/g'

##### Simulate typing

   echo  "pretty realistic virtual typing" | randtype -m 4

##### get a random 0/1, use it for on/off, yes/no

   echo  $[RANDOM % 2]

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Create a script of the last executed command

   echo  "!!" > foo.sh

##### Backticks are evil

   echo  "The date is: $(date +%D)"

##### Boot another OS at next startup

   echo  "savedefault default=2 once" | grub batch; sudo reboot

##### Tweak system files without invoking a root shell

   echo  "Whatever you need" | sudo tee [-a] /etc/system-file.cfg

##### I finally found out how to use notify-send with at or cron

   echo  notify-send test | at now+1minute

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Create a script of the last executed command

   echo  "!!" > foo.sh

##### Backticks are evil

   echo  "The date is: $(date +%D)"

##### Search shoutcast web radio by keyword

   echo  "Keyword?";read keyword;query="http://www.shoutcast.com/sbin/newxml.phtml?search="$keyword"";curl -s $query |awk -F '"' 'NR <= 4 {next}NR>15{exit}{sub(/SHOUTcast.com/,"http://yp.shoutcast.com/sbin/tunein-station.pls?id="$6)}{print i++" )"$2}'

##### Happy Days

   echo  {1..3}" o'clock" ROCK

##### Show a random oneliner from commandlinefu.com

   echo  -e "`curl -sL http://www.commandlinefu.com/commands/random/json|sed -re 's/.*,"command":"(.*)","summary":"([^"]+).*/\\x1b[1;32m\2\\n\\n\\x1b[1;33m\1\\x1b[0m/g'`\n"

##### Your name backwards

   echo  "$USER"|rev | espeak

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Create a script of the last executed command

   echo  "!!" > foo.sh

##### Backticks are evil

   echo  "The date is: $(date +%D)"

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Create a script of the last executed command

   echo  "!!" > foo.sh

##### Backticks are evil

   echo  "The date is: $(date +%D)"

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Create a script of the last executed command

   echo  "!!" > foo.sh

##### Backticks are evil

   echo  "The date is: $(date +%D)"

##### GRUB2: set Super Mario as startup tune

   echo  "GRUB_INIT_TUNE=\"1000 334 1 334 1 0 1 334 1 0 1 261 1 334 1 0 1 392 2 0 4 196 2\"" | sudo tee -a /etc/default/grub > /dev/null && sudo update-grub

##### Using json.tool from the shell to validate and pretty-print

   echo  '{"json":"obj"}' | python -mjson.tool

##### Dump sqlite database to plain text format

   echo  '.dump' | sqlite3 your_sqlite.db > your_sqlite_text.txt

##### Convert ascii string to hex

   echo  -n "text" | od -A n -t x1 |sed 's/ /\\x/g'

##### Pipe text from shell to windows cut and paste buffer using PuTTY and XMing.

   echo  "I'm going to paste this into WINDERS XP" | xsel -i

##### Change Title of Terminal Window to Verbose Info useful at Login

   echo  -ne "\033]0;`id -un`:`id -gn`@`hostname||uname -n|sed 1q` `who -m|sed -e "s%^.* \(pts/[0-9]*\).*(\(.*\))%[\1] (\2)%g"` [`uptime|sed -e "s/.*: \([^,]*\).*/\1/" -e "s/ //g"` / `ps aux|wc -l`]\007"

##### Console clock  within screen

   echo  'hardstatus alwayslastline " %d-%m-%y %c:%s | %w"' >> $HOME/.screenrc; screen

##### Add strikethrough to text

   echo  text | sed $"s/./&\xCC\xB6/g"

##### Hex math with bc

   echo  'obase=16; C+F' | bc

##### Find files and calculate size of result in shell

   echo  $(($(find . -name "pattern" -type f -printf "+%s")))

##### your terminal sings

   echo  {1..199}" bottles of beer on the wall, cold bottle of beer, take one down, pass it around, one less bottle of beer on the wall,, " | espeak -v english -s 140

##### Matrix Style

   echo  -e "\e[32m"; while :; do for i in {1..16}; do r="$(($RANDOM % 2))"; if [[ $(($RANDOM % 5)) == 1 ]]; then if [[ $(($RANDOM % 4)) == 1 ]]; then v+="\e[1m $r   "; else v+="\e[2m $r   "; fi; else v+="     "; fi; done; echo -e "$v"; v=""; done

##### I finally found out how to use notify-send with at or cron

   echo  "export DISPLAY=:0; export XAUTHORITY=~/.Xauthority; notify-send test" | at now+1minute

##### Base conversions with bc

   echo  "obase=2; 27" | bc -l

##### Connect to TCP port 5000, transfer data and close connexion.

   echo  data | nc -q 0 host 5000

##### floating point operations in shell scripts

   echo  "scale=4; 3 / 5" | bc

##### Converts uppercase chars in a string to lowercase

   echo  StrinG | tr '[:upper:]' '[:lower:]'

##### Random number generation within a range N, here N=10

   echo  $(( $RANDOM % 10 + 1 ))

##### Check the current price of Bitcoin in USD

   echo  "1 BTC = $(curl -s https://api.coindesk.com/v1/bpi/currentprice/usd.json | grep -o 'rate":"[^"]*' | cut -d\" -f3) USD"

##### memcache affinity: queries local memcached for stats, calculates hit/get ratio and prints it out.

   echo  -en "stats\r\n" "quit\r\n" | nc localhost 11211 | tr -s [:cntrl:] " "| cut -f42,48 -d" " | sed "s/\([0-9]*\)\s\([0-9]*\)/ \2\/\1*100/" | bc -l

##### Print text string vertically, one character per line.

   echo  "vertical text" | fold -1

##### Execute a command at a given time

   echo  "ls -l" | at midnight

##### Stamp a text line on top of the pdf pages.

   echo  "This text gets stamped on the top of the pdf pages." | enscript -B -f Courier-Bold16 -o- | ps2pdf - | pdftk input.pdf stamp - output output.pdf

##### repeat any string or char n times without spaces between

   echo  -e ''$_{1..80}'\b+'

##### Add a line to a file using sudo

   echo  "foo bar" | sudo tee -a /path/to/some/file

##### SMS reminder

   echo  'mail -s "Call your wife" 13125551234@tmomail.net' |at now+15min

##### Get the current gold price

   echo  "Gold price is" $(wget https://rate-exchange-1.appspot.com/currency\?from=XAU\&to=USD -q -O - | jq ".rate") "USD"

##### Generate Sha1, MD5 hash using echo

   echo  -n "password"|md5sum|awk '{print $1}'

##### How many days until the end of the year

   echo  "There are $(($(date +%j -d"Dec 31, $(date +%Y)")-$(date +%j))) left in year $(date +%Y)."

##### using tee to echo to a system file with sudo privileges

   echo  ondemand | sudo tee /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor

##### Simulate typing but with mistakes

   echo  -e "You are a jerk\b\b\b\bwonderful person" | pv -qL $[10+(-2 + RANDOM%5)]

##### force a rescan on a host of scsi devices (useful for adding partitions to vmware on the fly)

   echo  "- - -" > /sys/class/scsi_host/host0/scan

##### Generate a Google maps URL for GPS location data from digital photo

   echo  "https://www.google.com/maps/place/$(exiftool  -ee -p '$gpslatitude, $gpslongitude' -c "%d?%d'%.2f"\" image.jpg 2> /dev/null | sed -e "s/ //g")"

##### Convert text to picture

   echo  -e "Some Text Line1\nSome Text Line 2" | convert -background none -density 196  -resample 72 -unsharp 0x.5 -font "Courier" text:- -trim +repage -bordercolor white -border 3  text.gif

##### Binary clock

   echo  "10 i 2 o $(date +"%H%M"|cut -b 1,2,3,4 output-delimiter=' ') f"|dc|tac|xargs printf "%04d\n"|tr "01" ".*"

##### copy last command to clipboard

   echo  "!!" | pbcopy

##### Scan for new SCSI devices

   echo  "- - -" > /sys/class/scsi_host/host0/scan

##### find out how many days since given date

   echo  "($(date +%s)-$(date +%s -d "march 1"))/86400"|bc

##### Convert string to uppercase

   echo  string | tr '[:lower:]' '[:upper:]'

##### Size (in bytes) of all RPM packages installed

   echo  $((`rpm -qa queryformat='%{SIZE}+' | sed 's/+$//'`))

##### doing some floating point math

   echo  "8000000/(20*6*86400)" | bc -l

##### Show all the available information about your current distribution, package management and base

   echo  /etc/*_ver* /etc/*-rel*; cat /etc/*_ver* /etc/*-rel*

##### Force hard reset on server

   echo  1 > /proc/sys/kernel/sysrq; echo b > /proc/sysrq-trigger

##### cooking a list of numbers for calculation

   echo  $( du -sm /var/log/* | cut -f 1 ) | sed 's/ /+/g'

##### Show memory stats on Nexenta/Solaris

   echo  ::memstat | mdb -k

##### convert from hexidecimal or octal to decimal

   echo  $((0x1fe)) $((033))

##### Convert seconds into minutes and seconds

   echo  'obase=60;299' | bc

##### send a circular

   echo  "dear admin, please ban eribsskog" | wall

##### Visit wikileaks.com

   echo  213.251.145.96 wikileaks.com >>/etc/hosts

##### Check if it's your binary birthday!

   echo  "obase=2;$((($(date +%s)-$(date +%s -d YYYY-MM-DD))/86400))" | bc

##### Prettify XML in pipeline

   echo  '<foo><bar/></foo>' | xmllint format -

##### Matrix Style

   echo  -e "\e[31m"; while $t; do for i in `seq 1 30`;do r="$[($RANDOM % 2)]";h="$[($RANDOM % 4)]";if [ $h -eq 1 ]; then v="\e[1m $r";else v="\e[2m $r";fi;v2="$v2 $v";done;echo -e $v2;v2="";done;

##### Use a regex as a field separator awk

   echo  one 22 three | awk -F'[0-9][0-9]' '{print $2}'

##### faster version of ls *

   echo  *

##### This is N5 sorta like rot13 but with numbers only

   echo  "$1" | xxd -p | tr '0-9' '5-90-6'; echo "$1" | tr '0-9' '5-90-6' | xxd -r -p

##### Create a list of binary numbers

   echo  {0..1}{0..1}{0..1}{0..1}

##### Quickly generate an MD5 hash for a text string using OpenSSL

   echo  -n 'text to be encrypted' | openssl md5

##### HTML5 ogg player

   echo  '<html><body><table>' > /tmp/bar.html && find / -name '*.ogg' | sort | awk '{print "<tr><td>"$1"</td><td><audio src=\""$1"\" controls='controls'></audio></td></tr>" }' >> /tmp/bar.html &&  echo '</table></body></html>' >> /tmp/bar.html

##### pipe output to notify-send

   echo  'Desktop SPAM!!!' | while read SPAM_OUT; do notify-send "$SPAM_OUT"; done

##### convert hex to decimal ; decimal to hex

   echo  16i `echo "F" | tr '[a-f]' '[A-F]'` p | dc ; echo 16o "15" p | dc

##### convert strings toupper/tolower with tr

   echo  "aBcDeFgH123" | tr a-z A-Z

##### Running a command at a specific time

   echo  "notify-send TimeToQuit" | at 10:22

##### Execute a command at a given time

   echo  "DISPLAY=$DISPLAY xmessage call the client" | at 10:00

##### calculate in commandline with bash

   echo  $(( 1+1 ))

##### Quick calculator at the terminal

   echo  "$math_expr" | bc -l

##### print line and execute it in BASH

   echo  <command>; !#:0-$

##### send echo to socket network

   echo  foo | netcat 192.168.1.2 25

##### Generate an XKCD #936 style 4 word password

   echo  $(grep "^[^']\{3,5\}$" /usr/share/dict/words|shuf -n4)

##### Display your ${PATH}, one directory per line

   echo  $PATH | tr : \\n

##### GRUB2: Set Imperial Death March as startup tune

   echo  "GRUB_INIT_TUNE=\"480 440 4 440 4 440 4 349 3 523 1 440 4 349 3 523 1 440 8 659 4 659 4 659 4 698 3 523 1 415 4 349 3 523 1 440 8"\"" | sudo tee -a /etc/default/grub > /dev/null && sudo update-grub

##### Execute a command at a given time

   echo  "ls -l" | at midnight

##### Figure out what shell you're running

   echo  $0

##### Create a random password encrypted with md5 with custom lenght

   echo  -n $mypass | md5sum | awk {'print $1'}

##### Set laptop display brightness

   echo  <percentage> | sudo dd of=/proc/acpi/video/VGA/LCD/brightness

##### Calculate N!

   echo  $(( $(echo 1 "* "{2..10}) ))

##### Find out current working directory of a process

   echo  COMMAND | xargs -ixxx ps -C xxx -o pid= | xargs -ixxx ls -l /proc/xxx/cwd

##### Binary injection

   echo  -n $HEXBYTES | xxd -r -p | dd of=$FILE seek=$((0x$OFFSET)) bs=1 conv=notrunc

##### echo unicode characters

   echo  -e \\u2620

##### Bytebeat

   echo  'main(t){for(;;t++)putchar(((t<<1)^((t<<1)+(t>>7)&t>>12))|t>>(4-(1^7&(t>>19)))|t>>7);}' | cc -x c - -o crowd && ./crowd | aplay

##### Convert a string to "Title Case"

   echo  'This is a TEST' | sed 's/[^ ]\+/\L\u&/g'

##### Quickly build ulimit command from current values

   echo  "ulimit `ulimit -a|sed -e 's/^.*\([a-z]\))\(.*\)$/-\1\2/'|tr "\n" ' '`"

##### Generate trigonometric/log data easily

   echo  "e("{1..8}");" | bc -l

##### get you public ip address

   echo  $(curl -s http://ipwhats.appspot.com/)

##### "I Feel Lucky" for Google Images

   echo  -n "search> ";read QUERY && wget -O - `wget -O - -U "Mozilla/5.0" "http://images.google.com/images?q=${QUERY}" 2>/dev/null |sed -e 's/","http/\n","http/g' |awk -F \" '{print $3}' |grep -i http: |head -1` > "$QUERY"

##### floating point operations in shell scripts

   echo  "5 k 3 5 / p" | dc

##### lotto generator

   echo  $(shuf -n 6 -i 1-49 | sort -n)

##### convert a line to a space

   echo  $(cat file)

##### quick integer CPU benchmark

   echo  '2^2^20' | time bc > /dev/null

##### Url Encode

   echo  "$@" | sed 's/ /%20/g;s/!/%21/g;s/"/%22/g;s/#/%23/g;s/\$/%24/g;s/\&/%26/g;s/'\''/%27/g;s/(/%28/g;s/)/%29/g;s/:/%3A/g'

##### Sed can refference parts of the pattern in the replacement:

   echo  -e "swap=me\n1=2"|sed 's/\(.*\)=\(.*\)/\2=\1/g'

##### underscore to camelcase

   echo  "this_is_a_test" | sed -r 's/_([a-z])/\U\1/g'

##### auto terminal title change

   echo  -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"

##### Color man pages

   echo  "export LESS_TERMCAP_mb=$'\E[01;31m'" >> ~/.bashrc

##### run command on a group of nodes in parallel

   echo  "uptime" | pee "ssh host1" "ssh host2" "ssh host3"

##### Generate a random text color in bash

   echo  -e "\e[3$(( $RANDOM * 6 / 32767 + 1 ))mHello World!"

##### Schedule a script or command in x num hours, silently run in the background even if logged out

   echo  "nohup command rm -rf /phpsessions 1>&2 &>/dev/null 1>&2 &>/dev/null&" | at now + 3 hours 1>&2 &>/dev/null

##### camelcase to underscore

   echo  thisIsATest | sed -r 's/([A-Z])/_\L\1/g'

##### Merge bash terminal histories

   echo  'export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"' >> .bashrc

##### Print the contents of $VARIABLE, six words at a time

   echo  $VARIABLE | xargs -d'\40' -n 6 echo

##### List the most recent dates in reverse-chronological order

   echo  {-1..-5}days | xargs -n1 date +"%Y-%m-%d" -d

##### convert ascii string to hex

   echo  $ascii | perl -ne 'printf ("%x", ord($1)) while(/(.)/g); print "\n";'

##### Combines an arbitrary number of transparent png files into one file

   echo  -n "convert " > itcombino.sh; printf "IMG_%00004u.png " {1..1121} >> itcombino.sh; echo -n "-layers merge _final.png" >> itcombino.sh; chmod +x itcombino.sh && ./itcombino.sh

##### Shows how many percents of all avaliable packages are installed in your gentoo system

   echo  $((`eix only-names -I | wc -l` * 100 / `eix only-names | wc -l`))%

##### Get the gravatar UTL for a given email address

   echo  -n test@example.com | md5sum | (read hash dash ; echo "https://secure.gravatar.com/avatar/${hash}")

##### Generate random number with shuf

   echo  $((RANDOM % 10 + 1))

##### Python extract json

   echo  "[{"Name": "bar"}]" | python -c 'import json,sys;obj=json.load(sys.stdin);print(obj[0]["Name"]);')

##### Protect against buffer overflow

   echo  16384 > /proc/sys/net/ipv4/neigh/default/gc_thresh1; echo 32768 > /proc/sys/net/ipv4/neigh/default/gc_thresh2; echo 65535 > /proc/sys/net/ipv4/neigh/default/gc_thresh3; echo 1 > /proc/sys/net/ipv4/icmp_ignore_bogus_error_responses

##### Show directories in the PATH, one per line

   echo  $PATH | tr \: \\n

##### echo something backwards

   echo  linux|rev

##### generate random ascii shape(no x11 needed!)

   echo  'set term dumb; unset border; unset xtics; unset ytics; p "< seq 10 | shuf" u 1:(rand(0)) w l notitle' | gnuplot

##### Terrorist threat level text

   echo  "Terrorist threat level: $(wget -q  -O - http://is.gd/wacQtQ | tail -n 1 | awk -F\" '{ print $2 }')"

##### power off system in X hours form the current time, here X=2

   echo  init 0 | at now + 2 hours

##### create random string from /dev/urandom (or another length)

   echo  `cat /dev/urandom |tr -dc "[:alnum:]" | head -c64`

##### Using numsum to sum a column of numbers.

   echo  $(( $( cat count.txt | tr "\n" "+" | xargs -I{} echo {} 0  ) ))

##### Execute a command at a given time

   echo  "ls -l" | at midnight

##### run command on a group of nodes in parallel

   echo  "uptime" | tee >(ssh host1) >(ssh host2) >(ssh host3)

##### Anti Syn Ddos

   echo  1 > /proc/sys/net/ipv4/tcp_syncookies echo 1 > /proc/sys/net/ipv4/ip_forward iptables -A FORWARD -p tcp ?syn -m limit -j ACCEPT

##### Generate MD5 of string and output only the hash checksum in a readable format

   echo  -n "String to MD5" | md5sum | sed -e 's/[0-9a-f]\{2\}/& /g' -e 's/  -//'

##### Quickly generate an MD5 hash for a text string using OpenSSL

   echo  -n 'the_password' | md5sum -

##### Generate MD5 of string and output only the hash checksum

   echo  -n "String to MD5" | md5sum | cut -b-32

##### gets your public IP address

   echo  $(curl http://ipecho.net/plain 2> /dev/null)

##### Create an alias, store it in ~/.bash_aliases and source your new alias into the ~/.bashrc

   echo  "alias topu='top -u USERNAME'" >>  ~/.bash_aliases && source .bashrc

##### Suspend to ram

   echo  mem|sudo tee /sys/power/state

##### Calculate pi with specific scale

   echo  'scale=10; 4*a(1)' | bc -l

##### run command on a group of nodes in parallel

   echo  -n m{1..5}.cluster.net | xargs -d' ' -n1 -P5 -I{} ssh {} 'uptime'

##### Get the SAN (subjectAltName) of a site's certificate.

   echo  "quit" | openssl s_client -connect facebook.com:443 | openssl x509 -noout -text | grep "DNS:" | perl -pe "s/(, )?DNS:/\n/g"

##### generate random number

   echo  $RANDOM

##### underscore to camelCase

   echo  "hello_world" | sed -r 's/([a-z]+)_([a-z])([a-z]+)/\1\U\2\L\3/'

##### Count the number of characters in a string from the standard input.

   echo  -n "foo" | wc -c

##### sum numbers in the file (or stdin)

   echo  $(($(tr '\n' '+')0))

##### Show directories in the PATH, one per line

   echo  "${PATH//:/$'\n'}"

##### generate a telephone keypad

   echo  {1..9} '* 0 #' | tr ' ' '\n' |paste - - -

##### List files with full path

   echo  $PWD/*

##### Run a command multiple times with different subcommands

   echo  apt-get\ {update,-y\ upgrade}\ \&\& true | sudo bash

##### Set all CPU cores' CPU frequency scaling governor to maximum performance

   echo  performance |sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor

##### An alarm clock using xmms2 and at

   echo  "xmms2 play" | at 6:00

##### "Pretty print" $PATH, separate path per line

   echo  $PATH | tr -s ':' '\n'

##### Convert from a decimal number to a binary number

   echo  'ibase=10; obase=2; 127' | bc

##### Pretty print SQL query with python in one line

   echo  "select a, b, c from table where a = 3;"| python -c "import sys;import sqlparse;print sqlparse.format(sys.stdin.read(),  reindent=True, keyword_case='upper')"

##### A formatting test for David Winterbottom: improving commandlinefu for submitters

   echo  "?????, these are the umlauted vowels I sing to you. Oh, and sometimes ?, but I don't sing that one cause it doesn't rhyme."

##### Rescan partitions on a SCSI device

   echo  "w" | fdisk /dev/sdb

##### Sort a character string

   echo  sortmeplease | perl -pe 'chomp; $_ = join "", sort split //'

##### Validating a file with checksum

   echo  'c84fa6b830e38ee8a551df61172d53d7  myfile' | md5sum -c

##### convert chinese character into wubi86 input code

   echo  Your_Chinese_Char | uniconv -encode Chinese-WB

##### Salvage a borked terminal

   echo  <ctrl+v><ctrl+o><enter>

##### convert a,b,c to ('a','b','c') for use in SQL in-clauses

   echo  a,b,c  | sed -e s/,/\',\'/g  -e s/^/\(\'/ -e s/$/\'\)/

##### Squish repeated delimiters into one

   echo  "hello::::there" | tr -s ':'

##### Calculate N!

   echo  $(($(seq -s* 10)))

##### Change a specific value in a path

   echo  /home/foo/dir1/bar |  awk -F/ -v OFS=/ '{$3 = "dir2"}1'

##### Convert ascii string to hex

   echo  -n 'text' | xxd -ps | sed -e ':a' -e 's/\([0-9]\{2\}\|^\)\([0-9]\{2\}\)/\1\\x\2/;ta'

##### Disassemble some shell code

   echo  -ne "<shellcode>" | x86dis -e 0 -s intel

##### flush memcached via netcat

   echo  'flush_all' | nc localhost 11211 -i1 <<< 'quit'

##### Get a qrcode for a given string

   echo  "http://commandlinefu.com" | curl -F-=\<- qrenco.de

##### set a reminder for 5 days in the future

   echo  "DISPLAY=$DISPLAY xmessage setup suphp perms htscanner acct#101101 host2.domain.com" | at 23:00 Feb 8

##### Create an eicar.com test virus

   echo  'K5B!C%@NC[4\CMK54(C^)7PP)7}$RVPNE-FGNAQNEQ-NAGVIVEHF-GRFG-SVYR!$U+U*' | tr '[A-Za-z]' '[N-ZA-Mn-za-m]' > /tmp/eicar.com

##### Find how far nested you are in subshells

   echo  "I am $BASH_SUBSHELL levels nested";

##### Convert ascii string to hex

   echo  -n 'text' | perl -pe 's/(.)/sprintf("\\x%x", ord($1))/eg'

##### Generate an XKCD #936 style 4 word passphrase (fast)

   echo  $(shuf -n4 /usr/share/dict/words)

##### Indicates the position of my monitor buttons

   echo  "|MENU|       |DOWN|    |UP/BRIGHT|  |ENTER|      |AUTO|      |OFF|"|osd_cat -p bottom -o -40 -i 1575

##### See how many more processes are allowed, awesome!

   echo  $(( `ulimit -u` - `find /proc -maxdepth 1 \( -user $USER -o -group $GROUPNAME \) -type d|wc -l` ))

##### send raw data (hex written)using UDP to an IP and port

   echo  -n 023135 | perl -pe 's/([0-9a-f]{2})/chr hex $1/gie' | nc -4u -q1 -p5001 192.168.0.100 2000

##### Create a video screencast of any x11 window, with audio

   echo  "Click a window to start recording"; read x y W H <<< `xwininfo | grep -e Width -e Height -e Absolute | grep -oE "[[:digit:]]{1,}" | tr "\n" " "`; ffmpeg -f alsa -ac 1 -i pulse -f x11grab -s ${W}x${H} -r 25 -i :0.0+${x},${y} -sameq output.mkv

##### bash or tcsh redirect both to stdout and to a file

   echo  "Hello World." | tee -a hello.txt

##### Changes a User Password via command line without promt

   echo  -e "new_password\nnew_password" | (passwd stdin $USER)

##### Execute a command at a given time

   echo  "ls -l" | at midnight

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Execute matlab sentences from command line

   echo  'magic(3)' | matlab -nodisplay

##### Prepend a text to a file.

   echo  "text to prepend" | cat - file

##### print a file on a single line

   echo  $(cat file)

##### Sort a character string

   echo  sortmeplease | grep -o . | sort | tr -d '\n'; echo

##### Encode a string using ROT47

   echo  "your string here" | tr '\!-~' 'P-~\!-O'

##### Email a file to yourself

   echo  "This is the message body" | mutt -s "Message subject" -a file_to_attach.zip fred@example.com

##### Count items in JSON array

   echo  '[1,2,3]' | jq '. | length'

##### .inputrc keybinding to wrap current line in inotifytools for instant compile/test-as-you-save-loop

   echo  '"\e\C-i": "\C-awhile true; do ( \C-e ); inotifywait -q -e modify -e close_write *; done\e51\C-b"' >>~/.inputrc

##### Inverted cowsay

   echo  Which way up? | flip.pl | cowsay | tac | sed -e "s,/,+,g" -e "s,\\\,/,g" -e "s,+,\\\,g" -e "s,_,-,g" -e "s,\^,v,g"

##### Greets the user appropriately

   echo  "12 morning\n15 afternoon\n24 evening" |while read t g; do if [ `date +%H` -lt $t ]; then echo "Good $g"; break; fi; done

##### Send a local file via email

   echo  "see attached file" | mail -a filename -s "subject" email@address

##### Check if a machine is online with better UI

   echo  -n "IP Address or Machine Name: "; read IP; ping -c 1 -q $IP >/dev/null 2>&1 && echo -e "\e[00;32mOnline\e[00m" || echo -e "\e[00;31mOffline\e[00m"

##### Send test prints to networked printer.

   echo  "test" | lp -d $PRINTER

##### Get decimal ascii code from character

   echo  -n a | od -d | sed -n "s/^.* //gp"

##### Random unsigned integer

   echo  $(openssl rand 4 | od -DAn)

##### Convert ascii string to hex

   echo  "text" | hd

##### Show directories in the PATH, one per line

   echo  -e ${PATH//:/\\n}

##### Generate an XKCD #936 style 4 word passphrase (fast)

   echo  $(grep "^[^'A-Z]\{3,7\}$" /usr/share/dict/words|shuf -n4)

##### Doing some floating point calculations with rounding (e.g. at the 3rd decimal)

   echo  '123/7' |bc -l |xargs printf "%.3f\n"

##### Battery real life energy vs predicted remaining plotted

   echo  start > battery.txt; watch -n 60 'date >> battery.txt ; acpi -b >> battery.txt'

##### Create a PNG screenshot of Rigol Ultravision scopes attached per LAN

   echo  "display:data?" | nc "$scope_ip_address" 5555 | dd bs=1 skip=11 2>/dev/null | convert bmp:- out_file.png

##### run complex remote shell cmds over ssh, without escaping quotes

   echo  "properly_escaped_command" | ssh user@host $(< /dev/fd/0)

##### ignore .DS_Store forever in GIT

   echo  .DS_Store >> ~/.gitignore

##### Print text string vertically, one character per line.

   echo  "vertical text" | grep -o '.'

##### Validate and pretty-print JSON expressions.

   echo  '{"json":"obj"}' | python -m simplejson.tool

##### Greets the user appropriately

   echo  -e "12 morning\n15 afternoon\n24 evening" |awk '{if ('`date +%H`'<$1) {print "Good "$2;exit}}'

##### shell alternative to 'basename'

   echo  ${file##*/}

##### Capitalize first letter of each word in a string

   echo  'fOo BaR' | ruby -e "p STDIN.gets.split.map(&:capitalize).join(' ')"

##### Get your outgoing IP address

   echo  -n $(curl -Ss  http://icanhazip.com) | xclip

##### convert a string of hex characters into ascii chars

   echo  $hex | perl -pe 's/(..)/chr(hex($1))/ge'

##### generate a uuid

   echo  "import uuid\nimport sys\nsys.stdout.write(str(uuid.uuid4()))" | python

##### Just run it ;)

   echo  SSBMb3ZlIFlvdQo= | base64 -d

##### AWS Route53 hosted zone export

   echo  -e "\$ORIGIN\tumccr.org.\n\$TTL\t1h\n" && aws route53 list-resource-record-sets hosted-zone-id Z1EEXAMPLE9SF3 | jq -r '.ResourceRecordSets[] | [.Name, .Type, .ResourceRecords[0].Value] | join("\t")' -  | grep -vE "NS|SOA"

##### Find duplicate dir in path

   echo  $PATH|tr : '\n'|sort|uniq -d

##### Number of seconds to certain unix date

   echo  $( (( $( (2**31 -1) ) - $(date +%s) )) )

##### Poor man's pomodoro timer

   echo  "aplay ring.wav" | at now + 25 min

##### Extract text from all PDFs in curdir & subdirs to new files named as source+.txt, linux only.

   echo  '#!/bin/bash' > junk.sh ; find . -iname *.pdf -type f -printf \p\s\2\a\s\c\i\i\ \"%p\"\ \ \"%p\.\t\x\u\"\;\ \p\a\r\ \<\"%p\.\t\x\u\"\ \>\"%p\.\t\x\t\"\ \;\ \r\m\ \"%p\.\t\x\u\"\ \\n >>junk.sh; chmod 766 junk.sh; ./junk.sh ; rm junk.sh

##### Displays all the fields of a table, really usefull to run it inside editor (Emacs or vim)

   echo  "DESCRIBE dbname.table_name" | mysql -u dbusername | awk '{print $1}' | grep -v Field

##### Execute a command at a given time

   echo  "ls -l" | at midnight

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Find out the starting directory of a script

   echo  "${0%/*}"

##### prevent accidents and test your command with echo

   echo  rm *.txt

##### Calculate pi to an arbitrary number of decimal places

   echo  "scale=1000; 4*a(1)" | bc -l

##### When using mkvirtualenv, make the current directory your base and cd into that directory every time you workon that project

   echo  'echo "cd `pwd`" >> $VIRTUAL_ENV/bin/postactivate' >> $VIRTUAL_ENV/../postmkvirtualenv

##### repeat any string or char n times without spaces between

   echo  "$(yes '+' | head -n5)"

##### True Random Dice Roll

   echo  $(</dev/urandom tr -dc 1-6 | head -c1)

##### Defcon 18 Quals Binary L33tness 300 Solution

   echo  "6d5967306474686924697344406b3379" | xxd -r -p

##### checking if an IP is valid.

   echo  $IP | egrep '^(([0-9]{1,2}|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.){3}([0-9]{1,2}|1[0-9][0-9]|2[0-4][0-9]|25[0-5])$'

##### Ensuring that the IP has no strange characters

   echo  ${IP} | sed "s/[0-9\.]//g"

##### Salvage a borked terminal

   echo  <ctrl-v><esc>c<enter>

##### Convert Hex to String

   echo  474e552773204e6f7420556e697821 | sed -e 's/\(.\{2\}\)/\\\\x\1/g' | xargs echo -e

##### Displays what shell you are using.

   echo  $0

##### Terrorist threat level text

   echo  "Terrorist threat level: $(curl -s 'http://www.dhs.gov/dhspublic/getAdvisoryCondition' | awk -F\" 'NR==2{ print $2 }')"

##### Turn on NFS Debugging

   echo  1 > /proc/sys/sunrpc/nfs_debug

##### create random string from /dev/urandom (or another length)

   echo  `cat /dev/urandom | base64 | tr -dc "[:alnum:]" | head -c64`

##### Create a script of the last executed command

   echo  !!:q > foo.sh

##### Display last exit status of a command

   echo  $?

##### Set your profile so that you resume or start a screen session on login

   echo  "screen -DR" >> ~/.bash_profile

##### bash shortcut: !$ !^ !* !:3 !:h and !:t

   echo  foo bar foobar barfoo && echo !$ !^  !:3 !* &&  echo /usr/bin/foobar&& echo !$:h !$:t

##### bored of the waiting for moderation

   echo  "bored of the awaiting moderation"

##### find files in $PATH that were not installed through dpkg

   echo  -e "${PATH//://\n}" >/tmp/allpath; grep -Fh -f /tmp/allpath /var/lib/dpkg/info/*.list|grep -vxh -f /tmp/allpath >/tmp/installedinpath ; find ${PATH//:/ } |grep -Fxv -f /tmp/installedinpath

##### Match a URL

   echo  "(Something like http://foo.com/blah_blah)" | grep -oP "\b(([\w-]+://?|www[.])[^\s()<>]+(?:\([\w\d]+\)|([^[:punct:]\s]|/)))"

##### Partition a new disk as all one partition tagged as LINUX_NATIVE

   echo  "0,,L" | sfdisk /dev/sdX

##### Generate padded numbers 001 002 ... 100

   echo  00{1..9} 0{10..99} 100

##### Use awk's FIELDWIDTHS function to manipulate a string.

   echo  "rootgot" | awk 'BEGIN{FIELDWIDTHS="4 3"}{print $2$1}'

##### Generate a random password.

   echo  $(< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c10)

##### 2 SSL get expiration date from remote site

   echo  | openssl s_client -servername google.de -connect google.de:443 2>/dev/null | openssl x509 -noout -enddate

##### Add current directory to Ruby load path

   echo  "$: << '.'" >> $IRBRC

##### Generate MD5 of string and output only the hash checksum in a readable format

   echo  -n "String to MD5" | md5sum | sed -e 's/../& /g' -e 's/  -//'

##### print an 'hello world'

   echo  'hello world'

##### List your MACs address

   echo  | ifconfig | grep HWaddr

##### Search count how many times a number, character or string is present on a stream

   echo  something | awk '{ total += gsub(/yourstring/,"") } END { print total }'

##### Flush memcache cache

   echo  'flush_all' | nc localhost 11211

##### Passwordless mysql{,dump,admin} via my.cnf file

   echo  -e "[client]\nuser = YOURUSERNAME\npassword = YOURPASSWORD" > ~/.my.cnf

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Copy to clipboard osx

   echo  -n "text" | pbcopy

##### Remove the last string  character using rev and cut

   echo  "command lines" | rev | cut -c 2- | rev

##### convert unixtime to human-readable

   echo  "0t${currentEpoch}=Y" | /usr/bin/adb

##### Triangular Number

   echo  $(echo $(seq $MIN $MAX) | sed 's/ /+/g') | bc -l

##### A simple way find total Memory capacity of the system

   echo  "Memory:" $(dmidecode type memory | grep " MB" | awk '{sum += $2; a=sum/1024} END {print a}') "GB"

##### calculate in commandline with bc

   echo  "1+1" | bc

##### Print repeating CSV values on new lines - normalize repeating fields

   echo  "LINUX,DIR,FILE1,FILE2,FILE3" | perl -aF, -nle 'my ($fld1, $fld2, @fields) = @F; while(@fields) { print join ",", $fld1, $fld2, splice(@fields, 0, 1) }'

##### Change your swappiness Ratio under linux

   echo  50 > /proc/sys/vm/swappiness

##### Use php and md5 to generate a password

   echo  -n "string" | md5sum|cut -f 1 -d " "

##### Super Speedy Hexadecimal or Octal Calculations and Conversions to Decimal.

   echo  "$(( 0x10 )) - $(( 010 )) = $(( 0x10 - 010 ))"

##### a simple interactive tool to convert Simplified Chinese (typed by pinyin) to Traditional Chinese &#31616;&#32321;&#20013;&#25991;&#36716;&#25442;

   echo  "Simplied Chinese:"; while read -r line; do echo "Traditional Chinese:"; echo $line | iconv -f utf8 -t gb2312 | iconv -f gb2312  -t big5 | iconv -f big5 -t utf8; done

##### Convert ascii string to hex

   echo  -n text | hexdump -C

##### To display the message

   echo  "Hello WOrld"

##### Adding kernel boot parameters after loading kernel and initrd

   echo  "root=/dev/sda7" > /proc/param.conf

##### a simple bash one-liner to create php file and call php function

   echo  '<?php echo str_rot13 ("Hello World\n") ?>' | php

##### Print a row of 50 hyphens

   echo  - | sed -e :a -e 's/^.\{1,50\}$/&-/;ta'

##### Display EPOCH time in human readable format using AWK.

   echo  1268727836 | awk '{print strftime("%c",$1)}'

##### talking clock

   echo  $(date +%m) past $(date +%H) | espeak

##### Use the page up key to complete the command.

   echo  "\"\e[5~\": history-search-backward" >> ~/.inputrc

##### Global BTC rate in EUR

   echo  "BTC rate is" $(wget https://api.bitcoinaverage.com/ticker/global/EUR/ -q -O - | jq ".last") "?"

##### Show public IPv4 and IPv6

   echo  "IPv4: $(curl -s4 ip.appspot.com)" ; echo "IPv6: $(curl -s6 ip.appspot.com)"

##### un-escape URL/URIs with Ruby

   echo  'example.com%2Fsome%2Fpath' | ruby -r'cgi' -e 'puts CGI.unescape(STDIN.read)'

##### Resource Monitoring

   echo  "DISK:";df  -Pl | grep -v "Filesystem" | awk '{print $5,$6}' ; echo "MEM:" ; free -mto | awk '{ print $1,$2,$3,$4 }'; echo "CPU:"; top -b -d1 -n1 | grep Cpu |  awk '{print $2,$3,$4,$5,$6,$7,$8,$9}';echo "LOAD:"; cat /proc/loadavg

##### Print a single character from a string with AWK.

   echo  "abcdefg"|awk 'BEGIN {FS="''"} {print $2}'

##### Wait for file to stop changing

   echo  FileName | perl -nlE'sleep 1 while time-(stat)[10]<10' && echo DONE

##### get value after comma from an arithmetic operation

   echo  "scale=6;2048 / 2.345" | bc

##### Prevent command history file from being overwritten by multiple shell sessions.

   echo  "shopt -s histappend" >> ~/.bashrc ; . ~/.bashrc

##### Generate MD5 hash for a string

   echo  -n "string" | md5sum -

##### hours before the time()==1234567890

   echo  $(( (1234567890 - `date -u +\%s`) / 60 / 60 ))

##### Converts uppercase chars in a string to lowercase

   echo  StrinG | tr 'A-Z' 'a-z'

##### Matched string reference in replacement text

   echo  "abcde" | sed 's/./& /g'

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Terrorist threat level text

   echo  "Terrorist threat level: `od -An -N1 -i /dev/random`"

##### Send email with one or more binary attachments

   echo  "Body goes here" | mutt -s "A subject" -a /path/to/file.tar.gz recipient@example.com

##### Use /etc/fortune as signature in thunderbird

   echo  'echo /etc/games/fortune > ~/mailsignature.txt' >> .bashrc

##### repeat any string or char n times without spaces between

   echo  ${(l:80::+:)}

##### Customizable Search Context

   echo  -n search\>\  ; read SEARCH_STRING && sed -n "/$SEARCH_STRING/{n;p;n;p;n;p;q}" [file-to-search]

##### Non-interactively set timezone in Ubuntu

   echo  'Etc/UTC' | tee /etc/timezone; dpkg-reconfigure frontend noninteractive tzdata

##### split email by @ with awk

   echo  $mail | awk -F'@' '{print $2}'

##### Convert ascii string to hex

   echo  -n 'text' | xxd -ps | sed 's/[[:xdigit:]]\{2\}/\\x&/g'

##### Calculate xor in bash

   echo  $(( 0x$1 ^ 0x$2 ))

##### Download schedule

   echo  'wget url' | at 12:00

##### send a message to a windows machine in a popup

   echo  "message" | smbclient -M NAME_OF_THE_COMPUTER

##### Get the current epoch in base32

   echo  "$(obase=16; echo "$(date +%s)" | bc | xxd -r -p | base32)"

##### Display $PATH with one line per entry

   echo  -e ${PATH//:/\\n} | less

##### Print machine's ipv4 addresses

   echo  $(ifconfig) | egrep -o "en.*?inet [^ ]* " | sed 's/.*inet \(.*\)$/\1/' | tail -n +2

##### Generate a password for website authentication  that can be recreated each time you need to authenticate without saving the password

   echo  http://www.TheWebSiteName.com privatekeyword | md5sum | awk '{print substr($0,0,10)}'

##### String Capitalization

   echo  "${STRING}" | tr '[A-Z]' '[a-z]' | awk '{print toupper(substr($0,1,1))substr($0,2);}'

##### Disable man-db cron and apt trigger

   echo  'man-db man-db/auto-update boolean false' |sudo debconf-set-selections

##### Get result of command in pipe sequence

   echo  "Dave" | grep -o "bob" | sed 's/D/f/'; echo ${PIPESTATUS[1]};

##### Convert ascii string to hex

   echo  "text" | od -t x1

##### Encrypt/decrypt a string from the command line

   echo  'HelloWorld!' | gpg symmetric | base64

##### IBM AIX: Calculate the SHA256 hashes of a directory without sha256sum

   echo  '#! /usr/bin/ksh\necho `cat $1 | openssl dgst -sha256` $1' > sslsha256; chmod +x sslsha256; find directory -type f -exec ./sslsha256 \{\} \;

##### Calculate CPU load limit on GNU/Linux

   echo  "$(( $(( $(grep 'physical id' '/proc/cpuinfo' | uniq | wc -l) * $(grep 'core id' '/proc/cpuinfo' | wc -l) )) * 2 + 1 ))"

##### Outputs a 10-digit random number

   echo  $RANDOM$RANDOM$RANDOM |cut -c3-12

##### Play awesome rythmic noise using aplay

   echo  "main(i){for(i=0;;i++)putchar(((i*(i>>8|i>>9)&46&i>>8))^(i&i>>13|i>>6));}" | gcc -x c - && ./a.out | aplay

##### Convert a string to "Title Case"

   echo  "this is a test" | sed 's/.*/\L&/; s/[a-z]*/\u&/g'

##### Delay execution until load average falls under 1.5

   echo  'some command' | batch

##### IBM AIX: Verify a sha256sum listing with openssl

   echo  '#! /usr/bin/ksh\ncat $2 | openssl dgst -sha256 | read hashish; if [[ $hashish = $1 ]]; then echo $2: OK; else echo $2: FAILED; fi;' > shacheck; chmod +x shacheck; cat hashishes.sha256 | xargs -n 2 ./shacheck;

##### Display terminal command history with date

   echo  'export HISTTIMEFORMAT="%d/%m/%y %T "' >> ~/.bash_profile

##### Send email from terminal

   echo  "some cool message from terminal" | mail -s "test" email@address.com

##### regex to match an ip

   echo  254.003.032.3 | grep -P '^((25[0-4]|2[0-4]\d|[01]?[\d]?[1-9])\.){3}(25[0-4]|2[0-4]\d|[01]?[\d]?[1-9])$'

##### send attachment email shell

   echo  "This is the message body" | mutt -a "/tmp/aysad.gz" -s "Vv..Pp..nn"  aysad@gmail.com

##### Generate an XKCD #936 style 4 word passphrase (fast) w/o apostrophes

   echo  $(cat /usr/share/dict/words |grep -v "'"|shuf -n4)

##### Substitution cipher

   echo  "Decode this"| tr [a-zA-Z] $(echo {a..z} {A..Z}|grep -o .|sort -R|tr -d "\n ")

##### make a bunch of files based on a template file

   echo  "template file: ";read tpl;echo "new file(s separated w. space):"; read fl;touch $fl;find $fl -exec cp -ap $tpl "{}" \;

##### Unique data (replacement for sort | uniq -u)

   echo  -e "a\na\nb\nc\nd" | awk '{x[$0]++}END{for (z in x){if(x[z]==1){print z}}}'

##### Convert any text you type into sha1

   echo  -n "sua mensagem" | openssl sha1

##### Log your internet download speed

   echo  $(date +%s) > start-time; URL=http://www.google.com; while true; do echo $(curl -L w %{speed_download} -o/dev/null -s $URL) >> bps; sleep 10; done &

##### Convert control codes to visible Unicode Control Pictures

   echo  -e '\x2Hello, folks\t!\r' | sed "y/\x2\x9\xD\x20/&#9218;&#9225;&#9229;&#9248;/"

##### Btrfs: Find file names with checksum errors

   echo  "btrfs checksum error(s) on: " && grep "btrfs: checksum error at logical" /var/log/messages |  sed -e 's/^.*\( dev .*\)\(, sector.*\)\(path\: .*\))/\t\1, \3/' | sort | uniq

##### Generate secure password to userwith chpasswd

   echo  "encryptedpassword"|openssl passwd -1 -stdin

##### Get the IP of the host your coming from when logged in remotely

   echo  $SSH_CLIENT | cut -f 1 -d ' '

##### Greets the user appropriately

   echo  Good $(i=`date | cut -d: -f1 | cut -d' ' -f4-4` ; if [ $i -lt 12 ] ; then echo morning ; else if [ $i -lt 15 ] ; then echo afternoon ; else echo evening ; fi ; fi)

##### Get your external IP address

   echo  $(wget http://ipecho.net/plain -q -O -)

##### An easter egg built into python to give you the Zen of Python

   echo  "import this" | python

##### kworker issue. Phase 2. Clobbering the interrupt that is problematic

   echo  "disable" > /sys/firmware/acpi/interrupts/gpeXX

##### Encode string with NOTs

   echo  -e 'import ctypes\nimport sys\nf="/etc/passwd"\nfor i in f:\n\tsys.stdout.write(hex(ctypes.c_uint8(~ord(i)).value)+",")\nsys.stdout.write("\\n")' | python

##### Useless fun

   echo  "main(i){for(i=0;;i++)putchar(((i*(i>>8|i>>9)&46&i >>8))^(i&i>>13|i>>6));}" | gcc -x c - && ./a.out | aplay

##### Epoch time conversion

   echo  $(date -d @$((0x4f28b47e)))

##### Converts the output of disklabel from bytes to Gigabytes on FreeBSD

   echo  `disklabel mfid1s4 | sed -n '$p' | awk '{print $2}'` / 1024 / 1024 | bc -l

##### urldecoding

   echo  "q+werty%3D%2F%3B" | php -r "echo urldecode(file_get_contents('php://stdin'));"

##### send attachment file email

   echo  "This is the message body" | mutt -a "/path/to/file.to.attach" -s "subject of message"  recipient@domain.com

##### Greets the user appropriately

   echo  Good $(i=`date +%H` ; if [ $i -lt 12 ] ; then echo morning ; else if [ $i -lt 15 ] ; then echo afternoon ; else echo evening ; fi ; fi)

##### Execute a command at a given time

   echo  "ls -l" | at midnight

##### Execute a command at a given time

   echo  "ls -l" | at midnight

##### Execute a command at a given time

   echo  "ls -l" | at midnight

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Run a command only when load average is below a certain threshold

   echo  "rm -rf /unwanted-but-large/folder" | batch

##### Isolate file name from full path/find output

   echo  ${fullpath##*/}

##### Export MySQL query as .csv file

   echo  "SELECT * FROM table; " | mysql -u root -p${MYSQLROOTPW} databasename | sed 's/\t/","/g;s/^/"/;s/$/"/;s/\n//g' > outfile.csv

##### Print text string vertically, one character per line.

   echo  Print text vertically|sed 's/\(.\)/\1\n/g'

##### A little bash daemon =)

   echo  "Starting Daemon"; ( while :; do sleep 15; echo "I am still running =]"; done ) & disown -h -ar $!

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Set an alarm to wake up [2]

   echo  "aplay path/to/song" |at [time]

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Perl One Liner to Generate a Random IP Address

   echo  $((RANDOM%256)).$((RANDOM%256)).$((RANDOM%256)).$((RANDOM%256))

##### show ls colors with demo

   echo  $LS_COLORS | sed 's/:/\n/g' | awk -F= '!/^$/{printf("%s \x1b[%smdemo\x1b[0m\n",$0,$2)}'

##### permanently let grep colorize its output

   echo  alias grep=\'grep color=auto\' >> ~/.bashrc ; . ~/.bashrc

##### lotto generator

   echo  $(shuf -i 1-49 | head -n6 | sort -n)

##### Use tee to process a pipe with two or more processes

   echo  "tee can split a pipe in two"|tee >(rev) >(tr ' ' '_')

##### Force machine to reboot no matter what (even if /sbin/shutdown is hanging)

   echo  1 > /proc/sys/kernel/sysrq; echo b > /proc/sysrq-trigger

##### Synthesize text as speech

   echo  "hello world"  | festival tts

##### stop man  page content from disappearing on exit

   echo  "export LESS='FiX'" >> ~/.bashrc

##### Random unsigned integer

   echo  $RANDOM

##### know the current running shell (the true)

   echo  $0

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### log your PC's motherboard and CPU temperature along with the current date

   echo  `date +%m/%d/%y%X |awk '{print $1;}' `" => "` cat /proc/acpi/thermal_zone/THRM/temperature | awk '{print $2, $3;}'` >> datetmp.log

##### convert unixtime to human-readable with awk

   echo  1234567890 | awk '{ print strftime("%c", $0); }'

##### Reboot as a different OS in Grub

   echo  "savedefault default=2 once" | grub batch; sudo reboot

##### find out how many days since given date

   echo  $((($(date +%s)-$(date +%s -d "march 1"))/86400))

##### Terminal Keyboard Shortcut list

   echo  -e "Terminal shortcut keys\n" && sed -e 's/\^/Ctrl+/g;s/M-/Shift+/g' <(stty -a 2>&1| sed -e 's/;/\n/g' | grep "\^" | tr -d ' ')

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Create a script of the last executed command

   echo  "!!" > foo.sh

##### Url Encode

   echo  "$url" | perl -MURI::Escape -ne 'chomp;print uri_escape($_),"\n"'

##### Find all dot files and directories

   echo  .*

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Create a script of the last executed command

   echo  "!!" > foo.sh

##### check site ssl certificate dates

   echo  | openssl s_client -connect www.google.com:443 2>/dev/null |openssl x509 -dates -noout

##### Given a file path, unplug the USB device on which the file is located (the file must be on an USB device !)

   echo  $(sudo lshw -businfo | grep -B 1 -m 1 $(df "/path/to/file" | tail -1 | awk '{print $1}' | cut -c 6-8) | head -n 1 | awk '{print $1}' | cut -c 5- | tr ":" "-") | sudo tee /sys/bus/usb/drivers/usb/unbind

##### Get the IP of the host your coming from when logged in remotely

   echo  ${SSH_CLIENT%% *}

##### Random Number Between 1 And X

   echo  $[RANDOM%X+1]

##### get cookies from firefox

   echo  ".mode tabs select host, case when host glob '.*' then 'TRUE' else 'FALSE' end, path, case when isSecure then 'TRUE' else 'FALSE' end, expiry, name, value from moz_cookies;" | sqlite3 ~/.mozilla/firefox/*.default/cookies.sqlite

##### enumerate with padding

   echo  {001..5}

##### Count the number of queries to a MySQL server

   echo  "SHOW PROCESSLIST\G" | mysql -u root -p | grep "Info:" | awk -F":" '{count[$NF]++}END{for(i in count){printf("%d: %s\n", count[i], i)}}' | sort -n

##### Change newline to space in a file just using echo

   echo  $(</tmp/foo)

##### Avoids ssh timeouts by sending a keep alive message to the server every 60 seconds

   echo  'ServerAliveInterval 60' >> /etc/ssh/ssh_config

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Create a script of the last executed command

   echo  "!!" > foo.sh

##### Display text as though it is being typed out in real time

   echo  "text to be displayed" | pv -qL 10

##### Let your computer lull you to sleep

   echo  {1..199}" sheep," | espeak -v english -s 80

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Create a script of the last executed command

   echo  "!!" > foo.sh

##### Get Futurama quotations from slashdot.org servers

   echo  -e "HEAD / HTTP/1.1\nHost: slashdot.org\n\n" | nc slashdot.org 80 | egrep "Bender|Fry" | sed "s/X-//"

##### Prepend text to a file

   echo  "text to prepend" | cat - file

##### Show exit status of all portions of a piped command eg. ls |this_doesn't_exist |wc

   echo  ${PIPESTATUS[@]}

##### Changes standard mysql client output to 'less'.

   echo  -e "[mysql]\npager=less -niSFX" >> ~/.my.cnf

##### Output as many input

   echo  'foo' | tee >(wc -c) >(grep o) >(grep f)

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Create a script of the last executed command

   echo  "!!" > foo.sh

##### Disable beep sound from your computer

   echo  "blacklist pcspkr"|sudo tee -a /etc/modprobe.d/blacklist.conf

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Create a script of the last executed command

   echo  "!!" > foo.sh

##### Backticks are evil

   echo  "The date is: $(date +%D)"

##### Change the window title of your xterm

   echo  "^[]0;My_Title_Goes _Here^G"

##### for too many arguments by *

   echo  *.log | xargs <command>

##### Happy Days

   echo  {'1,2,3',4}" o'clock" ROCK

##### Execute a command at a given time

   echo  "ls -l" | at midnight

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Create a script of the last executed command

   echo  "!!" > foo.sh

##### Backticks are evil

   echo  "The date is: $(date +%D)"

##### 'hpc' in the shell - starts a maximum of n compute commands modulo n controlled in parallel, using make

   echo  -n 'targets = $(subst .png,.jpg,$(wildcard *.png))\n$(targets):\n     convert $(subst .jpg,.png,$@) $@ \nall : $(targets)' | make -j 4 -f - all

##### Encrypt and password-protect execution of any bash script

   echo  "eval \"\$(dd if=\$0 bs=1 skip=XX 2>/dev/null|gpg -d 2>/dev/null)\"; exit" > script.secure; sed -i s:XX:$(stat -c%s script.secure): script.secure; gpg -c < script.bash >> script.secure; chmod +x script.secure

##### Simulate typing

   echo  "You can have a bit more realistic typing with some shell magic." | pv -qL $[10+(-2 + RANDOM%5)]

##### Found how how much memory in kB $PID is occupying in Linux

   echo  0$(awk '/Pss/ {printf "+"$2}' /proc/$PID/smaps)|bc

##### draw matrix using dot

   echo  'graph{node[shape=record];rankdir=LR;matrix[label="{1|2|3}|{4|5|6}|{7|8|9}",color=red]}' | dot -Tpng | display

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Create a script of the last executed command

   echo  "!!" > foo.sh

##### Backticks are evil

   echo  "The date is: $(date +%D)"

##### Capitalize first letter of each word in a string

   echo  'fOo BaR' | tr '[A-Z]' '[a-z]' | sed 's/\(^\| \)\([a-z]\)/\1\u\2/g'

##### Send a signed and encrypted email from the command line

   echo  "SECRET MESSAGE" | gpg -e armor -s | sendmail USER@DOMAIN.COM

##### convert ascii string to hex

   echo  $ascii | perl -ne 'printf "%x", ord for split //'

##### Another Matrix Style Implementation

   echo  -ne "\e[32m" ; while true ; do echo -ne "\e[$(($RANDOM % 2 + 1))m" ; tr -c "[:print:]" " " < /dev/urandom | dd count=1 bs=50 2> /dev/null ; done

##### Set laptop display brightness

   echo  <percentage> > /proc/acpi/video/VGA/LCD/brightness

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Create a script of the last executed command

   echo  "!!" > foo.sh

##### Backticks are evil

   echo  "The date is: $(date +%D)"

##### Binary digits Matrix effect

   echo  -e "\e[32m"; while :; do printf '%*c' $(($RANDOM % 30)) $(($RANDOM % 2)); done

##### send echo to socket network

   echo  "foo" > /dev/tcp/192.168.1.2/25

##### camelcase to underscore

   echo  thisIsATest | sed -E 's/([A-Z])/_\L\1/g'

##### Simulate typing

   echo  "pretty realistic virtual typing" | randtype -m 4

##### get a random 0/1, use it for on/off, yes/no

   echo  $[RANDOM % 2]

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Create a script of the last executed command

   echo  "!!" > foo.sh

##### Backticks are evil

   echo  "The date is: $(date +%D)"

##### Boot another OS at next startup

   echo  "savedefault default=2 once" | grub batch; sudo reboot

##### Tweak system files without invoking a root shell

   echo  "Whatever you need" | sudo tee [-a] /etc/system-file.cfg

##### I finally found out how to use notify-send with at or cron

   echo  notify-send test | at now+1minute

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Create a script of the last executed command

   echo  "!!" > foo.sh

##### Backticks are evil

   echo  "The date is: $(date +%D)"

##### Search shoutcast web radio by keyword

   echo  "Keyword?";read keyword;query="http://www.shoutcast.com/sbin/newxml.phtml?search="$keyword"";curl -s $query |awk -F '"' 'NR <= 4 {next}NR>15{exit}{sub(/SHOUTcast.com/,"http://yp.shoutcast.com/sbin/tunein-station.pls?id="$6)}{print i++" )"$2}'

##### Happy Days

   echo  {1..3}" o'clock" ROCK

##### Show a random oneliner from commandlinefu.com

   echo  -e "`curl -sL http://www.commandlinefu.com/commands/random/json|sed -re 's/.*,"command":"(.*)","summary":"([^"]+).*/\\x1b[1;32m\2\\n\\n\\x1b[1;33m\1\\x1b[0m/g'`\n"

##### Your name backwards

   echo  "$USER"|rev | espeak

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Create a script of the last executed command

   echo  "!!" > foo.sh

##### Backticks are evil

   echo  "The date is: $(date +%D)"

##### GRUB2: set Super Mario as startup tune

   echo  "GRUB_INIT_TUNE=\"1000 334 1 334 1 0 1 334 1 0 1 261 1 334 1 0 1 392 2 0 4 196 2\"" | sudo tee -a /etc/default/grub > /dev/null && sudo update-grub

##### Using json.tool from the shell to validate and pretty-print

   echo  '{"json":"obj"}' | python -mjson.tool

##### Dump sqlite database to plain text format

   echo  '.dump' | sqlite3 your_sqlite.db > your_sqlite_text.txt

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Create a script of the last executed command

   echo  "!!" > foo.sh

##### Backticks are evil

   echo  "The date is: $(date +%D)"

##### Convert ascii string to hex

   echo  -n "text" | od -A n -t x1 |sed 's/ /\\x/g'

##### Pipe text from shell to windows cut and paste buffer using PuTTY and XMing.

   echo  "I'm going to paste this into WINDERS XP" | xsel -i

##### Change Title of Terminal Window to Verbose Info useful at Login

   echo  -ne "\033]0;`id -un`:`id -gn`@`hostname||uname -n|sed 1q` `who -m|sed -e "s%^.* \(pts/[0-9]*\).*(\(.*\))%[\1] (\2)%g"` [`uptime|sed -e "s/.*: \([^,]*\).*/\1/" -e "s/ //g"` / `ps aux|wc -l`]\007"

##### Console clock  within screen

   echo  'hardstatus alwayslastline " %d-%m-%y %c:%s | %w"' >> $HOME/.screenrc; screen

##### Add strikethrough to text

   echo  text | sed $"s/./&\xCC\xB6/g"

##### Hex math with bc

   echo  'obase=16; C+F' | bc

##### Find files and calculate size of result in shell

   echo  $(($(find . -name "pattern" -type f -printf "+%s")))

##### your terminal sings

   echo  {1..199}" bottles of beer on the wall, cold bottle of beer, take one down, pass it around, one less bottle of beer on the wall,, " | espeak -v english -s 140

##### Matrix Style

   echo  -e "\e[32m"; while :; do for i in {1..16}; do r="$(($RANDOM % 2))"; if [[ $(($RANDOM % 5)) == 1 ]]; then if [[ $(($RANDOM % 4)) == 1 ]]; then v+="\e[1m $r   "; else v+="\e[2m $r   "; fi; else v+="     "; fi; done; echo -e "$v"; v=""; done

##### I finally found out how to use notify-send with at or cron

   echo  "export DISPLAY=:0; export XAUTHORITY=~/.Xauthority; notify-send test" | at now+1minute

##### Base conversions with bc

   echo  "obase=2; 27" | bc -l

##### Connect to TCP port 5000, transfer data and close connexion.

   echo  data | nc -q 0 host 5000

##### floating point operations in shell scripts

   echo  "scale=4; 3 / 5" | bc

##### Converts uppercase chars in a string to lowercase

   echo  StrinG | tr '[:upper:]' '[:lower:]'

##### Random number generation within a range N, here N=10

   echo  $(( $RANDOM % 10 + 1 ))

##### Check the current price of Bitcoin in USD

   echo  "1 BTC = $(curl -s https://api.coindesk.com/v1/bpi/currentprice/usd.json | grep -o 'rate":"[^"]*' | cut -d\" -f3) USD"

##### memcache affinity: queries local memcached for stats, calculates hit/get ratio and prints it out.

   echo  -en "stats\r\n" "quit\r\n" | nc localhost 11211 | tr -s [:cntrl:] " "| cut -f42,48 -d" " | sed "s/\([0-9]*\)\s\([0-9]*\)/ \2\/\1*100/" | bc -l

##### Print text string vertically, one character per line.

   echo  "vertical text" | fold -1

##### Execute a command at a given time

   echo  "ls -l" | at midnight

##### Stamp a text line on top of the pdf pages.

   echo  "This text gets stamped on the top of the pdf pages." | enscript -B -f Courier-Bold16 -o- | ps2pdf - | pdftk input.pdf stamp - output output.pdf

##### repeat any string or char n times without spaces between

   echo  -e ''$_{1..80}'\b+'

##### Add a line to a file using sudo

   echo  "foo bar" | sudo tee -a /path/to/some/file

##### SMS reminder

   echo  'mail -s "Call your wife" 13125551234@tmomail.net' |at now+15min

##### Get the current gold price

   echo  "Gold price is" $(wget https://rate-exchange-1.appspot.com/currency\?from=XAU\&to=USD -q -O - | jq ".rate") "USD"

##### Generate Sha1, MD5 hash using echo

   echo  -n "password"|md5sum|awk '{print $1}'

##### How many days until the end of the year

   echo  "There are $(($(date +%j -d"Dec 31, $(date +%Y)")-$(date +%j))) left in year $(date +%Y)."

##### using tee to echo to a system file with sudo privileges

   echo  ondemand | sudo tee /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor

##### Simulate typing but with mistakes

   echo  -e "You are a jerk\b\b\b\bwonderful person" | pv -qL $[10+(-2 + RANDOM%5)]

##### force a rescan on a host of scsi devices (useful for adding partitions to vmware on the fly)

   echo  "- - -" > /sys/class/scsi_host/host0/scan

##### Generate a Google maps URL for GPS location data from digital photo

   echo  "https://www.google.com/maps/place/$(exiftool  -ee -p '$gpslatitude, $gpslongitude' -c "%d?%d'%.2f"\" image.jpg 2> /dev/null | sed -e "s/ //g")"

##### Convert text to picture

   echo  -e "Some Text Line1\nSome Text Line 2" | convert -background none -density 196  -resample 72 -unsharp 0x.5 -font "Courier" text:- -trim +repage -bordercolor white -border 3  text.gif

##### Binary clock

   echo  "10 i 2 o $(date +"%H%M"|cut -b 1,2,3,4 output-delimiter=' ') f"|dc|tac|xargs printf "%04d\n"|tr "01" ".*"

##### copy last command to clipboard

   echo  "!!" | pbcopy

##### Scan for new SCSI devices

   echo  "- - -" > /sys/class/scsi_host/host0/scan

##### find out how many days since given date

   echo  "($(date +%s)-$(date +%s -d "march 1"))/86400"|bc

##### Convert string to uppercase

   echo  string | tr '[:lower:]' '[:upper:]'

##### Size (in bytes) of all RPM packages installed

   echo  $((`rpm -qa queryformat='%{SIZE}+' | sed 's/+$//'`))

##### doing some floating point math

   echo  "8000000/(20*6*86400)" | bc -l

##### Show all the available information about your current distribution, package management and base

   echo  /etc/*_ver* /etc/*-rel*; cat /etc/*_ver* /etc/*-rel*

##### Force hard reset on server

   echo  1 > /proc/sys/kernel/sysrq; echo b > /proc/sysrq-trigger

##### cooking a list of numbers for calculation

   echo  $( du -sm /var/log/* | cut -f 1 ) | sed 's/ /+/g'

##### Show memory stats on Nexenta/Solaris

   echo  ::memstat | mdb -k

##### convert from hexidecimal or octal to decimal

   echo  $((0x1fe)) $((033))

##### Convert seconds into minutes and seconds

   echo  'obase=60;299' | bc

##### send a circular

   echo  "dear admin, please ban eribsskog" | wall

##### Visit wikileaks.com

   echo  213.251.145.96 wikileaks.com >>/etc/hosts

##### Check if it's your binary birthday!

   echo  "obase=2;$((($(date +%s)-$(date +%s -d YYYY-MM-DD))/86400))" | bc

##### Prettify XML in pipeline

   echo  '<foo><bar/></foo>' | xmllint format -

##### Matrix Style

   echo  -e "\e[31m"; while $t; do for i in `seq 1 30`;do r="$[($RANDOM % 2)]";h="$[($RANDOM % 4)]";if [ $h -eq 1 ]; then v="\e[1m $r";else v="\e[2m $r";fi;v2="$v2 $v";done;echo -e $v2;v2="";done;

##### Use a regex as a field separator awk

   echo  one 22 three | awk -F'[0-9][0-9]' '{print $2}'

##### faster version of ls *

   echo  *

##### This is N5 sorta like rot13 but with numbers only

   echo  "$1" | xxd -p | tr '0-9' '5-90-6'; echo "$1" | tr '0-9' '5-90-6' | xxd -r -p

##### Create a list of binary numbers

   echo  {0..1}{0..1}{0..1}{0..1}

##### Quickly generate an MD5 hash for a text string using OpenSSL

   echo  -n 'text to be encrypted' | openssl md5

##### HTML5 ogg player

   echo  '<html><body><table>' > /tmp/bar.html && find / -name '*.ogg' | sort | awk '{print "<tr><td>"$1"</td><td><audio src=\""$1"\" controls='controls'></audio></td></tr>" }' >> /tmp/bar.html &&  echo '</table></body></html>' >> /tmp/bar.html

##### pipe output to notify-send

   echo  'Desktop SPAM!!!' | while read SPAM_OUT; do notify-send "$SPAM_OUT"; done

##### convert hex to decimal ; decimal to hex

   echo  16i `echo "F" | tr '[a-f]' '[A-F]'` p | dc ; echo 16o "15" p | dc

##### convert strings toupper/tolower with tr

   echo  "aBcDeFgH123" | tr a-z A-Z

##### Running a command at a specific time

   echo  "notify-send TimeToQuit" | at 10:22

##### Execute a command at a given time

   echo  "DISPLAY=$DISPLAY xmessage call the client" | at 10:00

##### calculate in commandline with bash

   echo  $(( 1+1 ))

##### Quick calculator at the terminal

   echo  "$math_expr" | bc -l

##### print line and execute it in BASH

   echo  <command>; !#:0-$

##### send echo to socket network

   echo  foo | netcat 192.168.1.2 25

##### Generate an XKCD #936 style 4 word password

   echo  $(grep "^[^']\{3,5\}$" /usr/share/dict/words|shuf -n4)

##### Display your ${PATH}, one directory per line

   echo  $PATH | tr : \\n

##### GRUB2: Set Imperial Death March as startup tune

   echo  "GRUB_INIT_TUNE=\"480 440 4 440 4 440 4 349 3 523 1 440 4 349 3 523 1 440 8 659 4 659 4 659 4 698 3 523 1 415 4 349 3 523 1 440 8"\"" | sudo tee -a /etc/default/grub > /dev/null && sudo update-grub

##### Execute a command at a given time

   echo  "ls -l" | at midnight

##### Figure out what shell you're running

   echo  $0

##### Create a random password encrypted with md5 with custom lenght

   echo  -n $mypass | md5sum | awk {'print $1'}

##### Set laptop display brightness

   echo  <percentage> | sudo dd of=/proc/acpi/video/VGA/LCD/brightness

##### Calculate N!

   echo  $(( $(echo 1 "* "{2..10}) ))

##### Find out current working directory of a process

   echo  COMMAND | xargs -ixxx ps -C xxx -o pid= | xargs -ixxx ls -l /proc/xxx/cwd

##### Binary injection

   echo  -n $HEXBYTES | xxd -r -p | dd of=$FILE seek=$((0x$OFFSET)) bs=1 conv=notrunc

##### echo unicode characters

   echo  -e \\u2620

##### Bytebeat

   echo  'main(t){for(;;t++)putchar(((t<<1)^((t<<1)+(t>>7)&t>>12))|t>>(4-(1^7&(t>>19)))|t>>7);}' | cc -x c - -o crowd && ./crowd | aplay

##### Convert a string to "Title Case"

   echo  'This is a TEST' | sed 's/[^ ]\+/\L\u&/g'

##### Quickly build ulimit command from current values

   echo  "ulimit `ulimit -a|sed -e 's/^.*\([a-z]\))\(.*\)$/-\1\2/'|tr "\n" ' '`"

##### Generate trigonometric/log data easily

   echo  "e("{1..8}");" | bc -l

##### get you public ip address

   echo  $(curl -s http://ipwhats.appspot.com/)

##### "I Feel Lucky" for Google Images

   echo  -n "search> ";read QUERY && wget -O - `wget -O - -U "Mozilla/5.0" "http://images.google.com/images?q=${QUERY}" 2>/dev/null |sed -e 's/","http/\n","http/g' |awk -F \" '{print $3}' |grep -i http: |head -1` > "$QUERY"

##### floating point operations in shell scripts

   echo  "5 k 3 5 / p" | dc

##### lotto generator

   echo  $(shuf -n 6 -i 1-49 | sort -n)

##### convert a line to a space

   echo  $(cat file)

##### quick integer CPU benchmark

   echo  '2^2^20' | time bc > /dev/null

##### Url Encode

   echo  "$@" | sed 's/ /%20/g;s/!/%21/g;s/"/%22/g;s/#/%23/g;s/\$/%24/g;s/\&/%26/g;s/'\''/%27/g;s/(/%28/g;s/)/%29/g;s/:/%3A/g'

##### Sed can refference parts of the pattern in the replacement:

   echo  -e "swap=me\n1=2"|sed 's/\(.*\)=\(.*\)/\2=\1/g'

##### underscore to camelcase

   echo  "this_is_a_test" | sed -r 's/_([a-z])/\U\1/g'

##### auto terminal title change

   echo  -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"

##### Color man pages

   echo  "export LESS_TERMCAP_mb=$'\E[01;31m'" >> ~/.bashrc

##### run command on a group of nodes in parallel

   echo  "uptime" | pee "ssh host1" "ssh host2" "ssh host3"

##### Generate a random text color in bash

   echo  -e "\e[3$(( $RANDOM * 6 / 32767 + 1 ))mHello World!"

##### Schedule a script or command in x num hours, silently run in the background even if logged out

   echo  "nohup command rm -rf /phpsessions 1>&2 &>/dev/null 1>&2 &>/dev/null&" | at now + 3 hours 1>&2 &>/dev/null

##### camelcase to underscore

   echo  thisIsATest | sed -r 's/([A-Z])/_\L\1/g'

##### Merge bash terminal histories

   echo  'export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"' >> .bashrc

##### Print the contents of $VARIABLE, six words at a time

   echo  $VARIABLE | xargs -d'\40' -n 6 echo

##### List the most recent dates in reverse-chronological order

   echo  {-1..-5}days | xargs -n1 date +"%Y-%m-%d" -d

##### convert ascii string to hex

   echo  $ascii | perl -ne 'printf ("%x", ord($1)) while(/(.)/g); print "\n";'

##### Combines an arbitrary number of transparent png files into one file

   echo  -n "convert " > itcombino.sh; printf "IMG_%00004u.png " {1..1121} >> itcombino.sh; echo -n "-layers merge _final.png" >> itcombino.sh; chmod +x itcombino.sh && ./itcombino.sh

##### Shows how many percents of all avaliable packages are installed in your gentoo system

   echo  $((`eix only-names -I | wc -l` * 100 / `eix only-names | wc -l`))%

##### Get the gravatar UTL for a given email address

   echo  -n test@example.com | md5sum | (read hash dash ; echo "https://secure.gravatar.com/avatar/${hash}")

##### Generate random number with shuf

   echo  $((RANDOM % 10 + 1))

##### Python extract json

   echo  "[{"Name": "bar"}]" | python -c 'import json,sys;obj=json.load(sys.stdin);print(obj[0]["Name"]);')

##### Protect against buffer overflow

   echo  16384 > /proc/sys/net/ipv4/neigh/default/gc_thresh1; echo 32768 > /proc/sys/net/ipv4/neigh/default/gc_thresh2; echo 65535 > /proc/sys/net/ipv4/neigh/default/gc_thresh3; echo 1 > /proc/sys/net/ipv4/icmp_ignore_bogus_error_responses

##### Show directories in the PATH, one per line

   echo  $PATH | tr \: \\n

##### echo something backwards

   echo  linux|rev

##### generate random ascii shape(no x11 needed!)

   echo  'set term dumb; unset border; unset xtics; unset ytics; p "< seq 10 | shuf" u 1:(rand(0)) w l notitle' | gnuplot

##### Terrorist threat level text

   echo  "Terrorist threat level: $(wget -q  -O - http://is.gd/wacQtQ | tail -n 1 | awk -F\" '{ print $2 }')"

##### power off system in X hours form the current time, here X=2

   echo  init 0 | at now + 2 hours

##### create random string from /dev/urandom (or another length)

   echo  `cat /dev/urandom |tr -dc "[:alnum:]" | head -c64`

##### Using numsum to sum a column of numbers.

   echo  $(( $( cat count.txt | tr "\n" "+" | xargs -I{} echo {} 0  ) ))

##### Execute a command at a given time

   echo  "ls -l" | at midnight

##### run command on a group of nodes in parallel

   echo  "uptime" | tee >(ssh host1) >(ssh host2) >(ssh host3)

##### Anti Syn Ddos

   echo  1 > /proc/sys/net/ipv4/tcp_syncookies echo 1 > /proc/sys/net/ipv4/ip_forward iptables -A FORWARD -p tcp ?syn -m limit -j ACCEPT

##### Generate MD5 of string and output only the hash checksum in a readable format

   echo  -n "String to MD5" | md5sum | sed -e 's/[0-9a-f]\{2\}/& /g' -e 's/  -//'

##### Quickly generate an MD5 hash for a text string using OpenSSL

   echo  -n 'the_password' | md5sum -

##### Generate MD5 of string and output only the hash checksum

   echo  -n "String to MD5" | md5sum | cut -b-32

##### gets your public IP address

   echo  $(curl http://ipecho.net/plain 2> /dev/null)

##### Create an alias, store it in ~/.bash_aliases and source your new alias into the ~/.bashrc

   echo  "alias topu='top -u USERNAME'" >>  ~/.bash_aliases && source .bashrc

##### Suspend to ram

   echo  mem|sudo tee /sys/power/state

##### Calculate pi with specific scale

   echo  'scale=10; 4*a(1)' | bc -l

##### run command on a group of nodes in parallel

   echo  -n m{1..5}.cluster.net | xargs -d' ' -n1 -P5 -I{} ssh {} 'uptime'

##### Get the SAN (subjectAltName) of a site's certificate.

   echo  "quit" | openssl s_client -connect facebook.com:443 | openssl x509 -noout -text | grep "DNS:" | perl -pe "s/(, )?DNS:/\n/g"

##### generate random number

   echo  $RANDOM

##### underscore to camelCase

   echo  "hello_world" | sed -r 's/([a-z]+)_([a-z])([a-z]+)/\1\U\2\L\3/'

##### Count the number of characters in a string from the standard input.

   echo  -n "foo" | wc -c

##### sum numbers in the file (or stdin)

   echo  $(($(tr '\n' '+')0))

##### Show directories in the PATH, one per line

   echo  "${PATH//:/$'\n'}"

##### generate a telephone keypad

   echo  {1..9} '* 0 #' | tr ' ' '\n' |paste - - -

##### List files with full path

   echo  $PWD/*

##### Run a command multiple times with different subcommands

   echo  apt-get\ {update,-y\ upgrade}\ \&\& true | sudo bash

##### Set all CPU cores' CPU frequency scaling governor to maximum performance

   echo  performance |sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor

##### An alarm clock using xmms2 and at

   echo  "xmms2 play" | at 6:00

##### "Pretty print" $PATH, separate path per line

   echo  $PATH | tr -s ':' '\n'

##### Convert from a decimal number to a binary number

   echo  'ibase=10; obase=2; 127' | bc

##### Pretty print SQL query with python in one line

   echo  "select a, b, c from table where a = 3;"| python -c "import sys;import sqlparse;print sqlparse.format(sys.stdin.read(),  reindent=True, keyword_case='upper')"

##### A formatting test for David Winterbottom: improving commandlinefu for submitters

   echo  "?????, these are the umlauted vowels I sing to you. Oh, and sometimes ?, but I don't sing that one cause it doesn't rhyme."

##### Rescan partitions on a SCSI device

   echo  "w" | fdisk /dev/sdb

##### Sort a character string

   echo  sortmeplease | perl -pe 'chomp; $_ = join "", sort split //'

##### Validating a file with checksum

   echo  'c84fa6b830e38ee8a551df61172d53d7  myfile' | md5sum -c

##### convert chinese character into wubi86 input code

   echo  Your_Chinese_Char | uniconv -encode Chinese-WB

##### Salvage a borked terminal

   echo  <ctrl+v><ctrl+o><enter>

##### convert a,b,c to ('a','b','c') for use in SQL in-clauses

   echo  a,b,c  | sed -e s/,/\',\'/g  -e s/^/\(\'/ -e s/$/\'\)/

##### Squish repeated delimiters into one

   echo  "hello::::there" | tr -s ':'

##### Calculate N!

   echo  $(($(seq -s* 10)))

##### Change a specific value in a path

   echo  /home/foo/dir1/bar |  awk -F/ -v OFS=/ '{$3 = "dir2"}1'

##### Convert ascii string to hex

   echo  -n 'text' | xxd -ps | sed -e ':a' -e 's/\([0-9]\{2\}\|^\)\([0-9]\{2\}\)/\1\\x\2/;ta'

##### Disassemble some shell code

   echo  -ne "<shellcode>" | x86dis -e 0 -s intel

##### flush memcached via netcat

   echo  'flush_all' | nc localhost 11211 -i1 <<< 'quit'

##### Get a qrcode for a given string

   echo  "http://commandlinefu.com" | curl -F-=\<- qrenco.de

##### set a reminder for 5 days in the future

   echo  "DISPLAY=$DISPLAY xmessage setup suphp perms htscanner acct#101101 host2.domain.com" | at 23:00 Feb 8

##### Create an eicar.com test virus

   echo  'K5B!C%@NC[4\CMK54(C^)7PP)7}$RVPNE-FGNAQNEQ-NAGVIVEHF-GRFG-SVYR!$U+U*' | tr '[A-Za-z]' '[N-ZA-Mn-za-m]' > /tmp/eicar.com

##### Find how far nested you are in subshells

   echo  "I am $BASH_SUBSHELL levels nested";

##### Convert ascii string to hex

   echo  -n 'text' | perl -pe 's/(.)/sprintf("\\x%x", ord($1))/eg'

##### Generate an XKCD #936 style 4 word passphrase (fast)

   echo  $(shuf -n4 /usr/share/dict/words)

##### Indicates the position of my monitor buttons

   echo  "|MENU|       |DOWN|    |UP/BRIGHT|  |ENTER|      |AUTO|      |OFF|"|osd_cat -p bottom -o -40 -i 1575

##### See how many more processes are allowed, awesome!

   echo  $(( `ulimit -u` - `find /proc -maxdepth 1 \( -user $USER -o -group $GROUPNAME \) -type d|wc -l` ))

##### send raw data (hex written)using UDP to an IP and port

   echo  -n 023135 | perl -pe 's/([0-9a-f]{2})/chr hex $1/gie' | nc -4u -q1 -p5001 192.168.0.100 2000

##### Create a video screencast of any x11 window, with audio

   echo  "Click a window to start recording"; read x y W H <<< `xwininfo | grep -e Width -e Height -e Absolute | grep -oE "[[:digit:]]{1,}" | tr "\n" " "`; ffmpeg -f alsa -ac 1 -i pulse -f x11grab -s ${W}x${H} -r 25 -i :0.0+${x},${y} -sameq output.mkv

##### bash or tcsh redirect both to stdout and to a file

   echo  "Hello World." | tee -a hello.txt

##### Changes a User Password via command line without promt

   echo  -e "new_password\nnew_password" | (passwd stdin $USER)

##### Execute a command at a given time

   echo  "ls -l" | at midnight

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Execute matlab sentences from command line

   echo  'magic(3)' | matlab -nodisplay

##### Prepend a text to a file.

   echo  "text to prepend" | cat - file

##### print a file on a single line

   echo  $(cat file)

##### Sort a character string

   echo  sortmeplease | grep -o . | sort | tr -d '\n'; echo

##### Encode a string using ROT47

   echo  "your string here" | tr '\!-~' 'P-~\!-O'

##### Email a file to yourself

   echo  "This is the message body" | mutt -s "Message subject" -a file_to_attach.zip fred@example.com

##### Count items in JSON array

   echo  '[1,2,3]' | jq '. | length'

##### .inputrc keybinding to wrap current line in inotifytools for instant compile/test-as-you-save-loop

   echo  '"\e\C-i": "\C-awhile true; do ( \C-e ); inotifywait -q -e modify -e close_write *; done\e51\C-b"' >>~/.inputrc

##### Inverted cowsay

   echo  Which way up? | flip.pl | cowsay | tac | sed -e "s,/,+,g" -e "s,\\\,/,g" -e "s,+,\\\,g" -e "s,_,-,g" -e "s,\^,v,g"

##### Greets the user appropriately

   echo  "12 morning\n15 afternoon\n24 evening" |while read t g; do if [ `date +%H` -lt $t ]; then echo "Good $g"; break; fi; done

##### Send a local file via email

   echo  "see attached file" | mail -a filename -s "subject" email@address

##### Check if a machine is online with better UI

   echo  -n "IP Address or Machine Name: "; read IP; ping -c 1 -q $IP >/dev/null 2>&1 && echo -e "\e[00;32mOnline\e[00m" || echo -e "\e[00;31mOffline\e[00m"

##### Send test prints to networked printer.

   echo  "test" | lp -d $PRINTER

##### Get decimal ascii code from character

   echo  -n a | od -d | sed -n "s/^.* //gp"

##### Random unsigned integer

   echo  $(openssl rand 4 | od -DAn)

##### Convert ascii string to hex

   echo  "text" | hd

##### Show directories in the PATH, one per line

   echo  -e ${PATH//:/\\n}

##### Generate an XKCD #936 style 4 word passphrase (fast)

   echo  $(grep "^[^'A-Z]\{3,7\}$" /usr/share/dict/words|shuf -n4)

##### Doing some floating point calculations with rounding (e.g. at the 3rd decimal)

   echo  '123/7' |bc -l |xargs printf "%.3f\n"

##### Battery real life energy vs predicted remaining plotted

   echo  start > battery.txt; watch -n 60 'date >> battery.txt ; acpi -b >> battery.txt'

##### Create a PNG screenshot of Rigol Ultravision scopes attached per LAN

   echo  "display:data?" | nc "$scope_ip_address" 5555 | dd bs=1 skip=11 2>/dev/null | convert bmp:- out_file.png

##### run complex remote shell cmds over ssh, without escaping quotes

   echo  "properly_escaped_command" | ssh user@host $(< /dev/fd/0)

##### ignore .DS_Store forever in GIT

   echo  .DS_Store >> ~/.gitignore

##### Print text string vertically, one character per line.

   echo  "vertical text" | grep -o '.'

##### Validate and pretty-print JSON expressions.

   echo  '{"json":"obj"}' | python -m simplejson.tool

##### Greets the user appropriately

   echo  -e "12 morning\n15 afternoon\n24 evening" |awk '{if ('`date +%H`'<$1) {print "Good "$2;exit}}'

##### shell alternative to 'basename'

   echo  ${file##*/}

##### Capitalize first letter of each word in a string

   echo  'fOo BaR' | ruby -e "p STDIN.gets.split.map(&:capitalize).join(' ')"

##### Get your outgoing IP address

   echo  -n $(curl -Ss  http://icanhazip.com) | xclip

##### convert a string of hex characters into ascii chars

   echo  $hex | perl -pe 's/(..)/chr(hex($1))/ge'

##### generate a uuid

   echo  "import uuid\nimport sys\nsys.stdout.write(str(uuid.uuid4()))" | python

##### Just run it ;)

   echo  SSBMb3ZlIFlvdQo= | base64 -d

##### AWS Route53 hosted zone export

   echo  -e "\$ORIGIN\tumccr.org.\n\$TTL\t1h\n" && aws route53 list-resource-record-sets hosted-zone-id Z1EEXAMPLE9SF3 | jq -r '.ResourceRecordSets[] | [.Name, .Type, .ResourceRecords[0].Value] | join("\t")' -  | grep -vE "NS|SOA"

##### Find duplicate dir in path

   echo  $PATH|tr : '\n'|sort|uniq -d

##### Number of seconds to certain unix date

   echo  $( (( $( (2**31 -1) ) - $(date +%s) )) )

##### Poor man's pomodoro timer

   echo  "aplay ring.wav" | at now + 25 min

##### Extract text from all PDFs in curdir & subdirs to new files named as source+.txt, linux only.

   echo  '#!/bin/bash' > junk.sh ; find . -iname *.pdf -type f -printf \p\s\2\a\s\c\i\i\ \"%p\"\ \ \"%p\.\t\x\u\"\;\ \p\a\r\ \<\"%p\.\t\x\u\"\ \>\"%p\.\t\x\t\"\ \;\ \r\m\ \"%p\.\t\x\u\"\ \\n >>junk.sh; chmod 766 junk.sh; ./junk.sh ; rm junk.sh

##### Displays all the fields of a table, really usefull to run it inside editor (Emacs or vim)

   echo  "DESCRIBE dbname.table_name" | mysql -u dbusername | awk '{print $1}' | grep -v Field

##### Execute a command at a given time

   echo  "ls -l" | at midnight

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Find out the starting directory of a script

   echo  "${0%/*}"

##### prevent accidents and test your command with echo

   echo  rm *.txt

##### Calculate pi to an arbitrary number of decimal places

   echo  "scale=1000; 4*a(1)" | bc -l

##### When using mkvirtualenv, make the current directory your base and cd into that directory every time you workon that project

   echo  'echo "cd `pwd`" >> $VIRTUAL_ENV/bin/postactivate' >> $VIRTUAL_ENV/../postmkvirtualenv

##### repeat any string or char n times without spaces between

   echo  "$(yes '+' | head -n5)"

##### True Random Dice Roll

   echo  $(</dev/urandom tr -dc 1-6 | head -c1)

##### Defcon 18 Quals Binary L33tness 300 Solution

   echo  "6d5967306474686924697344406b3379" | xxd -r -p

##### checking if an IP is valid.

   echo  $IP | egrep '^(([0-9]{1,2}|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.){3}([0-9]{1,2}|1[0-9][0-9]|2[0-4][0-9]|25[0-5])$'

##### Ensuring that the IP has no strange characters

   echo  ${IP} | sed "s/[0-9\.]//g"

##### Salvage a borked terminal

   echo  <ctrl-v><esc>c<enter>

##### Convert Hex to String

   echo  474e552773204e6f7420556e697821 | sed -e 's/\(.\{2\}\)/\\\\x\1/g' | xargs echo -e

##### Displays what shell you are using.

   echo  $0

##### Terrorist threat level text

   echo  "Terrorist threat level: $(curl -s 'http://www.dhs.gov/dhspublic/getAdvisoryCondition' | awk -F\" 'NR==2{ print $2 }')"

##### Turn on NFS Debugging

   echo  1 > /proc/sys/sunrpc/nfs_debug

##### create random string from /dev/urandom (or another length)

   echo  `cat /dev/urandom | base64 | tr -dc "[:alnum:]" | head -c64`

##### Create a script of the last executed command

   echo  !!:q > foo.sh

##### Display last exit status of a command

   echo  $?

##### Set your profile so that you resume or start a screen session on login

   echo  "screen -DR" >> ~/.bash_profile

##### bash shortcut: !$ !^ !* !:3 !:h and !:t

   echo  foo bar foobar barfoo && echo !$ !^  !:3 !* &&  echo /usr/bin/foobar&& echo !$:h !$:t

##### bored of the waiting for moderation

   echo  "bored of the awaiting moderation"

##### find files in $PATH that were not installed through dpkg

   echo  -e "${PATH//://\n}" >/tmp/allpath; grep -Fh -f /tmp/allpath /var/lib/dpkg/info/*.list|grep -vxh -f /tmp/allpath >/tmp/installedinpath ; find ${PATH//:/ } |grep -Fxv -f /tmp/installedinpath

##### Match a URL

   echo  "(Something like http://foo.com/blah_blah)" | grep -oP "\b(([\w-]+://?|www[.])[^\s()<>]+(?:\([\w\d]+\)|([^[:punct:]\s]|/)))"

##### Partition a new disk as all one partition tagged as LINUX_NATIVE

   echo  "0,,L" | sfdisk /dev/sdX

##### Generate padded numbers 001 002 ... 100

   echo  00{1..9} 0{10..99} 100

##### Use awk's FIELDWIDTHS function to manipulate a string.

   echo  "rootgot" | awk 'BEGIN{FIELDWIDTHS="4 3"}{print $2$1}'

##### Generate a random password.

   echo  $(< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c10)

##### 2 SSL get expiration date from remote site

   echo  | openssl s_client -servername google.de -connect google.de:443 2>/dev/null | openssl x509 -noout -enddate

##### Add current directory to Ruby load path

   echo  "$: << '.'" >> $IRBRC

##### Generate MD5 of string and output only the hash checksum in a readable format

   echo  -n "String to MD5" | md5sum | sed -e 's/../& /g' -e 's/  -//'

##### print an 'hello world'

   echo  'hello world'

##### List your MACs address

   echo  | ifconfig | grep HWaddr

##### Search count how many times a number, character or string is present on a stream

   echo  something | awk '{ total += gsub(/yourstring/,"") } END { print total }'

##### Flush memcache cache

   echo  'flush_all' | nc localhost 11211

##### Passwordless mysql{,dump,admin} via my.cnf file

   echo  -e "[client]\nuser = YOURUSERNAME\npassword = YOURPASSWORD" > ~/.my.cnf

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Copy to clipboard osx

   echo  -n "text" | pbcopy

##### Remove the last string  character using rev and cut

   echo  "command lines" | rev | cut -c 2- | rev

##### convert unixtime to human-readable

   echo  "0t${currentEpoch}=Y" | /usr/bin/adb

##### Triangular Number

   echo  $(echo $(seq $MIN $MAX) | sed 's/ /+/g') | bc -l

##### A simple way find total Memory capacity of the system

   echo  "Memory:" $(dmidecode type memory | grep " MB" | awk '{sum += $2; a=sum/1024} END {print a}') "GB"

##### calculate in commandline with bc

   echo  "1+1" | bc

##### Print repeating CSV values on new lines - normalize repeating fields

   echo  "LINUX,DIR,FILE1,FILE2,FILE3" | perl -aF, -nle 'my ($fld1, $fld2, @fields) = @F; while(@fields) { print join ",", $fld1, $fld2, splice(@fields, 0, 1) }'

##### Change your swappiness Ratio under linux

   echo  50 > /proc/sys/vm/swappiness

##### Use php and md5 to generate a password

   echo  -n "string" | md5sum|cut -f 1 -d " "

##### Super Speedy Hexadecimal or Octal Calculations and Conversions to Decimal.

   echo  "$(( 0x10 )) - $(( 010 )) = $(( 0x10 - 010 ))"

##### a simple interactive tool to convert Simplified Chinese (typed by pinyin) to Traditional Chinese &#31616;&#32321;&#20013;&#25991;&#36716;&#25442;

   echo  "Simplied Chinese:"; while read -r line; do echo "Traditional Chinese:"; echo $line | iconv -f utf8 -t gb2312 | iconv -f gb2312  -t big5 | iconv -f big5 -t utf8; done

##### Convert ascii string to hex

   echo  -n text | hexdump -C

##### To display the message

   echo  "Hello WOrld"

##### Adding kernel boot parameters after loading kernel and initrd

   echo  "root=/dev/sda7" > /proc/param.conf

##### a simple bash one-liner to create php file and call php function

   echo  '<?php echo str_rot13 ("Hello World\n") ?>' | php

##### Print a row of 50 hyphens

   echo  - | sed -e :a -e 's/^.\{1,50\}$/&-/;ta'

##### Display EPOCH time in human readable format using AWK.

   echo  1268727836 | awk '{print strftime("%c",$1)}'

##### talking clock

   echo  $(date +%m) past $(date +%H) | espeak

##### Use the page up key to complete the command.

   echo  "\"\e[5~\": history-search-backward" >> ~/.inputrc

##### Global BTC rate in EUR

   echo  "BTC rate is" $(wget https://api.bitcoinaverage.com/ticker/global/EUR/ -q -O - | jq ".last") "?"

##### Show public IPv4 and IPv6

   echo  "IPv4: $(curl -s4 ip.appspot.com)" ; echo "IPv6: $(curl -s6 ip.appspot.com)"

##### un-escape URL/URIs with Ruby

   echo  'example.com%2Fsome%2Fpath' | ruby -r'cgi' -e 'puts CGI.unescape(STDIN.read)'

##### Resource Monitoring

   echo  "DISK:";df  -Pl | grep -v "Filesystem" | awk '{print $5,$6}' ; echo "MEM:" ; free -mto | awk '{ print $1,$2,$3,$4 }'; echo "CPU:"; top -b -d1 -n1 | grep Cpu |  awk '{print $2,$3,$4,$5,$6,$7,$8,$9}';echo "LOAD:"; cat /proc/loadavg

##### Print a single character from a string with AWK.

   echo  "abcdefg"|awk 'BEGIN {FS="''"} {print $2}'

##### Wait for file to stop changing

   echo  FileName | perl -nlE'sleep 1 while time-(stat)[10]<10' && echo DONE

##### get value after comma from an arithmetic operation

   echo  "scale=6;2048 / 2.345" | bc

##### Prevent command history file from being overwritten by multiple shell sessions.

   echo  "shopt -s histappend" >> ~/.bashrc ; . ~/.bashrc

##### Generate MD5 hash for a string

   echo  -n "string" | md5sum -

##### hours before the time()==1234567890

   echo  $(( (1234567890 - `date -u +\%s`) / 60 / 60 ))

##### Converts uppercase chars in a string to lowercase

   echo  StrinG | tr 'A-Z' 'a-z'

##### Matched string reference in replacement text

   echo  "abcde" | sed 's/./& /g'

##### Simulate typing

   echo  "You can simulate on-screen typing just like in the movies" | pv -qL 10

##### Terrorist threat level text

   echo  "Terrorist threat level: `od -An -N1 -i /dev/random`"

##### Send email with one or more binary attachments

   echo  "Body goes here" | mutt -s "A subject" -a /path/to/file.tar.gz recipient@example.com

##### Download schedule

   echo  'wget url' | at 12:00

##### send a message to a windows machine in a popup

   echo  "message" | smbclient -M NAME_OF_THE_COMPUTER

##### Play awesome rythmic noise using aplay

   echo  "main(i){for(i=0;;i++)putchar(((i*(i>>8|i>>9)&46&i>>8))^(i&i>>13|i>>6));}" | gcc -x c - && ./a.out | aplay

##### Convert a string to "Title Case"

   echo  "this is a test" | sed 's/.*/\L&/; s/[a-z]*/\u&/g'

##### Delay execution until load average falls under 1.5

   echo  'some command' | batch

##### Log your internet download speed

   echo  $(date +%s) > start-time; URL=http://www.google.com; while true; do echo $(curl -L w %{speed_download} -o/dev/null -s $URL) >> bps; sleep 10; done &
