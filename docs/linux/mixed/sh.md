# sh

##### Nice way to view source code

   sh ow_code() { pygmentize $1 | less -N }

##### Generate SHA1 hash for each file in a list

   sh a1sum * >> SHA1SUMS

##### fiber power levels on Foundry (Brocade) RX and MLX BigIron L3 (routers & switches)

   sh ow optic <slot #>

##### Display default values on Foundry (Brocade) RX and MLX BigIron L3 (routers & switches)

   sh  default values

##### Display RSTP (802.1W) Info. on on Foundry (Brocade) RX and MLX BigIron L3 (routers & switches)

   sh ow 802-1w

##### Quick access to ASCII code of a key

   sh owkey -a

##### Pick a random line from a file

   sh uf file.txt | head -n 1

##### Delete a file securely by overwriting its contents

   sh red -v filename

##### activate bash feature if avail

   sh opt-set()  ... func to long, please refer to description

##### Reboot

   sh utdown now -r

##### SH

   sh more(){ local l L M="`echo;tput setab 4&&tput setaf 7` - SHMore - `tput sgr0`";L=2;while read l;do echo "${l}";((L++));[[ "$L" == "${LINES:-80}" ]]&&{ L=2;read -p"$M" -u1;echo;};done;}

##### How to secure delete a file

   sh red -u -z -n 17 rubricasegreta.txt

##### Enable automatic typo correction for directory names

   sh opt -s cdspell

##### lotto generator

   sh uf -i 1-49 | head -n6 | sort -n| xargs

##### Get a free shell account on a community server

   sh  <(curl hashbang.sh)

##### shutdown pc in a 4 hours

   sh utdown -h +240

##### Securely destroy data (including whole hard disks)

   sh red targetfile

##### Avoiding history file to be overwritten

   sh opt -s histappend

##### Create an easy to pronounce shortened URL from CLI

   sh out () { curl -s "http://shoutkey.com/new?url=$1" | sed -n 's/\<h1\>/\&/p' | sed 's/<[^>]*>//g;/</N;//b' ;}

##### Enable cd by variable names

   sh opt -s cdable_vars

##### Generate an XKCD #936 style 4 word password

   sh uf -n4 /usr/share/dict/words | tr -d '\n'

##### Randomize lines in a file

   sh uf SOMEFILE

##### shutdown pc in 4 hours without needing to keep terminal open / user logged in.

   sh utdown -h 240 & disown

##### create a new script, automatically populating the shebang line, editing the script, and making it executable.

   sh ebang() { if i=$(which $1); then printf '#!%s\n\n' $i >  $2 && vim + $2 && chmod 755 $2; else echo "'which' could not find $1, is it in your \$PATH?"; fi; }

##### lotto generator

   sh uf -i 1-49 -n 6 | sort -n | xargs

##### Stop long commands wrapping around and over-writing itself in the Bash shell

   sh opt -s checkwinsize

##### Bash autocomplete case insensitive search

   sh opt -s nocaseglob

##### Split lossless audio (ape, flac, wav, wv) by cue file

   sh nsplit -t "%n-%t" -f <cue file> <audio file>

##### Force an fsck on reboot

   sh utdown -rF now

