# pr

##### Extend the opensuse buildservice key for a project and trigger its rebuild

   pr oject=YOURPROJECTHERE; package=YOURPACKAGEHERE; osc signkey extend $project; osc rebuildpac project package

##### Emulate perl 'print "#" x 20, "\n"'

   pr intf '%*s\n' 20 | tr ' ' '#'

##### Merge files, joining each line in one line

   pr  -m -t file1 file2 ...

##### List files that DO NOT match a pattern

   pr intf "%s\n" !(pattern) ## ksh, or bash with shopt -s extglob

##### Print environment information.

   pr intenv

##### Print a row of 50 hyphens

   pr intf "%.50d" 0 | tr 0 -

##### Print a row of 50 hyphens

   pr intf "%50s\n"|tr ' ' -

##### Ping scanning without nmap

   pr efix="10.0.0" && for i in `seq 25`; do ping -c 1 $prefix.$i &> /dev/null && echo "Answer from: $prefix.$i" ; done

##### hexadecimal2decimal

   pr intf "%d\n" \0x64

##### Get the rough (german) time from Twitter by @zurvollenstunde

   pr intf "%02d:%02d\n" $(curl -s "http://search.twitter.com/search?from=zurvollenstunde&rpp=1" | grep -E '(Es ist jetzt|ago)'  | sed 's/<[^>]*>//g;s/[^[:digit:]]//g'  | xargs )

