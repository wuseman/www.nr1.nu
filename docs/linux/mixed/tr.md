# tr

##### Convert DOS newlines (CR/LF) to Unix format

   tr  -d '\r' < <input> > <output>

##### Join lines split with backslash at the end

   tr  -d '\\' | tr -d '\n'

##### Recursivly search current directory for files larger than 100MB

   tr ee -ah du . | ack '\[(\d{3,}M|\d+.*G)\]'

##### Bash function do emulate send to trash files

   tr ash <file>

##### Changing the terminal title to the last shell command

   tr ap 'echo -e "\e]0;$BASH_COMMAND\007"' DEBUG

##### generate random password

   tr  -dc 'a-zA-Z0-9' < /dev/urandom | head -c10

##### Empty a file

   tr uncate foobar.txt

##### Google Translate

   tr anslate() { lng1="$1";lng2="$2";shift;shift; wget -qO- "http://ajax.googleapis.com/ajax/services/language/translate?v=1.0&q=${@// /+}&langpair=$lng1|$lng2" | sed 's/.*"translatedText":"\([^"]*\)".*}/\1\n/'; }

##### Google Translate

   tr anslate () {lang="ru"; text=`echo $* | sed 's/ /%20/g'`; curl -s -A "Mozilla/5.0" "http://translate.google.com/translate_a/t?client=t&text=$text&sl=auto&tl=$lang" | sed 's/\[\[\[\"//' | cut -d \" -f 1}

##### convert uppercase to lowercase

   tr  '[:upper:]' '[:lower:]' < input.txt > output.txt

##### generate random password

   tr  -dc 'a-zA-Z0-9' < /dev/urandom | fold -w 10 | sed 1q

##### Graphical tree of sub-directories

   tr ee

##### Ignore the specified signal

   tr ap '' 1 2 20 24(signal number)

##### Limit bandwidth usage by any program

   tr ickle -d 60 wget http://very.big/file

##### Execute a command on logout

   tr ap cmd 0

##### Join lines

   tr  "\n" " " < file

##### generate a randome 10 character password

   tr  -dc A-Za-z0-9_ < /dev/urandom | head -c 10 | xargs

##### Preserve colors when piping tree to less

   tr ee -C | less -R

##### drop first column of output by piping to this

   tr  -s ' ' | cut -d' ' -f2-

##### Transforms a file to all uppercase.

   tr  '[:lower:]' '[:upper:]' <"$1"

##### Print permanent subtitles on a video

   tr anscode -i myvideo.avi -x mplayer="-sub myvideo.srt" -o myvideo_subtitled.avi -y xvid

##### Generate list of words and their frequencies in a text file.

   tr  A-Z a-z | tr -cs a-z '\n' | sort | uniq -c

##### simulated text generator

   tr  -dc a-z0-9   </dev/urandom   | tr 0-8 \ | tr 9 \\n |  sed 's/^[ \t]*//'  | fmt -u

##### Source zshrc/bashrc in all open terminals

   tr ap "source ~/.zshrc" USR1

##### mailx to send mails from console

   tr ue | mailx -n -a MYTEXT.txt -r my@mail.com -s log -S smtp=mail.com -S smtp-auth-user=MYUSER -S smtp-auth-password=MYPASSWORD FRIEND@mail.com

##### a fast way to repeat output a byte

   tr  '\0' '\377' < /dev/zero|dd count=$((<bytes>/512))

##### tree by modify time with newest file at bottom

   tr ee -L 1 -ChDit | tac

##### switch case of a text file

   tr  a-zA-Z A-Za-z < input.txt

##### Find top 10 largest files in /var directory (subdirectories and hidden files included )

   tr ee -isafF /var|grep -v "/$"|tr '[]' ' '|sort -k1nr|head

##### Generate a binary file with all ones (0xff) in it

   tr  '\000' '\377' < /dev/zero | dd of=allones bs=1024 count=2k

##### Perform a branching conditional

   tr ue && { echo success;} || { echo failed; }

##### Printable random characters

   tr  -dc '[:print:]' < /dev/urandom

##### Delete all non-printing characters from a file

   tr  -dc '[:print:]' < <file>

##### Remove CR LF from a text file

   tr  -d '\r\n' < input_file.txt > output_file.txt

##### Fill a hard drive with ones - like zero-fill, but the opposite :)

   tr  '\000' '\377' < /dev/zero | dd bs=512 count=200000 status=noxfer | pipebench | sudo dd of=/dev/sdx

##### Terminal - Show directories in the PATH, one per line with sed and bash3.X `here string'

   tr  : '\n' <<<$PATH

##### List only the directories

   tr ee -dL 1

##### converting horizontal line to vertical line

   tr  '\t' '\n' < inputfile

##### Display the inodes number of /

   tr ee -a -L 1 inodes /

##### Create arbitrary big file full of zeroes but done in a second

   tr uncate size 1G bigfile.txt

##### Puts every word from a file into a new line

   tr  ' \t' '\n' <INFILE >OUTFILE

##### bash: display disks by id, UUID and HW path

   tr ee /dev/disk

##### Easy file sharing from the command line using transfer.sh

   tr ansfer() { basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g');curl progress-bar upload-file "$1" "https://transfer.sh/$basefile"|xsel clipboard;xsel clipboard ; }

##### lists files and folders in a folder

   tr ee -i -L 1

##### Print permanent subtitles on a video (international edition :) )

   tr anscode -i myvideo.avi -x mplayer="-utf8 -sub myvideo.srt" -o myvideo_subtitled.avi -y xvid

##### print java packages by using unix tree and sed

   tr ee -d -I 'CVS' -f -i | sed 's/\//./g' | sed 's/\.\.//g'

##### Convert any sequence of spaces/tabs to single space/tab

   tr  -s ' \t' <1.txt >2.txt

##### Show the command line for a PID, converting nulls to spaces and a newline

   tr  '\0' ' ' </proc/21679/cmdline ; echo

##### Outputs a 10-digit random number

   tr  -c -d 0-9 < /dev/urandom | head -c 10

##### Create passwords and store safely with gpg

   tr  -dc "a-zA-Z0-9-_\$\?" < /dev/urandom | head -c 10 | gpg -e -r medha@nerdish.de > password.gpg

##### Directory Tree

   tr ee -d

##### user 'tr' to convert mixed case in a file to lower case

   tr  "[:upper:]" "[:lower:]" < file

##### Simple example of the trap command

   tr ap "echo \"$0 process $$ killed on $(date).\"; exit " HUP INT QUIT ABRT TERM STOP

##### Mount/unmount your truecrypted file containers

   tr uecrypt volume.tc

##### Generate a random password 30 characters long

   tr  -cd '[:alnum:]' < /dev/urandom | fold -w30 | head -n1

##### Join lines and separate with spaces

   tr  -d '\r' < vmargs.txt | tr '\n' ' '

##### Juste a reminder that this works.

   tr ue || false && echo true || echo false

##### Extract title from HTML files

   tr  -d "\n\r" | grep -ioEm1 "<title[^>]*>[^<]*</title" | cut -f2 -d\> | cut -f1 -d\<

##### Google Translate

   tr anslate(){ wget -qO- "http://ajax.googleapis.com/ajax/services/language/translate?v=1.0&q=$1&langpair=$2|${3:-en}" | sed 's/.*"translatedText":"\([^"]*\)".*}/\1\n/'; }

##### Matrix Style

   tr  -c "[:digit:]" " " < /dev/urandom | dd cbs=$COLUMNS conv=unblock | GREP_COLOR="1;32" grep color "[^ ]"

##### Google Translate

   tr anslate(){ wget -qO- "http://ajax.googleapis.com/ajax/services/language/translate?v=1.0&q=$1&langpair=$2|${3:-en}" | sed 's/.*"translatedText":"\([^"]*\)".*}/\1\n/'; }

##### Matrix Style

   tr  -c "[:digit:]" " " < /dev/urandom | dd cbs=$COLUMNS conv=unblock | GREP_COLOR="1;32" grep color "[^ ]"

##### full path listing in /directory/path/* of javascript files.

   tr ee -fi /directory/path/* | grep "\.js"

##### Stripping ^M at end of each line for files

   tr  -d '\r' <dos_file_to_be_converted >converted_result

##### translate with google, get all translations

   tr anslate() { echo $1: $(wget -q -O - 'http://www.google.de/dictionary?source=translation&q='$1'&langpair=en|de' | grep '^<span class="dct-tt">.*</span>$' | sed 's!<span class="dct-tt">\(.*\)</span>!\1, !'); }

##### a trash function for bash

   tr ash <file>

##### happened to find this not bad software to keep my files and folders safe! Even the free trial version has the fantastic functions to protect any private files from being seen by anyone except me. With it I can encrypt, hide or lock anything I want, amazin

   tr  '[A-Za-z]' '[N-ZA-Mn-za-m]'

##### Delete newline

   tr  -d "\n" < file1 > file2

##### Google Translate

   tr anslate(){wget -U "Mozilla/5.0" -qO - "https://translate.google.com/translate_a/single?client=t&sl=${3:-auto}&tl=${2:-en}&dt=t&q=$1" | cut -d'"' -f2}

##### Router discovery

   tr aceroute 2>/dev/null -n google.com | awk '/^ *1/{print $2;exit}'

##### Generate list of words and their frequencies in a text file.

   tr  A-Z a-z | tr -d "[[:punct:]][[:digit:]]" | tr ' /_' '\n' | sort | uniq -c

##### A trash function for bash

   tr ash-put junkfolder

##### Analyze awk fields

   tr  " " "\n" | nl

##### converting vertical line to horizontal line

   tr  '\n' '\t' < inputfile

##### A signal trap that logs when your script was killed and what other processes were running at that time

   tr ap "echo \"$0 process $$ killed on $(date).\" | tee ${0##*/}_$$_termination.log; echo 'Active processes at the time were logged to ${0##*/}_$$_termination.log'; ps u >> ${0##*/}_$$_termination.log; exit " HUP INT QUIT ABRT TERM STOP

##### apt-get upgrade with bandwidth limit

   tr ickle sudo apt-get update -y

##### List all files in current dir and subdirs sorted by size

   tr ee -ifs noreport .|sort -n -k2

##### Generate password

   tr  -dc 'A-Za-z0-9!@#$%^&*' < /dev/urandom | fold -w 12 | head -n 1

##### Convert windows text file to linux text document

   tr  -d "\r" < dos.txt > linux.txt

##### Convert phone book VCARD to text

   tr  -d "\r" < file.vcf | tr "\0" " " > file.vcf.txt

##### Directory listing and serve folder on port 8000

   tr ee -H '.' -L 1 > index.html && php -S `hostname -I | cut -d' ' -`:8000

##### solaris: get seconds since epoch

   tr uss date 2>&1 | awk '/^time/{print $3}'

##### Empty a file

   tr uncate -s 0 file.txt

##### replace all spaces with new lines

   tr  ' ' '\n' < <filename> > <output>

##### remove proxy reverse iP from apache log

   tr  -s ' ' | cut -d' ' -f2- |cut -c2- |sed 's/)//1'

##### A random password generator

   tr  -dc '\x15-\x7e' < /dev/urandom| head -c 16 | paste

##### Find 20 most frequently-used shell commands from (bash history)

   tr  "\|\;" "\n" < ~/.bash_history | sed -e "s/^ //g" | cut -d " " -f 1 | sort | uniq -c | sort -rn | head -20

##### Remove all quotes from csv

   tr  -d "\"" < infile.csv > noquotes.csv

##### generate a randome 3 character password

   tr  -dc '[:graph:]' </dev/urandom  | head -c30; echo

##### True Random Dice Roll

   tr  -cd '1-6' < /dev/urandom | head -c 1; echo

##### Change a file to upper case

   tr  a-z A-Z < file.txt

##### Squeeze repeats

   tr  -s ' '

##### Generate list of words and their frequencies in a text file.

   tr  A-Z a-z | tr -d 0-9\[\],\*-.?\:\"\(\)#\;\<\>\@ | tr ' /_' '\n' | sort | uniq -c

##### Generate list of words and their frequencies in a text file.

   tr  -cs A-Za-z '\n' | sort | uniq -ci

##### Create a file of a given size in linux

   tr uncate -s 1M file

##### Visualize directory structure

   tr ee

##### Changing the terminal title to the last shell command

   tr ap 'echo -e "\e]0;$BASH_COMMAND\007"' DEBUG

##### Google Translate

   tr anslate() { lng1="$1";lng2="$2";shift;shift; wget -qO- "http://ajax.googleapis.com/ajax/services/language/translate?v=1.0&q=${@// /+}&langpair=$lng1|$lng2" | sed 's/.*"translatedText":"\([^"]*\)".*}/\1\n/'; }

##### Limit bandwidth usage by any program

   tr ickle -d 60 wget http://very.big/file

##### Execute a command on logout

   tr ap cmd 0

##### Join lines

   tr  "\n" " " < file

##### generate a randome 10 character password

   tr  -dc A-Za-z0-9_ < /dev/urandom | head -c 10 | xargs

##### Preserve colors when piping tree to less

   tr ee -C | less -R

##### drop first column of output by piping to this

   tr  -s ' ' | cut -d' ' -f2-

##### Transforms a file to all uppercase.

   tr  '[:lower:]' '[:upper:]' <"$1"

##### Print permanent subtitles on a video

   tr anscode -i myvideo.avi -x mplayer="-sub myvideo.srt" -o myvideo_subtitled.avi -y xvid

##### Generate list of words and their frequencies in a text file.

   tr  A-Z a-z | tr -cs a-z '\n' | sort | uniq -c

##### simulated text generator

   tr  -dc a-z0-9   </dev/urandom   | tr 0-8 \ | tr 9 \\n |  sed 's/^[ \t]*//'  | fmt -u

##### Source zshrc/bashrc in all open terminals

   tr ap "source ~/.zshrc" USR1

##### mailx to send mails from console

   tr ue | mailx -n -a MYTEXT.txt -r my@mail.com -s log -S smtp=mail.com -S smtp-auth-user=MYUSER -S smtp-auth-password=MYPASSWORD FRIEND@mail.com

##### a fast way to repeat output a byte

   tr  '\0' '\377' < /dev/zero|dd count=$((<bytes>/512))

##### tree by modify time with newest file at bottom

   tr ee -L 1 -ChDit | tac

##### switch case of a text file

   tr  a-zA-Z A-Za-z < input.txt

##### Find top 10 largest files in /var directory (subdirectories and hidden files included )

   tr ee -isafF /var|grep -v "/$"|tr '[]' ' '|sort -k1nr|head

##### Generate a binary file with all ones (0xff) in it

   tr  '\000' '\377' < /dev/zero | dd of=allones bs=1024 count=2k

##### Perform a branching conditional

   tr ue && { echo success;} || { echo failed; }

##### Printable random characters

   tr  -dc '[:print:]' < /dev/urandom

##### Delete all non-printing characters from a file

   tr  -dc '[:print:]' < <file>

##### Remove CR LF from a text file

   tr  -d '\r\n' < input_file.txt > output_file.txt

##### Fill a hard drive with ones - like zero-fill, but the opposite :)

   tr  '\000' '\377' < /dev/zero | dd bs=512 count=200000 status=noxfer | pipebench | sudo dd of=/dev/sdx

##### Terminal - Show directories in the PATH, one per line with sed and bash3.X `here string'

   tr  : '\n' <<<$PATH

##### List only the directories

   tr ee -dL 1

##### converting horizontal line to vertical line

   tr  '\t' '\n' < inputfile

##### Display the inodes number of /

   tr ee -a -L 1 inodes /

##### Create arbitrary big file full of zeroes but done in a second

   tr uncate size 1G bigfile.txt

##### Puts every word from a file into a new line

   tr  ' \t' '\n' <INFILE >OUTFILE

##### bash: display disks by id, UUID and HW path

   tr ee /dev/disk

##### Easy file sharing from the command line using transfer.sh

   tr ansfer() { basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g');curl progress-bar upload-file "$1" "https://transfer.sh/$basefile"|xsel clipboard;xsel clipboard ; }

##### lists files and folders in a folder

   tr ee -i -L 1

##### Print permanent subtitles on a video (international edition :) )

   tr anscode -i myvideo.avi -x mplayer="-utf8 -sub myvideo.srt" -o myvideo_subtitled.avi -y xvid

##### print java packages by using unix tree and sed

   tr ee -d -I 'CVS' -f -i | sed 's/\//./g' | sed 's/\.\.//g'

##### Convert any sequence of spaces/tabs to single space/tab

   tr  -s ' \t' <1.txt >2.txt

##### Show the command line for a PID, converting nulls to spaces and a newline

   tr  '\0' ' ' </proc/21679/cmdline ; echo

##### Outputs a 10-digit random number

   tr  -c -d 0-9 < /dev/urandom | head -c 10

##### Create passwords and store safely with gpg

   tr  -dc "a-zA-Z0-9-_\$\?" < /dev/urandom | head -c 10 | gpg -e -r medha@nerdish.de > password.gpg

##### Directory Tree

   tr ee -d

##### user 'tr' to convert mixed case in a file to lower case

   tr  "[:upper:]" "[:lower:]" < file

##### Simple example of the trap command

   tr ap "echo \"$0 process $$ killed on $(date).\"; exit " HUP INT QUIT ABRT TERM STOP

##### Mount/unmount your truecrypted file containers

   tr uecrypt volume.tc

##### Generate a random password 30 characters long

   tr  -cd '[:alnum:]' < /dev/urandom | fold -w30 | head -n1

##### Join lines and separate with spaces

   tr  -d '\r' < vmargs.txt | tr '\n' ' '

##### Juste a reminder that this works.

   tr ue || false && echo true || echo false

##### Extract title from HTML files

   tr  -d "\n\r" | grep -ioEm1 "<title[^>]*>[^<]*</title" | cut -f2 -d\> | cut -f1 -d\<

##### Google Translate

   tr anslate(){ wget -qO- "http://ajax.googleapis.com/ajax/services/language/translate?v=1.0&q=$1&langpair=$2|${3:-en}" | sed 's/.*"translatedText":"\([^"]*\)".*}/\1\n/'; }

##### Matrix Style

   tr  -c "[:digit:]" " " < /dev/urandom | dd cbs=$COLUMNS conv=unblock | GREP_COLOR="1;32" grep color "[^ ]"

##### full path listing in /directory/path/* of javascript files.

   tr ee -fi /directory/path/* | grep "\.js"

##### Stripping ^M at end of each line for files

   tr  -d '\r' <dos_file_to_be_converted >converted_result

##### translate with google, get all translations

   tr anslate() { echo $1: $(wget -q -O - 'http://www.google.de/dictionary?source=translation&q='$1'&langpair=en|de' | grep '^<span class="dct-tt">.*</span>$' | sed 's!<span class="dct-tt">\(.*\)</span>!\1, !'); }

##### a trash function for bash

   tr ash <file>

##### happened to find this not bad software to keep my files and folders safe! Even the free trial version has the fantastic functions to protect any private files from being seen by anyone except me. With it I can encrypt, hide or lock anything I want, amazin

   tr  '[A-Za-z]' '[N-ZA-Mn-za-m]'

##### Delete newline

   tr  -d "\n" < file1 > file2

##### Google Translate

   tr anslate(){wget -U "Mozilla/5.0" -qO - "https://translate.google.com/translate_a/single?client=t&sl=${3:-auto}&tl=${2:-en}&dt=t&q=$1" | cut -d'"' -f2}

##### Router discovery

   tr aceroute 2>/dev/null -n google.com | awk '/^ *1/{print $2;exit}'

##### Generate list of words and their frequencies in a text file.

   tr  A-Z a-z | tr -d "[[:punct:]][[:digit:]]" | tr ' /_' '\n' | sort | uniq -c

##### A trash function for bash

   tr ash-put junkfolder

##### Analyze awk fields

   tr  " " "\n" | nl

##### converting vertical line to horizontal line

   tr  '\n' '\t' < inputfile

##### A signal trap that logs when your script was killed and what other processes were running at that time

   tr ap "echo \"$0 process $$ killed on $(date).\" | tee ${0##*/}_$$_termination.log; echo 'Active processes at the time were logged to ${0##*/}_$$_termination.log'; ps u >> ${0##*/}_$$_termination.log; exit " HUP INT QUIT ABRT TERM STOP

##### apt-get upgrade with bandwidth limit

   tr ickle sudo apt-get update -y

##### List all files in current dir and subdirs sorted by size

   tr ee -ifs noreport .|sort -n -k2

##### Generate password

   tr  -dc 'A-Za-z0-9!@#$%^&*' < /dev/urandom | fold -w 12 | head -n 1

##### Convert windows text file to linux text document

   tr  -d "\r" < dos.txt > linux.txt

##### Convert phone book VCARD to text

   tr  -d "\r" < file.vcf | tr "\0" " " > file.vcf.txt

##### Directory listing and serve folder on port 8000

   tr ee -H '.' -L 1 > index.html && php -S `hostname -I | cut -d' ' -`:8000

##### solaris: get seconds since epoch

   tr uss date 2>&1 | awk '/^time/{print $3}'

##### Empty a file

   tr uncate -s 0 file.txt

##### replace all spaces with new lines

   tr  ' ' '\n' < <filename> > <output>

##### remove proxy reverse iP from apache log

   tr  -s ' ' | cut -d' ' -f2- |cut -c2- |sed 's/)//1'

##### A random password generator

   tr  -dc '\x15-\x7e' < /dev/urandom| head -c 16 | paste

##### Find 20 most frequently-used shell commands from (bash history)

   tr  "\|\;" "\n" < ~/.bash_history | sed -e "s/^ //g" | cut -d " " -f 1 | sort | uniq -c | sort -rn | head -20

##### Remove all quotes from csv

   tr  -d "\"" < infile.csv > noquotes.csv

##### generate a randome 3 character password

   tr  -dc '[:graph:]' </dev/urandom  | head -c30; echo

##### True Random Dice Roll

   tr  -cd '1-6' < /dev/urandom | head -c 1; echo

##### Change a file to upper case

   tr  a-z A-Z < file.txt

##### Create a file of a given size in linux

   tr uncate -s 1M file