##### Give {Open,True}Type files reasonable names

   sh opt -s extglob; for f in *.ttf *.TTF; do g=$(showttf "$f" 2>/dev/null | grep -A1 "language=0.*FullName" | tail -1 | rev | cut -f1 | rev); g=${g##+( )}; mv -i "$f" "$g".ttf; done

##### Parse YouTube url (get youtube video id)

   sh  -c 'url="http://youtu.be/MejbOFk7H6c"; vid="`for i in ".*youtu\.be/\([^\/&?#]\+\)" ".*youtu.\+v[=/]\([^\/&?#]\+\)" ".*youtu.\+embed/\([^\/&?#]\+\)"; do expr "${url}" : "${i}"; done`"; if [ -n "${vid}" ]; then echo ${vid}; else echo "${url}"; fi'

##### move you up one directory quickly

   sh opt -s autocd

##### Show me just the ip address

   sh owip() { nmcli connection show $1|grep ipv4.addresses|awk '{print $2}' ; }

##### Alternative way to generate an XKCD #936 style 4 word password usig sed

   sh uf -n4 /usr/share/dict/words | sed -e ':a;N;$!ba;s/\n/ /g;s/'\''//g;s/\b\(.\)/\u\1/g;s/ //g'

##### Simple word scramble

   sh uf -n1 /usr/share/dict/words | tee >(sed -e 's/./&\n/g' | shuf | tr -d '\n' | line) > /tmp/out

##### Record and share your terminal

   sh elr play http://shelr.tv/records/4f81e92296608034e3000001.json

##### Create an easy to pronounce shortened URL from CLI

   sh out() { curl -s "http://shoutkey.com/new?url=${1}" | sed -n "/<h1>/s/.*href=\"\([^\"]*\)\".*/\1/p" ;}

##### Safe Delete

   sh red -n33 -zx file; rm file

##### power off system in X minutes

   sh utdown -h 60

##### Automaticly cd into directory

   sh opt -s autocd

##### Verify/edit bash history command before executing it

   sh opt -s histverify

##### Delete a file/directory walking subdirectories (bash4 or zsh)

   sh opt -s globstar ; rm -f **/cscope.out

##### url shortner using google's shortner api

   sh orty () {   curl -s https://www.googleapis.com/urlshortener/v1/url\?key\=API_KEY  -H 'Content-Type: application/json' -d '{"longUrl": "'"$1"'"}' | egrep -o 'http://goo.gl/[^"]*' }

##### shutdown pc in 4 hours without needing to keep terminal open / user logged in.

   sh utdown 60*4 & disown

##### Selecting a random file/folder of a folder

   sh uf -n1 -e *

##### Retrofit a shebang to an existing script

   sh ebang () { printf '%s\n' 0a '#!'"$1" . w | ed -s "$2" ; }

##### Generate an XKCD #936 style 4 word password

   sh uf -n4 /usr/share/dict/words | tr '\n' ' '

##### Asynchronous PID Management

   sh  time.sh 1 20 & var1="$!" & sh time.sh 2 10 & var2="$!" & sh time.sh 3 40 & var3="$!" & sh time.sh 4 30 & var4="$!"  ;  wait $var1 && wait $var2 && wait $var3 && wait $var4

##### Pick a random line from a file

   sh uf -n1 file.txt

##### bash glob dot-files

   sh opt -s dotglob

##### Converts a single FLAC file with associated cue file into multiple FLAC files

   sh nsplit -o flac -t "%n - %t - %a" -f sample.cue sample.flac

##### Enable ** to expand files recursively (>=bash-4.0)

   sh opt -s globstar

##### it allows recording of your terminal

   sh elr record

##### sddsgdgdssreer

   sh  all ip/net

##### create an application launcher shortcut that allow only one process of it running

   sh  -c 'if pgrep x2vnc && env LC_ALL=C xmessage -button "Kill it:0,Ignore it:1" "Another connection is already running. Should I kill it instead of ignoring it?"; then killall x2vnc; fi; x2vnc -passwd /home/Ariel/.vnc/passwd -east emerson:0'

##### Completly blank a disk

   sh red iterations=N /dev/sdaX

##### FAST Search and Replace for Strings in all Files in Directory

   sh  -c 'S=askapache R=htaccess; find . -mount -type f|xargs -P5 -iFF grep -l -m1 "$S" FF|xargs -P5 -iFF sed -i -e "s%${S}%${R}%g" FF'

##### orderly shutdown system and reboot.

   sh utdown -r now

##### Generate an XKCD #936 style 4 word password

   sh uf /usr/share/dict/words  |grep "^[^']\{3,6\}$" |head -n4 | sed -e "s/\b\(.\)/\u\1/g" | tr -d '\n'; echo

##### Generate an XKCD #936 style 4 word password

   sh uf /usr/share/dict/words  |grep "^[^']\{3,5\}$" |head -n4

##### Remove all .svn folders

   sh opt -s globstar; rm -rfv **/.svn

##### securely overwrite a file with random junk, rename it to clear the directory entry and finally delete it

   sh red -vzu /tmp/junk-file-to-be-shredded

##### Correct spellings in directory names

   sh opt -s cdspell

##### Convert a directory of pdfs into scaled down pngs

   sh opt -s nullglob; for i in $(find "Your/file/system" -name "*.pdf"); do e="$(dirname $i)/$(basename $i '.pdf').png"; gs -sDEVICE=png16m -q -dPDFFitPage -g492x380 -dTextAlphaBits=4 -dGraphicsAlphaBits=4 -dNOSUBSTDEVICECOLORS -o $e $i; done

##### Save your terminal commands in bash history in real time

   sh opt -s histappend ; PROMPT_COMMAND="history -a;$PROMPT_COMMAND"

##### shutdown pc in a 4 hours

   sh utdown -h $((60 * 4))

##### NSA codename generator

   sh uf -n 2 /usr/share/dict/words | tr -dc [:alnum:] | tr '[:lower:]' '[:upper:]'; echo

##### Quick access to ASCII code of a key

   sh owkey -a

##### SH

   sh more(){ local l L M="`echo;tput setab 4&&tput setaf 7` - SHMore - `tput sgr0`";L=2;while read l;do echo "${l}";((L++));[[ "$L" == "${LINES:-80}" ]]&&{ L=2;read -p"$M" -u1;echo;};done;}

##### How to secure delete a file

   sh red -u -z -n 17 rubricasegreta.txt

##### Enable automatic typo correction for directory names

   sh opt -s cdspell

##### lotto generator

   sh uf -i 1-49 | head -n6 | sort -n| xargs

##### Get a free shell account on a community server

   sh  <(curl hashbang.sh)

##### shutdown pc in a 4 hours

   sh utdown -h +240

##### Securely destroy data (including whole hard disks)

   sh red targetfile

##### Avoiding history file to be overwritten

   sh opt -s histappend

##### Create an easy to pronounce shortened URL from CLI

   sh out () { curl -s "http://shoutkey.com/new?url=$1" | sed -n 's/\<h1\>/\&/p' | sed 's/<[^>]*>//g;/</N;//b' ;}

##### Enable cd by variable names

   sh opt -s cdable_vars

##### Generate an XKCD #936 style 4 word password

   sh uf -n4 /usr/share/dict/words | tr -d '\n'

##### Randomize lines in a file

   sh uf SOMEFILE

##### shutdown pc in 4 hours without needing to keep terminal open / user logged in.

   sh utdown -h 240 & disown

##### create a new script, automatically populating the shebang line, editing the script, and making it executable.

   sh ebang() { if i=$(which $1); then printf '#!%s\n\n' $i >  $2 && vim + $2 && chmod 755 $2; else echo "'which' could not find $1, is it in your \$PATH?"; fi; }

##### lotto generator

   sh uf -i 1-49 -n 6 | sort -n | xargs

##### Stop long commands wrapping around and over-writing itself in the Bash shell

   sh opt -s checkwinsize

##### Bash autocomplete case insensitive search

   sh opt -s nocaseglob

##### Split lossless audio (ape, flac, wav, wv) by cue file

   sh nsplit -t "%n-%t" -f <cue file> <audio file>

##### Force an fsck on reboot

   sh utdown -rF now

##### Give {Open,True}Type files reasonable names

   sh opt -s extglob; for f in *.ttf *.TTF; do g=$(showttf "$f" 2>/dev/null | grep -A1 "language=0.*FullName" | tail -1 | rev | cut -f1 | rev); g=${g##+( )}; mv -i "$f" "$g".ttf; done

##### Parse YouTube url (get youtube video id)

   sh  -c 'url="http://youtu.be/MejbOFk7H6c"; vid="`for i in ".*youtu\.be/\([^\/&?#]\+\)" ".*youtu.\+v[=/]\([^\/&?#]\+\)" ".*youtu.\+embed/\([^\/&?#]\+\)"; do expr "${url}" : "${i}"; done`"; if [ -n "${vid}" ]; then echo ${vid}; else echo "${url}"; fi'

##### move you up one directory quickly

   sh opt -s autocd

##### Show me just the ip address

   sh owip() { nmcli connection show $1|grep ipv4.addresses|awk '{print $2}' ; }

##### Alternative way to generate an XKCD #936 style 4 word password usig sed

   sh uf -n4 /usr/share/dict/words | sed -e ':a;N;$!ba;s/\n/ /g;s/'\''//g;s/\b\(.\)/\u\1/g;s/ //g'

##### Simple word scramble

   sh uf -n1 /usr/share/dict/words | tee >(sed -e 's/./&\n/g' | shuf | tr -d '\n' | line) > /tmp/out

##### Record and share your terminal

   sh elr play http://shelr.tv/records/4f81e92296608034e3000001.json

##### Create an easy to pronounce shortened URL from CLI

   sh out() { curl -s "http://shoutkey.com/new?url=${1}" | sed -n "/<h1>/s/.*href=\"\([^\"]*\)\".*/\1/p" ;}

##### Safe Delete

   sh red -n33 -zx file; rm file

##### power off system in X minutes

   sh utdown -h 60

##### Automaticly cd into directory

   sh opt -s autocd

##### Verify/edit bash history command before executing it

   sh opt -s histverify

##### Delete a file/directory walking subdirectories (bash4 or zsh)

   sh opt -s globstar ; rm -f **/cscope.out

##### url shortner using google's shortner api

   sh orty () {   curl -s https://www.googleapis.com/urlshortener/v1/url\?key\=API_KEY  -H 'Content-Type: application/json' -d '{"longUrl": "'"$1"'"}' | egrep -o 'http://goo.gl/[^"]*' }

##### shutdown pc in 4 hours without needing to keep terminal open / user logged in.

   sh utdown 60*4 & disown

##### Selecting a random file/folder of a folder

   sh uf -n1 -e *

##### Retrofit a shebang to an existing script

   sh ebang () { printf '%s\n' 0a '#!'"$1" . w | ed -s "$2" ; }

##### Generate an XKCD #936 style 4 word password

   sh uf -n4 /usr/share/dict/words | tr '\n' ' '

##### Asynchronous PID Management

   sh  time.sh 1 20 & var1="$!" & sh time.sh 2 10 & var2="$!" & sh time.sh 3 40 & var3="$!" & sh time.sh 4 30 & var4="$!"  ;  wait $var1 && wait $var2 && wait $var3 && wait $var4

##### Pick a random line from a file

   sh uf -n1 file.txt

##### bash glob dot-files

   sh opt -s dotglob

##### Converts a single FLAC file with associated cue file into multiple FLAC files

   sh nsplit -o flac -t "%n - %t - %a" -f sample.cue sample.flac

##### Enable ** to expand files recursively (>=bash-4.0)

   sh opt -s globstar

##### it allows recording of your terminal

   sh elr record

##### sddsgdgdssreer

   sh  all ip/net

##### create an application launcher shortcut that allow only one process of it running

   sh  -c 'if pgrep x2vnc && env LC_ALL=C xmessage -button "Kill it:0,Ignore it:1" "Another connection is already running. Should I kill it instead of ignoring it?"; then killall x2vnc; fi; x2vnc -passwd /home/Ariel/.vnc/passwd -east emerson:0'

##### Completly blank a disk

   sh red iterations=N /dev/sdaX

##### FAST Search and Replace for Strings in all Files in Directory

   sh  -c 'S=askapache R=htaccess; find . -mount -type f|xargs -P5 -iFF grep -l -m1 "$S" FF|xargs -P5 -iFF sed -i -e "s%${S}%${R}%g" FF'

##### orderly shutdown system and reboot.

   sh utdown -r now

##### Generate an XKCD #936 style 4 word password

   sh uf /usr/share/dict/words  |grep "^[^']\{3,6\}$" |head -n4 | sed -e "s/\b\(.\)/\u\1/g" | tr -d '\n'; echo

##### Generate an XKCD #936 style 4 word password

   sh uf /usr/share/dict/words  |grep "^[^']\{3,5\}$" |head -n4

##### Remove all .svn folders

   sh opt -s globstar; rm -rfv **/.svn

##### securely overwrite a file with random junk, rename it to clear the directory entry and finally delete it

   sh red -vzu /tmp/junk-file-to-be-shredded

##### Correct spellings in directory names

   sh opt -s cdspell

##### Save your terminal commands in bash history in real time

   sh opt -s histappend ; PROMPT_COMMAND="history -a;$PROMPT_COMMAND"
