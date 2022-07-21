# print

##### Emulate perl 'print "#" x 20, "\n"'

   print f '%*s\n' 20 | tr ' ' '#'

##### List files that DO NOT match a pattern

   print f "%s\n" !(pattern) ## ksh, or bash with shopt -s extglob

##### Print environment information.

   print env

##### Print a row of 50 hyphens

   print f "%.50d" 0 | tr 0 -

##### Print a row of 50 hyphens

   print f "%50s\n"|tr ' ' -

##### hexadecimal2decimal

   print f "%d\n" \0x64

##### Get the rough (german) time from Twitter by @zurvollenstunde

   print f "%02d:%02d\n" $(curl -s "http://search.twitter.com/search?from=zurvollenstunde&rpp=1" | grep -E '(Es ist jetzt|ago)'  | sed 's/<[^>]*>//g;s/[^[:digit:]]//g'  | xargs )

##### List all available commands (bash, ksh93)

   print f "%s\n" ${PATH//:/\/* }

##### Generate MD5 hash for a string

   print f "$string" | md5sum

##### Show directories in the PATH, one per line

   print  -l $path

##### Show the PATH, one directory per line

   print f ${PATH//:/\\n}

##### Create AUTH PLAIN string to test SMTP AUTH session

   print f '\!:1\0\!:1\0\!:2' | mmencode | tr -d '\n' | sed 's/^/AUTH PLAIN /'

##### Print a row of characters the width of terminal

   print f -vl "%${COLUMNS:-`tput cols 2>&-||echo 80`}s\n" && echo ${l// /-};

##### Resize a Terminal Window

   print f "\e[8;70;180;t"

##### Print a row of characters across the terminal

   print f -v row "%${COLUMNS}s"; echo ${row// /#}

##### generate a telephone keypad

   print f "%s\t%s\t%s\n" {1..9} '*' 0 '#'

##### list with full path

   print f "$PWD/%s\n" *

##### formatting number with comma

   print f "%'d\n" 1234567

##### Print random emoji in terminal

   print f "\U$(printf '%x' $((RANDOM%79+128512)) )"

##### urldecoding

   print f $(echo -n $1 | sed 's/\\/\\\\/g;s/\(%\)\([0-9a-fA-F][0-9a-fA-F]\)/\\x\2/g')

##### Print a row of characters across the terminal

   print f "%`tput cols`s"|tr ' ' '#'

##### Find all dot files and directories

   print f "%s\n" .*

##### print text in color red

   print TextInColorRed () { echo -e '\033[01;31m\033[K'"$@"'\033[m\033[K' ;}   ## print text/string in color red

##### Show highlighted text with full terminal width

   print f "\e[7m%-`tput cols`s\e[0m\n" "Full width highlighted line"

##### Join the content of a bash array with commas

   print f  " -e %s" ${ARRAY[*]}

##### Big (four-byte) $RANDOM

   print f %d 0x`dd if=/dev/urandom bs=1 count=4 2>/dev/null | od -x | awk 'NR==1 {print $2$3}'`

##### get the ascii number with bash builtin printf

   print f "%d\n" "'A" "'B"

##### Password generator

   print f '%s-%s-%s-%s\n' $(grep -v "[A-Z]\|'" /usr/share/dict/british | shuf -n 4)

##### Generate binary sequence data

   print f "%x\n" $(seq 0 255) | xargs -n1 -IH echo -ne \\xH > test.dat

##### Get a count of how many file types a project has

   print f "\n%25s%10sTOTAL\n" 'FILE TYPE' ' '; for ext in $(find . -iname \*.* | egrep -o '\.[^[:space:].]+$' | egrep -v '\.svn*' | sort -f | uniq -i); do count=$(find . -iname \*$ext | wc -l); printf "%25s%10s%d\n" $ext ' '  $count; done

##### Estimate an economic bitcoin-cli fee and display as sat/B with date time stamp

   print f %g "$(bitcoin-cli estimatesmartfee 6 "ECONOMICAL" | jq .feerate*100000)";printf " sat/B estimated feerate for 6 confirmations as of $(date +%c)\nDivide by 100,000 to get btc/KB\n"

##### Find all dot files and directories

   print f "%s\n" .*

##### Find today created files

   print  -rl **/*(.m0)

##### Find files with size over 100MB and output with better lay-out

   print  -rl **/*(.Lm+100)

##### Filtering IP address from ifconfig usefule in scripts

   print  ${$(ifconfig wlan0)[6]}

##### Get the /dev/disk/by-id fragment for a physical drive

   print  /dev/disk/by-id/*(@[1]:t)

##### repeat any string or char n times without spaces between

   print f  'xyz%.0s' {1..20}

##### list all world-writeable Linux files

   print  -rl /**/*(.f:o+w:)

##### Join the content of a bash array with commas

   print f "%s," "${LIST[@]}" | cut -d "," -f 1-${#LIST[@]}

##### Clear terminal screen as well as terminal buffer

   print f "\ec"

##### reverse order of file

   print f "g/^/m0\nw\nq"|ed $FILE

##### put environment variable in history to edit

   print  -s "PATH='$PATH'"

##### Change a text files contents without opening it, or intermediate files.

   print  'g/'delete this line'/delete\nwq' | ex file.txt

##### See the total amount of data on an AIX machine

   print  "$(lsvg -Lo |xargs lsvg -L|grep "TOTAL PPs"|awk -F"(" '{print$2}'|sed -e "s/)//g" -e "s/megabytes/+/g"|xargs|sed -e "s/^/(/g" -e "s/+$/)\/1000/g"|bc ) GB"

##### Generate an over-the-top UUID

   print f $(( echo "obase=16;$(echo $$$(date +%s%N))"|bc; ip link show|sed -n '/eth/ {N; p}'|grep -o -E '([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}'|head -c 17 )|tr -d [:space:][:punct:]  |sed 's/[[:xdigit:]]\{2\}/\\x&/g')|sha1sum|head -c 32; echo

##### A line across the entire width of the terminal

   print f "%$(tput cols)s\n"|tr ' ' '='

##### Print a row of characters across the terminal

   print ln() {echo -n -e "\e[038;05;${2:-255}m";printf "%$(tput cols)s"|sed "s/ /${1:-=}/g"}

##### for loop with leading zero in bash 3

   print f "%02u " {3..20}; echo

##### List all available commands (bash, ksh93)

   print f "%s\n" ${PATH//:/\/* }

##### Show the PATH, one directory per line

   print f ${PATH//:/\\n}

##### Create AUTH PLAIN string to test SMTP AUTH session

   print f '\!:1\0\!:1\0\!:2' | mmencode | tr -d '\n' | sed 's/^/AUTH PLAIN /'

##### Print a row of characters the width of terminal

   print f -vl "%${COLUMNS:-`tput cols 2>&-||echo 80`}s\n" && echo ${l// /-};

##### Resize a Terminal Window

   print f "\e[8;70;180;t"

##### Print a row of characters across the terminal

   print f -v row "%${COLUMNS}s"; echo ${row// /#}

##### generate a telephone keypad

   print f "%s\t%s\t%s\n" {1..9} '*' 0 '#'

##### list with full path

   print f "$PWD/%s\n" *

##### formatting number with comma

   print f "%'d\n" 1234567

##### Print random emoji in terminal

   print f "\U$(printf '%x' $((RANDOM%79+128512)) )"

##### urldecoding

   print f $(echo -n $1 | sed 's/\\/\\\\/g;s/\(%\)\([0-9a-fA-F][0-9a-fA-F]\)/\\x\2/g')

##### Print a row of characters across the terminal

   print f "%`tput cols`s"|tr ' ' '#'

##### Find all dot files and directories

   print f "%s\n" .*

##### print text in color red

   print TextInColorRed () { echo -e '\033[01;31m\033[K'"$@"'\033[m\033[K' ;}   ## print text/string in color red

##### Show highlighted text with full terminal width

   print f "\e[7m%-`tput cols`s\e[0m\n" "Full width highlighted line"

##### Join the content of a bash array with commas

   print f  " -e %s" ${ARRAY[*]}

##### Big (four-byte) $RANDOM

   print f %d 0x`dd if=/dev/urandom bs=1 count=4 2>/dev/null | od -x | awk 'NR==1 {print $2$3}'`

##### get the ascii number with bash builtin printf

   print f "%d\n" "'A" "'B"

##### Password generator

   print f '%s-%s-%s-%s\n' $(grep -v "[A-Z]\|'" /usr/share/dict/british | shuf -n 4)

##### Generate binary sequence data

   print f "%x\n" $(seq 0 255) | xargs -n1 -IH echo -ne \\xH > test.dat

##### Get a count of how many file types a project has

   print f "\n%25s%10sTOTAL\n" 'FILE TYPE' ' '; for ext in $(find . -iname \*.* | egrep -o '\.[^[:space:].]+$' | egrep -v '\.svn*' | sort -f | uniq -i); do count=$(find . -iname \*$ext | wc -l); printf "%25s%10s%d\n" $ext ' '  $count; done

##### Estimate an economic bitcoin-cli fee and display as sat/B with date time stamp

   print f %g "$(bitcoin-cli estimatesmartfee 6 "ECONOMICAL" | jq .feerate*100000)";printf " sat/B estimated feerate for 6 confirmations as of $(date +%c)\nDivide by 100,000 to get btc/KB\n"

##### Find all dot files and directories

   print f "%s\n" .*

##### Find today created files

   print  -rl **/*(.m0)

##### Find files with size over 100MB and output with better lay-out

   print  -rl **/*(.Lm+100)

##### Filtering IP address from ifconfig usefule in scripts

   print  ${$(ifconfig wlan0)[6]}

##### Get the /dev/disk/by-id fragment for a physical drive

   print  /dev/disk/by-id/*(@[1]:t)

##### repeat any string or char n times without spaces between

   print f  'xyz%.0s' {1..20}

##### list all world-writeable Linux files

   print  -rl /**/*(.f:o+w:)

##### Join the content of a bash array with commas

   print f "%s," "${LIST[@]}" | cut -d "," -f 1-${#LIST[@]}

##### Clear terminal screen as well as terminal buffer

   print f "\ec"

##### reverse order of file

   print f "g/^/m0\nw\nq"|ed $FILE

##### put environment variable in history to edit

   print  -s "PATH='$PATH'"

##### Change a text files contents without opening it, or intermediate files.

   print  'g/'delete this line'/delete\nwq' | ex file.txt

##### A line across the entire width of the terminal

   print f "%$(tput cols)s\n"|tr ' ' '='
