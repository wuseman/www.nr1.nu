# printf

##### Emulate perl 'print "#" x 20, "\n"'

   printf  '%*s\n' 20 | tr ' ' '#'

##### List files that DO NOT match a pattern

   printf  "%s\n" !(pattern) ## ksh, or bash with shopt -s extglob

##### Print a row of 50 hyphens

   printf  "%.50d" 0 | tr 0 -

##### Print a row of 50 hyphens

   printf  "%50s\n"|tr ' ' -

##### hexadecimal2decimal

   printf  "%d\n" \0x64

##### Get the rough (german) time from Twitter by @zurvollenstunde

   printf  "%02d:%02d\n" $(curl -s "http://search.twitter.com/search?from=zurvollenstunde&rpp=1" | grep -E '(Es ist jetzt|ago)'  | sed 's/<[^>]*>//g;s/[^[:digit:]]//g'  | xargs )

##### List all available commands (bash, ksh93)

   printf  "%s\n" ${PATH//:/\/* }

##### Generate MD5 hash for a string

   printf  "$string" | md5sum

##### Show the PATH, one directory per line

   printf  ${PATH//:/\\n}

##### Create AUTH PLAIN string to test SMTP AUTH session

   printf  '\!:1\0\!:1\0\!:2' | mmencode | tr -d '\n' | sed 's/^/AUTH PLAIN /'

##### Print a row of characters the width of terminal

   printf  -vl "%${COLUMNS:-`tput cols 2>&-||echo 80`}s\n" && echo ${l// /-};

##### Resize a Terminal Window

   printf  "\e[8;70;180;t"

##### Print a row of characters across the terminal

   printf  -v row "%${COLUMNS}s"; echo ${row// /#}

##### generate a telephone keypad

   printf  "%s\t%s\t%s\n" {1..9} '*' 0 '#'

##### list with full path

   printf  "$PWD/%s\n" *

##### formatting number with comma

   printf  "%'d\n" 1234567

##### Print random emoji in terminal

   printf  "\U$(printf '%x' $((RANDOM%79+128512)) )"

##### urldecoding

   printf  $(echo -n $1 | sed 's/\\/\\\\/g;s/\(%\)\([0-9a-fA-F][0-9a-fA-F]\)/\\x\2/g')

##### Print a row of characters across the terminal

   printf  "%`tput cols`s"|tr ' ' '#'

##### Find all dot files and directories

   printf  "%s\n" .*

##### Show highlighted text with full terminal width

   printf  "\e[7m%-`tput cols`s\e[0m\n" "Full width highlighted line"

##### Join the content of a bash array with commas

   printf   " -e %s" ${ARRAY[*]}

##### Big (four-byte) $RANDOM

   printf  %d 0x`dd if=/dev/urandom bs=1 count=4 2>/dev/null | od -x | awk 'NR==1 {print $2$3}'`

##### get the ascii number with bash builtin printf

   printf  "%d\n" "'A" "'B"

##### Password generator

   printf  '%s-%s-%s-%s\n' $(grep -v "[A-Z]\|'" /usr/share/dict/british | shuf -n 4)

##### Generate binary sequence data

   printf  "%x\n" $(seq 0 255) | xargs -n1 -IH echo -ne \\xH > test.dat

##### Get a count of how many file types a project has

   printf  "\n%25s%10sTOTAL\n" 'FILE TYPE' ' '; for ext in $(find . -iname \*.* | egrep -o '\.[^[:space:].]+$' | egrep -v '\.svn*' | sort -f | uniq -i); do count=$(find . -iname \*$ext | wc -l); printf "%25s%10s%d\n" $ext ' '  $count; done

##### Estimate an economic bitcoin-cli fee and display as sat/B with date time stamp

   printf  %g "$(bitcoin-cli estimatesmartfee 6 "ECONOMICAL" | jq .feerate*100000)";printf " sat/B estimated feerate for 6 confirmations as of $(date +%c)\nDivide by 100,000 to get btc/KB\n"

##### Find all dot files and directories

   printf  "%s\n" .*

##### repeat any string or char n times without spaces between

   printf   'xyz%.0s' {1..20}

##### Join the content of a bash array with commas

   printf  "%s," "${LIST[@]}" | cut -d "," -f 1-${#LIST[@]}

##### Clear terminal screen as well as terminal buffer

   printf  "\ec"

##### reverse order of file

   printf  "g/^/m0\nw\nq"|ed $FILE

##### Generate an over-the-top UUID

   printf  $(( echo "obase=16;$(echo $$$(date +%s%N))"|bc; ip link show|sed -n '/eth/ {N; p}'|grep -o -E '([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}'|head -c 17 )|tr -d [:space:][:punct:]  |sed 's/[[:xdigit:]]\{2\}/\\x&/g')|sha1sum|head -c 32; echo

##### A line across the entire width of the terminal

   printf  "%$(tput cols)s\n"|tr ' ' '='

##### for loop with leading zero in bash 3

   printf  "%02u " {3..20}; echo

##### List all available commands (bash, ksh93)

   printf  "%s\n" ${PATH//:/\/* }

##### Show the PATH, one directory per line

   printf  ${PATH//:/\\n}

##### Create AUTH PLAIN string to test SMTP AUTH session

   printf  '\!:1\0\!:1\0\!:2' | mmencode | tr -d '\n' | sed 's/^/AUTH PLAIN /'

##### Print a row of characters the width of terminal

   printf  -vl "%${COLUMNS:-`tput cols 2>&-||echo 80`}s\n" && echo ${l// /-};

##### Resize a Terminal Window

   printf  "\e[8;70;180;t"

##### Print a row of characters across the terminal

   printf  -v row "%${COLUMNS}s"; echo ${row// /#}

##### generate a telephone keypad

   printf  "%s\t%s\t%s\n" {1..9} '*' 0 '#'

##### list with full path

   printf  "$PWD/%s\n" *

##### formatting number with comma

   printf  "%'d\n" 1234567

##### Print random emoji in terminal

   printf  "\U$(printf '%x' $((RANDOM%79+128512)) )"

##### urldecoding

   printf  $(echo -n $1 | sed 's/\\/\\\\/g;s/\(%\)\([0-9a-fA-F][0-9a-fA-F]\)/\\x\2/g')

##### Print a row of characters across the terminal

   printf  "%`tput cols`s"|tr ' ' '#'

##### Find all dot files and directories

   printf  "%s\n" .*

##### Show highlighted text with full terminal width

   printf  "\e[7m%-`tput cols`s\e[0m\n" "Full width highlighted line"

##### Join the content of a bash array with commas

   printf   " -e %s" ${ARRAY[*]}

##### Big (four-byte) $RANDOM

   printf  %d 0x`dd if=/dev/urandom bs=1 count=4 2>/dev/null | od -x | awk 'NR==1 {print $2$3}'`

##### get the ascii number with bash builtin printf

   printf  "%d\n" "'A" "'B"

##### Password generator

   printf  '%s-%s-%s-%s\n' $(grep -v "[A-Z]\|'" /usr/share/dict/british | shuf -n 4)

##### Generate binary sequence data

   printf  "%x\n" $(seq 0 255) | xargs -n1 -IH echo -ne \\xH > test.dat

##### Get a count of how many file types a project has

   printf  "\n%25s%10sTOTAL\n" 'FILE TYPE' ' '; for ext in $(find . -iname \*.* | egrep -o '\.[^[:space:].]+$' | egrep -v '\.svn*' | sort -f | uniq -i); do count=$(find . -iname \*$ext | wc -l); printf "%25s%10s%d\n" $ext ' '  $count; done

##### Estimate an economic bitcoin-cli fee and display as sat/B with date time stamp

   printf  %g "$(bitcoin-cli estimatesmartfee 6 "ECONOMICAL" | jq .feerate*100000)";printf " sat/B estimated feerate for 6 confirmations as of $(date +%c)\nDivide by 100,000 to get btc/KB\n"

##### Find all dot files and directories

   printf  "%s\n" .*

##### repeat any string or char n times without spaces between

   printf   'xyz%.0s' {1..20}

##### Join the content of a bash array with commas

   printf  "%s," "${LIST[@]}" | cut -d "," -f 1-${#LIST[@]}

##### Clear terminal screen as well as terminal buffer

   printf  "\ec"

##### reverse order of file

   printf  "g/^/m0\nw\nq"|ed $FILE

##### A line across the entire width of the terminal

   printf  "%$(tput cols)s\n"|tr ' ' '='