##### List all available commands (bash, ksh93)

   pr intf "%s\n" ${PATH//:/\/* }

##### Generate MD5 hash for a string

   pr intf "$string" | md5sum

##### Show directories in the PATH, one per line

   pr int -l $path

##### Show the PATH, one directory per line

   pr intf ${PATH//:/\\n}

##### Pronounce an English word using Merriam-Webster.com

   pr onounce(){ wget -qO- $(wget -qO- "http://www.m-w.com/dictionary/$@" | grep 'return au' | sed -r "s|.*return au\('([^']*)', '([^'])[^']*'\).*|http://cougar.eb.com/soundc11/\2/\1|") | aplay -q; }

##### Create AUTH PLAIN string to test SMTP AUTH session

   pr intf '\!:1\0\!:1\0\!:2' | mmencode | tr -d '\n' | sed 's/^/AUTH PLAIN /'

##### Print a row of characters the width of terminal

   pr intf -vl "%${COLUMNS:-`tput cols 2>&-||echo 80`}s\n" && echo ${l// /-};

##### Resize a Terminal Window

   pr intf "\e[8;70;180;t"

##### Limit the cpu usage of a process

   pr limit cpu=10 sort -u hugefile

##### Print a row of characters across the terminal

   pr intf -v row "%${COLUMNS}s"; echo ${row// /#}

##### sudo for entire line (including pipes and redirects)

   pr oceed_sudo () { sudor_command="`HISTTIMEFORMAT=\"\" history 1 | sed -r -e 's/^.*?sudor//' -e 's/\"/\\\"/g'`" ; sudo sh -c "$sudor_command"; }; alias sudor="proceed_sudo # "

##### Prefix command output with duration for each line

   pr ogram | gawk 'BEGIN { l=systime() ; p=" start " } { t=systime(); print t-l "s " p; l=t; p=$0 } END { t=systime(); print t-l "s " p}'

##### generate a telephone keypad

   pr intf "%s\t%s\t%s\n" {1..9} '*' 0 '#'

##### Prepend a text to a file.

   pr epend () { array=("$@"); len=${#array[@]}; file=${array[$len-1]}; text=${array[@]:0:$len-1}; printf '%s\n' 0a "$text" . w | ed -s "$file"; }

##### list with full path

   pr intf "$PWD/%s\n" *

##### formatting number with comma

   pr intf "%'d\n" 1234567

##### Print random emoji in terminal

   pr intf "\U$(printf '%x' $((RANDOM%79+128512)) )"

##### chroot, bind mount  without root privilege/setup

   pr oot -r /media/user/ubuntu12.10/  cat /etc/motd

##### split source code to page with numbers

   pr  -l 40 bitree.c > printcode; split -40 printcode -d page_

##### Use Perl like grep

   pr ep () { perl -nle 'print if '"$1"';' $2 }

##### urldecoding

   pr intf $(echo -n $1 | sed 's/\\/\\\\/g;s/\(%\)\([0-9a-fA-F][0-9a-fA-F]\)/\\x\2/g')

##### Print a row of characters across the terminal

   pr intf "%`tput cols`s"|tr ' ' '#'

##### Find all dot files and directories

   pr intf "%s\n" .*

##### Get your bash scripts to handle options (-h, help etc) and spit out auto-formatted help or man page when asked!!

   pr ocess-getopt

##### cloning partition tables under Solaris

   pr tvtoc /dev/rdsk/c0t0d0s2 | fmthard -s - /dev/rdsk/c0t1d0s2

##### print text in color red

   pr intTextInColorRed () { echo -e '\033[01;31m\033[K'"$@"'\033[m\033[K' ;}   ## print text/string in color red

##### Function to change prompt

   pr ompt (){ if [ "$1" = "on" ]; then . ~/.bash_profile; else if [ "$1" = "off" ];then PS1="$ ";fi;fi; }

##### Show highlighted text with full terminal width

   pr intf "\e[7m%-`tput cols`s\e[0m\n" "Full width highlighted line"

##### Join the content of a bash array with commas

   pr intf  " -e %s" ${ARRAY[*]}

##### Pronounce an English word using Dictionary.com

   pr onounce(){ wget -qO- $(wget -qO- "http://dictionary.reference.com/browse/$@" | grep 'soundUrl' | head -n 1 | sed 's|.*soundUrl=\([^&]*\)&.*|\1|' | sed 's/%3A/:/g;s/%2F/\//g') | mpg123 -; }

##### Big (four-byte) $RANDOM

   pr intf %d 0x`dd if=/dev/urandom bs=1 count=4 2>/dev/null | od -x | awk 'NR==1 {print $2$3}'`

##### get the ascii number with bash builtin printf

   pr intf "%d\n" "'A" "'B"

##### Password generator

   pr intf '%s-%s-%s-%s\n' $(grep -v "[A-Z]\|'" /usr/share/dict/british | shuf -n 4)

##### Generate binary sequence data

   pr intf "%x\n" $(seq 0 255) | xargs -n1 -IH echo -ne \\xH > test.dat

##### Get a count of how many file types a project has

   pr intf "\n%25s%10sTOTAL\n" 'FILE TYPE' ' '; for ext in $(find . -iname \*.* | egrep -o '\.[^[:space:].]+$' | egrep -v '\.svn*' | sort -f | uniq -i); do count=$(find . -iname \*$ext | wc -l); printf "%25s%10s%d\n" $ext ' '  $count; done

##### prips can be used to print all IP addresses of a specified range.

   pr ips

##### Estimate an economic bitcoin-cli fee and display as sat/B with date time stamp

   pr intf %g "$(bitcoin-cli estimatesmartfee 6 "ECONOMICAL" | jq .feerate*100000)";printf " sat/B estimated feerate for 6 confirmations as of $(date +%c)\nDivide by 100,000 to get btc/KB\n"

##### Ping sweep without NMAP

   pr efix="169.254" && for i in {0..254}; do echo $prefix.$i/8; for j in {1..254}; do sh -c "ping -m 1 -c 1 -t 1 $prefix.$i.$j | grep \"icmp\" &" ; done; done

##### Fibonacci numbers with sh

   pr ev=0;next=1;echo $prev;while(true);do echo $next;sum=$(($prev+$next));prev=$next;next=$sum;sleep 1;done

##### Find all dot files and directories

   pr intf "%s\n" .*

##### get process id of command

   pr ocessid=$(ps aux | grep 'nginx' | grep -v grep| awk '{print $2}')

##### Find today created files

   pr int -rl **/*(.m0)

##### Find files with size over 100MB and output with better lay-out

   pr int -rl **/*(.Lm+100)

##### Filtering IP address from ifconfig usefule in scripts

   pr int ${$(ifconfig wlan0)[6]}

##### Get the /dev/disk/by-id fragment for a physical drive

   pr int /dev/disk/by-id/*(@[1]:t)

##### repeat any string or char n times without spaces between

   pr intf  'xyz%.0s' {1..20}

##### list all world-writeable Linux files

   pr int -rl /**/*(.f:o+w:)

##### Join the content of a bash array with commas

   pr intf "%s," "${LIST[@]}" | cut -d "," -f 1-${#LIST[@]}

##### Clear terminal screen as well as terminal buffer

   pr intf "\ec"

##### reverse order of file

   pr intf "g/^/m0\nw\nq"|ed $FILE

##### put environment variable in history to edit

   pr int -s "PATH='$PATH'"

##### Change a text files contents without opening it, or intermediate files.

   pr int 'g/'delete this line'/delete\nwq' | ex file.txt

##### Pronounce an English word using Merriam-Webster.com

   pr onounce(){ xidel "http://www.m-w.com/dictionary/$*" -f "replace(css('.au')[1]/@onclick,\".*'([^']+)', *'([^']+)'.*\", '/audio.php?file=\$1&word=\$2')" -f 'css("embed")[1]/@src' download - | aplay -q;}

##### get processid of running process

   pr ocessid =$(ps aux | grep 'ProcessName' | grep -v grep| awk '{print $2}')

##### See the total amount of data on an AIX machine

   pr int "$(lsvg -Lo |xargs lsvg -L|grep "TOTAL PPs"|awk -F"(" '{print$2}'|sed -e "s/)//g" -e "s/megabytes/+/g"|xargs|sed -e "s/^/(/g" -e "s/+$/)\/1000/g"|bc ) GB"

##### Generate an over-the-top UUID

   pr intf $(( echo "obase=16;$(echo $$$(date +%s%N))"|bc; ip link show|sed -n '/eth/ {N; p}'|grep -o -E '([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}'|head -c 17 )|tr -d [:space:][:punct:]  |sed 's/[[:xdigit:]]\{2\}/\\x&/g')|sha1sum|head -c 32; echo

##### A line across the entire width of the terminal

   pr intf "%$(tput cols)s\n"|tr ' ' '='

##### Print a row of characters across the terminal

   pr intln() {echo -n -e "\e[038;05;${2:-255}m";printf "%$(tput cols)s"|sed "s/ /${1:-=}/g"}

##### for loop with leading zero in bash 3

   pr intf "%02u " {3..20}; echo

##### progress bar for cp

   pr ogr

##### Merge files, joining each line in one line

   pr  -m -t file1 file2 ...

##### List all available commands (bash, ksh93)

   pr intf "%s\n" ${PATH//:/\/* }

##### Show the PATH, one directory per line

   pr intf ${PATH//:/\\n}

##### Pronounce an English word using Merriam-Webster.com

   pr onounce(){ wget -qO- $(wget -qO- "http://www.m-w.com/dictionary/$@" | grep 'return au' | sed -r "s|.*return au\('([^']*)', '([^'])[^']*'\).*|http://cougar.eb.com/soundc11/\2/\1|") | aplay -q; }

##### Create AUTH PLAIN string to test SMTP AUTH session

   pr intf '\!:1\0\!:1\0\!:2' | mmencode | tr -d '\n' | sed 's/^/AUTH PLAIN /'

##### Print a row of characters the width of terminal

   pr intf -vl "%${COLUMNS:-`tput cols 2>&-||echo 80`}s\n" && echo ${l// /-};

##### Resize a Terminal Window

   pr intf "\e[8;70;180;t"

##### Limit the cpu usage of a process

   pr limit cpu=10 sort -u hugefile

##### Print a row of characters across the terminal

   pr intf -v row "%${COLUMNS}s"; echo ${row// /#}

##### sudo for entire line (including pipes and redirects)

   pr oceed_sudo () { sudor_command="`HISTTIMEFORMAT=\"\" history 1 | sed -r -e 's/^.*?sudor//' -e 's/\"/\\\"/g'`" ; sudo sh -c "$sudor_command"; }; alias sudor="proceed_sudo # "

##### Prefix command output with duration for each line

   pr ogram | gawk 'BEGIN { l=systime() ; p=" start " } { t=systime(); print t-l "s " p; l=t; p=$0 } END { t=systime(); print t-l "s " p}'

##### generate a telephone keypad

   pr intf "%s\t%s\t%s\n" {1..9} '*' 0 '#'

##### Prepend a text to a file.

   pr epend () { array=("$@"); len=${#array[@]}; file=${array[$len-1]}; text=${array[@]:0:$len-1}; printf '%s\n' 0a "$text" . w | ed -s "$file"; }

##### list with full path

   pr intf "$PWD/%s\n" *

##### formatting number with comma

   pr intf "%'d\n" 1234567

##### Print random emoji in terminal

   pr intf "\U$(printf '%x' $((RANDOM%79+128512)) )"

##### chroot, bind mount  without root privilege/setup

   pr oot -r /media/user/ubuntu12.10/  cat /etc/motd

##### split source code to page with numbers

   pr  -l 40 bitree.c > printcode; split -40 printcode -d page_

##### Use Perl like grep

   pr ep () { perl -nle 'print if '"$1"';' $2 }

##### urldecoding

   pr intf $(echo -n $1 | sed 's/\\/\\\\/g;s/\(%\)\([0-9a-fA-F][0-9a-fA-F]\)/\\x\2/g')

##### Print a row of characters across the terminal

   pr intf "%`tput cols`s"|tr ' ' '#'

##### Find all dot files and directories

   pr intf "%s\n" .*

##### Get your bash scripts to handle options (-h, help etc) and spit out auto-formatted help or man page when asked!!

   pr ocess-getopt

##### cloning partition tables under Solaris

   pr tvtoc /dev/rdsk/c0t0d0s2 | fmthard -s - /dev/rdsk/c0t1d0s2

##### print text in color red

   pr intTextInColorRed () { echo -e '\033[01;31m\033[K'"$@"'\033[m\033[K' ;}   ## print text/string in color red

##### Function to change prompt

   pr ompt (){ if [ "$1" = "on" ]; then . ~/.bash_profile; else if [ "$1" = "off" ];then PS1="$ ";fi;fi; }

##### Show highlighted text with full terminal width

   pr intf "\e[7m%-`tput cols`s\e[0m\n" "Full width highlighted line"

##### Join the content of a bash array with commas

   pr intf  " -e %s" ${ARRAY[*]}

##### Pronounce an English word using Dictionary.com

   pr onounce(){ wget -qO- $(wget -qO- "http://dictionary.reference.com/browse/$@" | grep 'soundUrl' | head -n 1 | sed 's|.*soundUrl=\([^&]*\)&.*|\1|' | sed 's/%3A/:/g;s/%2F/\//g') | mpg123 -; }

##### Big (four-byte) $RANDOM

   pr intf %d 0x`dd if=/dev/urandom bs=1 count=4 2>/dev/null | od -x | awk 'NR==1 {print $2$3}'`

##### get the ascii number with bash builtin printf

   pr intf "%d\n" "'A" "'B"

##### Password generator

   pr intf '%s-%s-%s-%s\n' $(grep -v "[A-Z]\|'" /usr/share/dict/british | shuf -n 4)

##### Generate binary sequence data

   pr intf "%x\n" $(seq 0 255) | xargs -n1 -IH echo -ne \\xH > test.dat

##### Get a count of how many file types a project has

   pr intf "\n%25s%10sTOTAL\n" 'FILE TYPE' ' '; for ext in $(find . -iname \*.* | egrep -o '\.[^[:space:].]+$' | egrep -v '\.svn*' | sort -f | uniq -i); do count=$(find . -iname \*$ext | wc -l); printf "%25s%10s%d\n" $ext ' '  $count; done

##### prips can be used to print all IP addresses of a specified range.

   pr ips

##### Estimate an economic bitcoin-cli fee and display as sat/B with date time stamp

   pr intf %g "$(bitcoin-cli estimatesmartfee 6 "ECONOMICAL" | jq .feerate*100000)";printf " sat/B estimated feerate for 6 confirmations as of $(date +%c)\nDivide by 100,000 to get btc/KB\n"

##### Ping sweep without NMAP

   pr efix="169.254" && for i in {0..254}; do echo $prefix.$i/8; for j in {1..254}; do sh -c "ping -m 1 -c 1 -t 1 $prefix.$i.$j | grep \"icmp\" &" ; done; done

##### Fibonacci numbers with sh

   pr ev=0;next=1;echo $prev;while(true);do echo $next;sum=$(($prev+$next));prev=$next;next=$sum;sleep 1;done

##### Find all dot files and directories

   pr intf "%s\n" .*

##### get process id of command

   pr ocessid=$(ps aux | grep 'nginx' | grep -v grep| awk '{print $2}')

##### Find today created files

   pr int -rl **/*(.m0)

##### Find files with size over 100MB and output with better lay-out

   pr int -rl **/*(.Lm+100)

##### Filtering IP address from ifconfig usefule in scripts

   pr int ${$(ifconfig wlan0)[6]}

##### Get the /dev/disk/by-id fragment for a physical drive

   pr int /dev/disk/by-id/*(@[1]:t)

##### repeat any string or char n times without spaces between

   pr intf  'xyz%.0s' {1..20}

##### list all world-writeable Linux files

   pr int -rl /**/*(.f:o+w:)

##### Join the content of a bash array with commas

   pr intf "%s," "${LIST[@]}" | cut -d "," -f 1-${#LIST[@]}

##### Clear terminal screen as well as terminal buffer

   pr intf "\ec"

##### reverse order of file

   pr intf "g/^/m0\nw\nq"|ed $FILE

##### put environment variable in history to edit

   pr int -s "PATH='$PATH'"

##### Change a text files contents without opening it, or intermediate files.

   pr int 'g/'delete this line'/delete\nwq' | ex file.txt

##### Pronounce an English word using Merriam-Webster.com

   pr onounce(){ xidel "http://www.m-w.com/dictionary/$*" -f "replace(css('.au')[1]/@onclick,\".*'([^']+)', *'([^']+)'.*\", '/audio.php?file=\$1&word=\$2')" -f 'css("embed")[1]/@src' download - | aplay -q;}

##### get processid of running process

   pr ocessid =$(ps aux | grep 'ProcessName' | grep -v grep| awk '{print $2}')

##### A line across the entire width of the terminal

   pr intf "%$(tput cols)s\n"|tr ' ' '='
