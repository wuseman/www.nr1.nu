# sed

##### To print a specific line from a file

   sed  -n 5p <file>

##### To print a specific line from a file

   sed  -n 5p <file>

##### uncomment the lines where the word DEBUG is found

   sed  '/^#.*DEBUG.*/ s/^#//' $FILE

##### convert a line to a space

   sed  's/.*/ /'

##### find which lines in a file are longer than N characters

   sed  -n "/^.\{73,\}/p" < /path/to/file

##### Easy way to display yum repo priorities

   sed  -n -e "/^\[/h; /priority *=/{ G; s/\n/ /; s/ity=/ity = /; p }" /etc/yum.repos.d/*.repo | sort -k3n

##### Get your Speed Dial urls

   sed  -n '/url/s#^.*url=\(.*://.*\)#\1#p' ~/.mozilla/firefox/*.[dD]efault/SDBackups/*.speeddial | sort | uniq

##### Search and replace pipes for tabs in file with backup

   sed  -i.bak -e s/\|/\\t/g filepath.tsv

##### Remove/replace newline characters.

   sed  ':a;N;$!ba;s/\n/ /g'

##### Append the line # -*- coding: utf-8 -*- to a file

   sed  -i -e '1i \# -*- coding: utf-8 -*-' yourfile.py

##### Append a new line "FOOBAR" in all files matching the glob*

   sed  -i '$a\FOOBAR' *

##### Simply clean playlist

   sed  -e '/MP3$\|mp3$\|wma$\|flac$/!d' <filename_source> > <filename_destination>

##### delete all leading whitespace from each line in file

   sed  's/^[ \t]*//' < <file> > <file>.out; mv <file>.out <file>

##### Sed file spacing

   sed  G

##### Convert an UNIX file to a DOS file.

   sed  -i 's/$/\r/' file

##### truncate files without output redirection or temporary file creation

   sed  -i 's/`head -n 500 foo.log`//' foo.log

##### sed : using colons as separators instead of forward slashes

   sed  "s:/old/direcory/:/new/directory/:" <file>

##### delete a particular line by line number in file

   sed  -i 3d ~/.ssh/known_hosts

##### Convert windows text file to linux text document

   sed  's/.$//' Win-file.txt

##### Reverse DNS lookups

   sed  's/\([0-9]*\)\.\([0-9]*\)\.\([0-9]*\)\.\([0-9]*\).in-addr.arpa domain name pointer\(.*\)\./\4.\3.\2.\1\5/' \ lookups.txt

##### a find and replace within text-based files

   sed  -i 's/http:\/\/old\/new\///g' index.html

##### Remove superfluous from conf file

   sed  -re '/^#/d ; s/#.*$// ; /^\s*$/d'

##### to display number of lines in a file without using wc command

   sed  -n "$=" fileName

##### Remove all leading and trailing slashes on each line of a text file

   sed  -e "s,/\+$,," -e "s,^/\+,," file.txt

##### Extract all urls from the last firefox sessionstore.js file used.

   sed  -e 's/{"url":/\n&/g' ~/.mozilla/firefox/*/sessionstore.js | cut -d\" -f4

##### prints line numbers

   sed  '/./=' infile | sed '/^/N; s/\n/ /'

##### Bold matching string without skipping others

   sed  's/pattern/^[[1m&^[[0m/g'

##### Print line numbers

   sed  = <file> | sed 'N;s/\n/\t/'

##### Print just line 4 from a textfile

   sed  '4!d'

##### Remove trailing whitespaces (or tabs) from a text file

   sed  -i 's/[ \t]\+$//g' file.txt

##### Remove CR LF from a text file

   sed  -i 's/\r\n//' file.txt

##### turn url and link text into a hyperlink

   sed  "s/\([a-zA-Z]*\:\/\/[^,]*\),\(.*\)/\<a href=\"\1\"\>\2\<\/a\>/"

##### Convert all tabs in a file to spaces, assuming the tab width is 2

   sed  -i 's/\t/  /g' yourfile

##### convert Unix newlines to DOS newlines

   sed  's/$'"/`echo \\\r`/"

##### Print all lines containing the word 'jan' to a new file.

   sed  -n '/jan\|Jan\|JAN\|JAn\|jAn\|jAN\|jaN/p' data.txt > jan-only-data.txt

##### put all lines in comment where de word DEBUG is found

   sed  -i 's/^.*DEBUG.*/#&/'  $file

##### Extract a bash function

   sed  -n '/^function h\(\)/,/^}/p' script.sh

##### Remove ( color / special / escape / ANSI ) codes, from text, with sed

   sed  "s,\x1B\[[0-9;]*[a-zA-Z],,g"

##### List your largest installed packages (on Debian/Ubuntu)

   sed  -ne '/^Package: \(.*\)/{s//\1/;h;};/^Installed-Size:  \(.*\)/{s//\1/;G;s/\n/ /;p;}' /var/lib/dpkg/status | sort -rn

##### Delete an hard disk entry in Virtualbox registry

   sed  -i '/Centos/d' VirtualBox.xml

##### count the number of times you match a substring in a larger text file

   sed  ?s/[sub_str]/[sub_str]\n/g? [text_file] | wc -l

##### Get rid of multiple spaces/tabs in a text file

   sed  -i "s/\s*/ /g;s/\s*$//" input_file

##### list all available disks and disk partitions

   sed  's/#.*//' /etc/fstab | column -t

##### top 10 commands used

   sed  -e 's/ *$//' ~/.bash_history | sort | uniq -cd | sort -nr | head

##### Display a block of text with AWK

   sed  -n /start_pattern/,/stop_pattern/p file.txt

##### Show a script or config file without comments

   sed  -e '/^[[:blank:]]*#/d; s/[[:blank:]][[:blank:]]*#.*//'  -e '/^$/d' -e '/^\/\/.*/d' -e '/^\/\*/d;/^ \* /d;/^ \*\//d' /a/file/with/comments

##### Print file content in reverse order

   sed  -n '1!G;h;$p' techie.txt

##### Remove blank lines from a file and save output to new file

   sed  '/^$/d' file >newfile

##### delete first X lines of a file

   sed  '1,55d'

##### Get rid of multiple spaces/tabs in a text file

   sed  -i "s/\(\x09\{1,\}\)\|\( \{1,\}\)/ /g;s/\(\x09\{1,\}$\)\|\( \{1,\}$\)//g" brisati.txt

##### empty set of files

   sed  -i -n '/%/p' *.php

##### Remove a line from a file using sed (useful for updating known SSH server keys when they change)

   sed  '${LINE}d' ~/.ssh/known_host

##### run vlc as root

   sed  -i 's/geteuid/getppid/g' /usr/bin/vlc

##### convert DOS newlines to unix newlines

   sed  's/$//'

##### Backup a file before editing it.

   sed it() { cp "$*"{,.bk}; which $EDITOR > /dev/null && $EDITOR "$*" || vim "$*"; }

##### optimized sed

   sed   '/foo/ s/foo/foobar/g' <filename>

##### Remove "#' from configuration files.

   sed  -i -e 's/^#$//g' /path/to/file

##### Remove comments from files

   sed  -e '/^#/d' -e 's/#.*$//' in

##### Remove all HTML tags from a file

   sed  "s/<[^>]\+>//g" file

##### Update zone file Serial numbers

   sed  -i 's/20[0-1][0-9]\{7\}/'`date +%Y%m%d%I`'/g' *.db

##### Remove a line in a text file. Useful to fix "ssh host key change" warnings

   sed  -i 8d ~/.ssh/known_hosts

##### Remove a line from a file using sed (useful for updating known SSH server keys when they change)

   sed  -i '${LINE}d' ~/.ssh/known_host

##### See the 10 programs the most used

   sed  -e "s/| /\n/g" ~/.bash_history | cut -d ' ' -f 1 | sort | uniq -c | sort -nr | head

##### separate (emphasize) digital strings from other text

   sed  's/[0-9]\+/ [&] /g'

##### Print all lines between two line numbers

   sed  -n '3,6p' /path/to/file

##### Insert a colon between every two digits

   sed  's/\(..\)/\1:/g;s/:$//' mac_address_list

##### Regex to remove HTML-Tags from a file

   sed  -e :a -e 's/<[^>]*>//g;/</N;//ba' index.html

##### regex for turning a URL into a real hyperlink (i.e. for posting somewhere that accepts basic html)

   sed  "s/\([a-zA-Z]*\:\/\/[^ ]*\)\(.*\)/\<a href=\"\1\"\>\1\<\/a\>\2/"

##### Shows cpu load in percent

   sed  -e 's/ .*//' -e 's/\.//' -e 's/^0*//' /proc/loadavg

##### Apply substitution only on the line following a marker

   sed  '/MARKER/{N;s/THIS/THAT/}'

##### Remove color codes (special characters) with sed

   sed  -r "s/\x1B\[([0-9]{1,3}((;[0-9]{1,3})*)?)?[m|K]//g

##### Comment out a line in a file

   sed  -i '19375 s/^/#/' file

##### Simplification of "sed 'your sed stuff here' file > file2 && mv file2 file"

   sed  -i 'your sed stuff here' file

##### Remove color codes (special characters) with sed

   sed  -r "s:\x1B\[[0-9;]*[mK]::g"'

##### Prepend a text to a file.

   sed  -i '1s/^/text to prepend\n/' file1

##### Delete line number 10 from file

   sed  -i '10d' <somefile>

##### remove empty lines

   sed  '/^$/d'

##### Convert files from DOS line endings to UNIX line endings

   sed  -i 's/^M//' file

##### remove leading blank lines

   sed  '/./,$!d'

##### Remove color codes (special characters) with sed

   sed  -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g"

##### Convert Unix newlines to DOS newlines

   sed  's/$/<ctrl+v><ctrl+m>/'

##### reverse order of file

   sed  '1!G;h;$!d'

##### Remove the first character of each line in a file

   sed  "s/^.//g" files

##### Delete Last Line of a File if it is Blank

   sed  '${/^$/d}' file

##### Simple XML tag extract with sed

   sed  -n 's/.*<foo>\([^<]*\)<\/foo>.*/\1/p'

##### Perform sed substitution on all but the last line of input

   sed  -e "$ ! s/$/,/"

##### remove empty lines in place with backup

   sed  -e '/^$/d' -i .bak filewithempty.lines

##### Print all the lines between 10 and 20 of a file

   sed  '10,20!d'

##### Efficiently print a line deep in a huge log file

   sed  '1000000!d;q' < massive-log-file.log

##### Extract title from HTML files

   sed  -n 's/.*<title>\(.*\)<\/title>.*/\1/ip;T;q' file.html

##### grep -v with multiple patterns.

   sed  '/test/{/error\|critical\|warning/d}' somefile

##### a find and replace within text-based files, for batch text replacement, not using perl

   sed  -i -e 's/SEARCH_STRING/REPLACE_STRING/g' `find . -iname 'FILENAME'`

##### Go to the Nth line of file

   sed  -n 13p /etc/services

##### Add thousand separator with sed, in a file or within pipe

   sed  -e :a -e 's/\(.*[0-9]\)\([0-9]\{3\}\)/\1,\2/;ta' filename

##### append empty line after every line in file.txt

   sed  G file.txt

##### Efficiently extract lines between markers

   sed  -n '/START/,${/STOP/q;p}'

##### Change the homepage of Firefox

   sed  -i 's|\("browser.startup.homepage",\) "\(.*\)"|\1 "http://sliceoflinux.com"|' .mozilla/firefox/*.default/prefs.js

##### sed edit-in-place using -a option instead of -i option (no tmp file created)

   sed i(){ case $# in [01]|[3-9])echo usage: sedi sed-cmds file ;;2)sed -a ''"$1"';H;$!d;g;' $2 |sed -a '/^$/d;w '"$2"''  ;;esac;}

##### Remove a range of lines from a file

   sed  -i <file> -re '<start>,<end>d'

##### Gives you what's between first string and second string included.

   sed  "s/^ABC/+ABC/" <file | sed "s/DEF$/DEF+/" | tr "\n" "~" | tr "+" "\n" | grep "^ABC"  | tr "~" "\n"

##### Remove blank lines

   sed  '/^$/d'

##### Deleting / Ignoring lines from the top of a file

   sed  1d foo.txt

##### Extract ip addresses with sed

   sed  -n  's/\([0-9]\{1,3\}\.\)\{3\}[0-9]\{1,3\}/\nip&\n/gp' ips.txt  | grep ip | sed 's/ip//'| sort | uniq

##### remove lines which are longer than 255

   sed  -n '/^.\{255\}/!p'

##### grep -v with multiple patterns.

   sed  -n '/test/{/error\|critical\|warning/d;p}' somefile

##### Remove leading zeros in multiple columns with sed

   sed  's/\b\(0*\)//g' filename

##### output the contents of a file removing any empty lines including lines which contain only spaces or tabs.

   sed  -e '/^[<space><tab>]*$/d' somefile

##### extract all urls from firefox sessionstore

   sed  -e "s/\[{/\n/g" -e "s/}, {/\n/g"  sessionstore.js | grep url | awk -F"," '{ print $1 }'| sed -e "s/url:\"\([^\"]*\)\"/\1/g" -e "/^about:blank/d" > session_urls.txt

##### print contents of file from line 1 until we match regex

   sed  -n '1,/regex/p' filename

##### preprocess code to be posted in comments on this site

   sed  's/^/$ /' "$script" | xclip

##### quick and dirty formatting for HTML code

   sed  -r 's_(/[^>]*?>)_\1\n_g' filename.html

##### Do a search-and-replace in a file after making a backup

   sed  -i.bak 's/old/new/g' file

##### Concatenates lines using sed

   sed  -e :a -e '/$/N;s/\n/ /;ta' <filename>

##### Replace multiple spaces with semicolon

   sed  "s/\s\+/;/g;s/^ //;s/ $//" filename.csv

##### Change every instance of OLD to NEW in file FILE

   sed  -i 's/OLD/NEW/g' FILE

##### Convert DOS newlines (CR/LF) to Unix format

   sed  's/^M$//' input.txt > output.txt

##### Embed next line on the end of current line using sed

   sed   'X{N;s/\n//;}' file.txt (where X is the current line)

##### remove newlines from specific lines in a file using sed

   sed  -i '/pattern/N; s/\n//' filename

##### Capitalize the first letter of every word

   sed  "s/\b\(.\)/\u\1/g"

##### Show a config file without comments

   sed  -e 's/#.*//;/^\s*$/d'

##### Top 20 commands in your bash history

   sed  -e 's/[;|][[:space:]]*/\n/g' .bash_history | cut delimiter=' ' fields=1 | sort | uniq count | sort numeric-sort reverse | head lines=20

##### Update grub menu.lst

   sed  -e '/^$/d' -e '/^#/d' -e '/initrd/ a\ ' -e 's/hiddenmenu//g' -e '/^timeout/d' -e '/default/ a\timeout\t\t15' -e 's/quiet//g' -e 's/splash/rootdelay=60/g' /boot/grub/menu.lst > /boot/grub/menu.lst.new

##### delete all leading and trailing whitespace from each line in file

   sed  's/^[ \t]*//;s/[ \t]*$//' -i file

##### Remove space and/or tab characters at the end of line

   sed  -i 's/[ \t]*$//' file

##### delete all trailing whitespace from each line in file

   sed  -i 's/^\s\+//' <file>

##### Display email addresses that have been sent to by a postfix server since the last mail log rollover

   sed  -n -e '/postfix\/smtp\[.*status=sent/s/^.*to=<\([^>]*\).*$/\1/p' /var/log/mail.log | sort -u

##### Given process ID print its environment variables

   sed  's/\o0/\n/g' /proc/INSERT_PID_HERE/environ

##### Print only the odd lines of a file (GNU sed)

   sed  2~2d

##### Search replace with Ansible style timestamps

   sed  -i.$(date +%F@%T) 's/^LogLevel warn/LogLevel debug/g' httpd.conf

##### Exclude inserting a table from a sql import

   sed  '/INSERT INTO `unwanted_table`/d' mydb.sql > reduced.sql

##### Getting a domain from url, ex: very nice to get url from squid access.log

   sed  -e "s/[^/]*\/\/\([^@]*@\)\?\([^:/]*\).*/\2/"

##### Multi line grep using sed and specifying open/close tags

   sed  '/'"<opening tag>"'/,/'"<closing tag>"'/{/'"<closing tag>"'/d;p};d' "<file>"

##### SED - Substitute string in next line

   sed  -i.backup '/patter/{n;s/foo/bar/g}' file

##### remove repeated pairs of characters e.g. "xtxtxtxt" will become "xt"

   sed  -ru 's/(..)\1{2,}/\1/g'

##### Delete all empty/blank lines from text file & output to file

   sed  '/^$/d' /tmp/data.txt > /tmp/output.txt

##### Fix subtitle timing (for .sub files)

   sed  -e 's/{/|/' -e 's/}{/|/' -e 's/}/|/' myFile.sub | awk -F "|" 'BEGIN {OFS =  "|"} { $2 = $2 - 600; $3 = $3 - 600; print $0 }' | sed -e 's/^|/{/' -e 's/\([0-9]\)|\([0-9]\)/\1}{\2/' -e 's/|/}/' >

##### MySQL: Slice out a specific table from the output of mysqldump

   sed  -n "/^ Table structure for table \`departments\`/,/^ Table structure for table/p"

##### Comment out all lines in a file beginning with string

   sed  -i 's/^\(somestring\)/#\1/' somefile.cfg

##### commentate specified line of a file

   sed  -i '<line_no>s/\(.*\)/#\1/' <testfile>

##### Remove multiple spaces

   sed  "s/^ *//;s/ *$//;s/ \{1,\}/ /g" filename.txt

##### Simple Comment an entire file

   sed  -i 's/^/#/' FILENAME

##### Convert a Python interactive session to a python script

   sed   's/^\([^>.]\)/#\1/;s/^>>> //;s/^\.\.\./  /'

##### Add a line from 1 file after every line of another (shuffle files together)

   sed  '/^/R addfile' targetfile > savefile

##### print contents of file from first match of regex to end of file

   sed  -n '/regex/,$p' filename

##### Compute the numeric sum of a file

   sed  i"+" file.txt | xargs echo 0 |bc

##### Delete leading whitespace from the start of each line

   sed  's/^[ \t]*//' input.txt

##### Delete leading whitespace from the start of each line

   sed  's/^\s*//' input.txt

##### Search apache virtual host by pattern

   sed  -n '/^[^#]*<Virtual/{:l N; /<\/Virtual/!bl;}; /PATTERN/p' vhosts.conf

##### Terminal - Show directories in the PATH, one per line with sed and bash3.X `here string'

   sed  's/:/\n/g' <<<$PATH

##### Remove a range of lines from a file

   sed  -i <start>,<end>d <filename>

##### Every Nth line position # (SED)

   sed  -n '1,${p;n;n;}' foo > foo_every3_position1; sed -n '2,${p;n;n;}' foo > foo_every3_position2; sed -n '3,${p;n;n;}' foo > foo_every3_position3

##### In-Place search/replace with datestamped backup

   sed  -i.`date +%Y%m%d` -e 's/pattern/replace' [filename]

##### Replace spaces in a file with hyphens

   sed  -i 's/ /-/g' *

##### Delete the specified line

   sed  -i 8d ~/.ssh/known_hosts

##### Change host name

   sed  -i 's/oldname/newname/' /etc/hosts /etc/hostname

##### Print just line 4 from a textfile

   sed  -n '4{p;q}'

##### Print just line 4 from a textfile

   sed  -n '4p'

##### Cleanup a (source) text file, removing trailing spaces/tabs and multiple consecutive blank lines

   sed  -i -e 's/[ \t]*$//;/^$/N;/\n$/D' sourcefiletocleanup

##### Put uppercase letters in curly brackets in a BibTeX database

   sed  '/^\s*[^@%]/s=\([A-Z][A-Z]*\)\([^}A-Z]\|},$\)={\1}\2=g' literature.bib > output.bib

##### Prepend a text to a file.

   sed  -i 's/^/ls -l /' output_files.txt

##### Edit Ruby files within the current directory to use Ruby 1.9+ style symbol keys instead of rockets

   sed  -i "s/:\([a-zA-Z_]*\) =>/\1:/g" **/*.rb

##### uncomment the lines where the word DEBUG is found

   sed  's/^#\(.*DEBUG\)/\1/' $FILE

##### Raspberry Pi serial number w/o leading zeros

   sed  '$!d s/.*: 0\+//' /proc/cpuinfo

##### Remove color codes (special characters) with sed

   sed  -r "s/(\x1B|\033)(\(B|\[([0-9]{1,2}(;[0-9]{1,2})?)?[A-Z])//Ig"

##### urldecoding

   sed  -e's/%\([0-9A-F][0-9A-F]\)/\\\\\x\1/g' | xargs echo -e

##### Remove color codes (special characters) with sed

   sed  -r 's/'$(echo -e "\033")'\[[0-9]{1,2}(;([0-9]{1,2})?)?[mK]//g'

##### Replace words with sed

   sed  /BEGIN/,/END/s/xxx/yyy/g input.txt

##### Rebuild a Delimited File with a Unique Delimiter

   sed  's/$/uniqueString/' file.old | sed 's/,/\n/g' | sed ':loop;/^\"[^\"]*$/N;s/\n/,/;/[^\"]$/t loop' | sed ':loop;N;s/\n/@/g;/uniqueString$/!b loop;s/uniqueString$//' > file.new

##### delete all trailing whitespace from each line in file

   sed  's/[ \t]*$//' < <file> > <file>.out; mv <file>.out <file>

##### delete all leading and trailing whitespace from each line in file

   sed  's/^[ \t]*//;s/[ \t]*$//' < <file> > <file>.out; mv <file>.out <file>

##### Remove  \r (carriage return) in a file

   sed  -i 's/\r//g somefile.txt

##### delete all leading and trailing whitespace from each line in file

   sed  's/^\s*//;s/\s*$//' -i file

##### Puts every word from a file into a new line

   sed  -r 's/[ \t\r\n\v\f]+/\^J/g' INFILE > OUTFILE

##### Change your e-mail address in multiple files

   sed  -i 's/oldname@example.com/newname@example.com/g' `grep oldname@example.com -rl .`

##### Delete all lines after the first match

   sed  -n -e '1,/match/p'

##### Extract ip addresses with sed

   sed  -n 's/.*\(\(\(^\| \)[0-9]\{1,3\}\.\)\{1\}\([0-9]\{1,3\}\.\)\{2\}[0-9]\{1,3\}\) .*/\1/gp'

##### sed replace string in whole files in folder

   sed  -i 's/SearchString/ReplaceString/g' views/*.php

##### bash chop

   sed  's/.$//'

##### Printout a list of field numbers from a CSV file with headers as first line.

   sed  's/,/\n/g;q' file.csv | nl

##### Remove lines that contain a specific pattern($1) from file($2).

   sed  -i '/myexpression/d' /path/to/file.txt

##### Convert Windows/DOS Text Files to Unix

   sed  -i 's/\r//' <filename>

##### insert blank lines

   sed  G input.txt | cat -s

##### Removes lines [range] from file

   sed  '1,5d'  /path/to/file

##### more than 4 repeated characters to a single character

   sed  -ru 's/(.)\1{4,}/\1/g'

##### Convert camelCase to underscores (camel_case)

   sed  -r 's/([a-z]+)([A-Z][a-z]+)/\1_\l\2/g' file.txt

##### Tells which group you DON'T belong to (opposite of command "groups") - uses sed

   sed  -e "/$USER/d;s/:.*//g" /etc/group | sed -e :a -e '/$/N;s/\n/ /;ta'

##### Remove blank lines from a file

   sed  -i.bak '/^[[:space:]]*$/d' file_name

##### Convert ISO8601 dates to milliseconds since epoch

   sed  "s|\(2[0-9]\{3\}-[01][0-9]-[0-3][0-9]T[01][0-9]:[0-5][0-9]:[0-5][0-9].[0-9]\{3\}Z\)|$(date -d \1 +%s)000|g"

##### Go to the Nth line of file

   sed  -n '15p' $file

##### MySQL: Slice out a specific database (assumes existence of the USE statement) from mysqldump output

   sed  -n "/^USE \`employees\`/,/^USE \`/p"

##### Remove color codes (special characters) with sed

   sed  -r "s@\^\[{1,2}([0-9]{1,2}(;[0-9]{1,2})?(;[0-9])?(m|K){1,2})?@@g"

##### Only change the first occurrence of the pattern

   sed  -i "0,/enabled/{s|enabled=0|enabled=1|}" /etc/yum.repos.d/remi.repo

##### Remove the first line containing 'match' from file

   sed  -i "$(grep -nm 1 match file|cut -f1 -d:)d" file

##### replace deprecated php-function split in php files

   sed  -i s/split\(/explode\(/ whatever.php

##### File without comments or blank lines.

   sed  's/^[[:blank:]]*//; s/^#.*//; /^$/d' filename

##### Comment out all lines in a file beginning with string

   sed  -i '/^somestring/ s/^/#/' somefile.cfg

##### Remove color codes (special characters) with sed

   sed  -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g"

##### Replace strings in files

   sed  -i -e 's/war/peace/g' *

##### pick up 3 lines start at every 5th line of file.txt

   sed  -n '1~5{N;N;p}' file.txt

##### Regular expression search pattern to remove the Datetime and Name when you paste from skype chat into your text editor

   sed  -i 's/^.*?].*?:\s//g' skype-chat-log.txt

##### Analyze Apache Web Log Statistics starting on DATE x

   sed  -n '/05\/Dec\/2010/,$ p' access.log | goaccess -s -b

##### Duplicate a line in a text file and replace part of the duplicated line

   sed  -i -e '/foo/p' -e 's/foo/barfoo/' file

##### Format a password file for John the Ripper from Cisco configs  (Level 5)

   sed  -n 's/[ :]/_/g; s/^\(.\{1,\}\)_5_\($1$[$./0-9A-Za-z]\{27,31\}\)_*$/\1:\2/p' < cisco-device-config > passwd

##### HTML esacaping with sed

   sed  's/&/\&amp;/g; s/</\&lt;/g; s/>/\&gt;/g; s/"/\&quot;/g; s/'"'"'/\&#39;/g'

##### Parse bookmarks and download youtube files

   sed  's+href="\([^"]*\)"+\n\1\n+g' bookmarks.html | grep '^http' |clive

##### Remove color codes (special characters) with sed

   sed  -E "s/"$'\E'"\[([0-9]{1,3}((;[0-9]{1,3})*)?)?[m|K]//g"

##### Extract specific lines from a text file using Stream Editor (sed)

   sed  -n -e 1186,1210p A-small-practice.in

##### Insert line(s) at top of file using sed

   sed  -i '1iI am a new line' file.txt

##### Extract XML from an otherwise plain text log file

   sed  -n '/<Tag>/,/<\/Tag>/p' logfile.log

##### List the CPU model name

   sed  -n 's/^model name[ \t]*: *//p' /proc/cpuinfo

##### Edit hosts file to remove "foo.novalocal" from it where foo is the hostname of a new VM

   sed  -e "s/^127.0.1.1 $(hostname).novalocal/127.0.1.1/g" /etc/hosts

##### convert html links into plain text with link anchor

   sed  's!<[Aa] *href*=*"\([^"]*\)"*>\([^<>]*\)</[Aa]>!\1,\2!g' links.html

##### delete first and last line from file

   sed  '1d;$d' filename

##### Remove comments from files

   sed  -i -e '/^#[^!].*/d' -e 's/\(.*[^!]\)#.*[^}]/\1/' <filename>

##### Sort a one-per-line list of email address, weeding out duplicates

   sed  's/[ \t]*$//' < emails.txt | tr 'A-Z' 'a-z' | sort | uniq > emails_sorted.txt

##### Create fortune's *.dat file from commandlinefu from saved preferite

   sed  ':a;N;$!ba;s/\n\n/\n%\n/g' input.txt >output

##### Replace nelines with spaces

   sed  -e :a -e '$!N;s/\n/ /;ta'

##### Revoke an existing user's group memberships and add another user to those same groups,

   sed  -i.awkbak "s/\([:,]\)oldspiderman/\1newspiderman/" /etc/group

##### Uncomment line based on string match

   sed  -e '/4.2.2.2/ s/^;//' -i test.txt

##### to display all characters except second last character from each line of a file

   sed  's/^\(.*\)\(.\)\(.\)$/\1\3/' fileName

##### Convert CSV files to TSV

   sed  's/,/\t/g' report.csv > report.tsv

##### Change time format in log, UNIX Timestamp to Human readable

   sed  -r 's/(\[|])//g' | awk ' { $1=strftime("%D %T",$1); print }'

##### Remove lines ending or trailing slash (/)

   sed  -i 'g/text/d' <filename>

##### Remove last x lines from file using sed

   sed  -n -e :a -i -e '1,5!{P;N;D;};N;ba' /etc/apt/sources.list

##### Remove a range of lines from a file

   sed  -i 6,66d <filename>

##### rsnapshot vim edit replaying space tabs

   sed  's/ \+ /\t/g' /usr/local/etc/rsnapshot.conf >/tmp/snap.conf

##### Join lines split with backslash at the end

   sed  -e '/\\$/{:0;N;s/\\\n//;t0}'

##### To print a specific line from a file

   sed  -n 5p <file>

##### uncomment the lines where the word DEBUG is found

   sed  '/^#.*DEBUG.*/ s/^#//' $FILE

##### sed : using colons as separators instead of forward slashes

   sed  "s:/old/direcory/:/new/directory/:" <file>

##### delete a particular line by line number in file

   sed  -i 3d ~/.ssh/known_hosts

##### put all lines in comment where de word DEBUG is found

   sed  -i 's/^.*DEBUG.*/#&/'  $file

##### Extract a bash function

   sed  -n '/^function h\(\)/,/^}/p' script.sh

##### Remove ( color / special / escape / ANSI ) codes, from text, with sed

   sed  "s,\x1B\[[0-9;]*[a-zA-Z],,g"

##### top 10 commands used

   sed  -e 's/ *$//' ~/.bash_history | sort | uniq -cd | sort -nr | head

##### Display a block of text with AWK

   sed  -n /start_pattern/,/stop_pattern/p file.txt

##### Remove comments from files

   sed  -e '/^#/d' -e 's/#.*$//' in

##### Remove all HTML tags from a file

   sed  "s/<[^>]\+>//g" file

##### Update zone file Serial numbers

   sed  -i 's/20[0-1][0-9]\{7\}/'`date +%Y%m%d%I`'/g' *.db

##### Remove a line in a text file. Useful to fix "ssh host key change" warnings

   sed  -i 8d ~/.ssh/known_hosts

##### Remove a line from a file using sed (useful for updating known SSH server keys when they change)

   sed  -i '${LINE}d' ~/.ssh/known_host

##### See the 10 programs the most used

   sed  -e "s/| /\n/g" ~/.bash_history | cut -d ' ' -f 1 | sort | uniq -c | sort -nr | head

##### separate (emphasize) digital strings from other text

   sed  's/[0-9]\+/ [&] /g'

##### Print all lines between two line numbers

   sed  -n '3,6p' /path/to/file

##### Insert a colon between every two digits

   sed  's/\(..\)/\1:/g;s/:$//' mac_address_list

##### Regex to remove HTML-Tags from a file

   sed  -e :a -e 's/<[^>]*>//g;/</N;//ba' index.html

##### regex for turning a URL into a real hyperlink (i.e. for posting somewhere that accepts basic html)

   sed  "s/\([a-zA-Z]*\:\/\/[^ ]*\)\(.*\)/\<a href=\"\1\"\>\1\<\/a\>\2/"

##### Shows cpu load in percent

   sed  -e 's/ .*//' -e 's/\.//' -e 's/^0*//' /proc/loadavg

##### Apply substitution only on the line following a marker

   sed  '/MARKER/{N;s/THIS/THAT/}'

##### Remove color codes (special characters) with sed

   sed  -r "s/\x1B\[([0-9]{1,3}((;[0-9]{1,3})*)?)?[m|K]//g

##### Comment out a line in a file

   sed  -i '19375 s/^/#/' file

##### Simplification of "sed 'your sed stuff here' file > file2 && mv file2 file"

   sed  -i 'your sed stuff here' file

##### Remove color codes (special characters) with sed

   sed  -r "s:\x1B\[[0-9;]*[mK]::g"'

##### Prepend a text to a file.

   sed  -i '1s/^/text to prepend\n/' file1

##### Delete line number 10 from file

   sed  -i '10d' <somefile>

##### remove empty lines

   sed  '/^$/d'

##### Convert files from DOS line endings to UNIX line endings

   sed  -i 's/^M//' file

##### remove leading blank lines

   sed  '/./,$!d'

##### Remove color codes (special characters) with sed

   sed  -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g"

##### Convert Unix newlines to DOS newlines

   sed  's/$/<ctrl+v><ctrl+m>/'

##### reverse order of file

   sed  '1!G;h;$!d'

##### Remove the first character of each line in a file

   sed  "s/^.//g" files

##### Delete Last Line of a File if it is Blank

   sed  '${/^$/d}' file

##### Simple XML tag extract with sed

   sed  -n 's/.*<foo>\([^<]*\)<\/foo>.*/\1/p'

##### Perform sed substitution on all but the last line of input

   sed  -e "$ ! s/$/,/"

##### remove empty lines in place with backup

   sed  -e '/^$/d' -i .bak filewithempty.lines

##### Print all the lines between 10 and 20 of a file

   sed  '10,20!d'

##### Efficiently print a line deep in a huge log file

   sed  '1000000!d;q' < massive-log-file.log

##### Extract title from HTML files

   sed  -n 's/.*<title>\(.*\)<\/title>.*/\1/ip;T;q' file.html

##### grep -v with multiple patterns.

   sed  '/test/{/error\|critical\|warning/d}' somefile

##### a find and replace within text-based files, for batch text replacement, not using perl

   sed  -i -e 's/SEARCH_STRING/REPLACE_STRING/g' `find . -iname 'FILENAME'`

##### Go to the Nth line of file

   sed  -n 13p /etc/services

##### Add thousand separator with sed, in a file or within pipe

   sed  -e :a -e 's/\(.*[0-9]\)\([0-9]\{3\}\)/\1,\2/;ta' filename

##### append empty line after every line in file.txt

   sed  G file.txt

##### Efficiently extract lines between markers

   sed  -n '/START/,${/STOP/q;p}'

##### Change the homepage of Firefox

   sed  -i 's|\("browser.startup.homepage",\) "\(.*\)"|\1 "http://sliceoflinux.com"|' .mozilla/firefox/*.default/prefs.js

##### sed edit-in-place using -a option instead of -i option (no tmp file created)

   sed i(){ case $# in [01]|[3-9])echo usage: sedi sed-cmds file ;;2)sed -a ''"$1"';H;$!d;g;' $2 |sed -a '/^$/d;w '"$2"''  ;;esac;}

##### Remove a range of lines from a file

   sed  -i <file> -re '<start>,<end>d'

##### Gives you what's between first string and second string included.

   sed  "s/^ABC/+ABC/" <file | sed "s/DEF$/DEF+/" | tr "\n" "~" | tr "+" "\n" | grep "^ABC"  | tr "~" "\n"

##### Remove blank lines

   sed  '/^$/d'

##### Deleting / Ignoring lines from the top of a file

   sed  1d foo.txt

##### Extract ip addresses with sed

   sed  -n  's/\([0-9]\{1,3\}\.\)\{3\}[0-9]\{1,3\}/\nip&\n/gp' ips.txt  | grep ip | sed 's/ip//'| sort | uniq

##### remove lines which are longer than 255

   sed  -n '/^.\{255\}/!p'

##### grep -v with multiple patterns.

   sed  -n '/test/{/error\|critical\|warning/d;p}' somefile

##### Remove leading zeros in multiple columns with sed

   sed  's/\b\(0*\)//g' filename

##### output the contents of a file removing any empty lines including lines which contain only spaces or tabs.

   sed  -e '/^[<space><tab>]*$/d' somefile

##### extract all urls from firefox sessionstore

   sed  -e "s/\[{/\n/g" -e "s/}, {/\n/g"  sessionstore.js | grep url | awk -F"," '{ print $1 }'| sed -e "s/url:\"\([^\"]*\)\"/\1/g" -e "/^about:blank/d" > session_urls.txt

##### print contents of file from line 1 until we match regex

   sed  -n '1,/regex/p' filename

##### preprocess code to be posted in comments on this site

   sed  's/^/$ /' "$script" | xclip

##### quick and dirty formatting for HTML code

   sed  -r 's_(/[^>]*?>)_\1\n_g' filename.html

##### Do a search-and-replace in a file after making a backup

   sed  -i.bak 's/old/new/g' file

##### Concatenates lines using sed

   sed  -e :a -e '/$/N;s/\n/ /;ta' <filename>

##### Replace multiple spaces with semicolon

   sed  "s/\s\+/;/g;s/^ //;s/ $//" filename.csv

##### Change every instance of OLD to NEW in file FILE

   sed  -i 's/OLD/NEW/g' FILE

##### Convert DOS newlines (CR/LF) to Unix format

   sed  's/^M$//' input.txt > output.txt

##### Embed next line on the end of current line using sed

   sed   'X{N;s/\n//;}' file.txt (where X is the current line)

##### remove newlines from specific lines in a file using sed

   sed  -i '/pattern/N; s/\n//' filename

##### Capitalize the first letter of every word

   sed  "s/\b\(.\)/\u\1/g"

##### Show a config file without comments

   sed  -e 's/#.*//;/^\s*$/d'

##### Top 20 commands in your bash history

   sed  -e 's/[;|][[:space:]]*/\n/g' .bash_history | cut delimiter=' ' fields=1 | sort | uniq count | sort numeric-sort reverse | head lines=20

##### Update grub menu.lst

   sed  -e '/^$/d' -e '/^#/d' -e '/initrd/ a\ ' -e 's/hiddenmenu//g' -e '/^timeout/d' -e '/default/ a\timeout\t\t15' -e 's/quiet//g' -e 's/splash/rootdelay=60/g' /boot/grub/menu.lst > /boot/grub/menu.lst.new

##### delete all leading and trailing whitespace from each line in file

   sed  's/^[ \t]*//;s/[ \t]*$//' -i file

##### Remove space and/or tab characters at the end of line

   sed  -i 's/[ \t]*$//' file

##### delete all trailing whitespace from each line in file

   sed  -i 's/^\s\+//' <file>

##### Display email addresses that have been sent to by a postfix server since the last mail log rollover

   sed  -n -e '/postfix\/smtp\[.*status=sent/s/^.*to=<\([^>]*\).*$/\1/p' /var/log/mail.log | sort -u

##### Given process ID print its environment variables

   sed  's/\o0/\n/g' /proc/INSERT_PID_HERE/environ

##### Print only the odd lines of a file (GNU sed)

   sed  2~2d

##### Search replace with Ansible style timestamps

   sed  -i.$(date +%F@%T) 's/^LogLevel warn/LogLevel debug/g' httpd.conf

##### Exclude inserting a table from a sql import

   sed  '/INSERT INTO `unwanted_table`/d' mydb.sql > reduced.sql

##### Getting a domain from url, ex: very nice to get url from squid access.log

   sed  -e "s/[^/]*\/\/\([^@]*@\)\?\([^:/]*\).*/\2/"

##### Multi line grep using sed and specifying open/close tags

   sed  '/'"<opening tag>"'/,/'"<closing tag>"'/{/'"<closing tag>"'/d;p};d' "<file>"

##### SED - Substitute string in next line

   sed  -i.backup '/patter/{n;s/foo/bar/g}' file

##### remove repeated pairs of characters e.g. "xtxtxtxt" will become "xt"

   sed  -ru 's/(..)\1{2,}/\1/g'

##### Delete all empty/blank lines from text file & output to file

   sed  '/^$/d' /tmp/data.txt > /tmp/output.txt

##### Fix subtitle timing (for .sub files)

   sed  -e 's/{/|/' -e 's/}{/|/' -e 's/}/|/' myFile.sub | awk -F "|" 'BEGIN {OFS =  "|"} { $2 = $2 - 600; $3 = $3 - 600; print $0 }' | sed -e 's/^|/{/' -e 's/\([0-9]\)|\([0-9]\)/\1}{\2/' -e 's/|/}/' >

##### MySQL: Slice out a specific table from the output of mysqldump

   sed  -n "/^ Table structure for table \`departments\`/,/^ Table structure for table/p"

##### Comment out all lines in a file beginning with string

   sed  -i 's/^\(somestring\)/#\1/' somefile.cfg

##### commentate specified line of a file

   sed  -i '<line_no>s/\(.*\)/#\1/' <testfile>

##### Remove multiple spaces

   sed  "s/^ *//;s/ *$//;s/ \{1,\}/ /g" filename.txt

##### Simple Comment an entire file

   sed  -i 's/^/#/' FILENAME

##### Convert a Python interactive session to a python script

   sed   's/^\([^>.]\)/#\1/;s/^>>> //;s/^\.\.\./  /'

##### Add a line from 1 file after every line of another (shuffle files together)

   sed  '/^/R addfile' targetfile > savefile

##### print contents of file from first match of regex to end of file

   sed  -n '/regex/,$p' filename

##### Compute the numeric sum of a file

   sed  i"+" file.txt | xargs echo 0 |bc

##### Delete leading whitespace from the start of each line

   sed  's/^[ \t]*//' input.txt

##### Delete leading whitespace from the start of each line

   sed  's/^\s*//' input.txt

##### Search apache virtual host by pattern

   sed  -n '/^[^#]*<Virtual/{:l N; /<\/Virtual/!bl;}; /PATTERN/p' vhosts.conf

##### Terminal - Show directories in the PATH, one per line with sed and bash3.X `here string'

   sed  's/:/\n/g' <<<$PATH

##### Remove a range of lines from a file

   sed  -i <start>,<end>d <filename>

##### Every Nth line position # (SED)

   sed  -n '1,${p;n;n;}' foo > foo_every3_position1; sed -n '2,${p;n;n;}' foo > foo_every3_position2; sed -n '3,${p;n;n;}' foo > foo_every3_position3

##### In-Place search/replace with datestamped backup

   sed  -i.`date +%Y%m%d` -e 's/pattern/replace' [filename]

##### Replace spaces in a file with hyphens

   sed  -i 's/ /-/g' *

##### Delete the specified line

   sed  -i 8d ~/.ssh/known_hosts

##### Change host name

   sed  -i 's/oldname/newname/' /etc/hosts /etc/hostname

##### Print just line 4 from a textfile

   sed  -n '4{p;q}'

##### Print just line 4 from a textfile

   sed  -n '4p'

##### Cleanup a (source) text file, removing trailing spaces/tabs and multiple consecutive blank lines

   sed  -i -e 's/[ \t]*$//;/^$/N;/\n$/D' sourcefiletocleanup

##### Put uppercase letters in curly brackets in a BibTeX database

   sed  '/^\s*[^@%]/s=\([A-Z][A-Z]*\)\([^}A-Z]\|},$\)={\1}\2=g' literature.bib > output.bib

##### Prepend a text to a file.

   sed  -i 's/^/ls -l /' output_files.txt

##### Edit Ruby files within the current directory to use Ruby 1.9+ style symbol keys instead of rockets

   sed  -i "s/:\([a-zA-Z_]*\) =>/\1:/g" **/*.rb

##### uncomment the lines where the word DEBUG is found

   sed  's/^#\(.*DEBUG\)/\1/' $FILE

##### Raspberry Pi serial number w/o leading zeros

   sed  '$!d s/.*: 0\+//' /proc/cpuinfo

##### Remove color codes (special characters) with sed

   sed  -r "s/(\x1B|\033)(\(B|\[([0-9]{1,2}(;[0-9]{1,2})?)?[A-Z])//Ig"

##### urldecoding

   sed  -e's/%\([0-9A-F][0-9A-F]\)/\\\\\x\1/g' | xargs echo -e

##### Remove color codes (special characters) with sed

   sed  -r 's/'$(echo -e "\033")'\[[0-9]{1,2}(;([0-9]{1,2})?)?[mK]//g'

##### Replace words with sed

   sed  /BEGIN/,/END/s/xxx/yyy/g input.txt

##### Rebuild a Delimited File with a Unique Delimiter

   sed  's/$/uniqueString/' file.old | sed 's/,/\n/g' | sed ':loop;/^\"[^\"]*$/N;s/\n/,/;/[^\"]$/t loop' | sed ':loop;N;s/\n/@/g;/uniqueString$/!b loop;s/uniqueString$//' > file.new

##### delete all trailing whitespace from each line in file

   sed  's/[ \t]*$//' < <file> > <file>.out; mv <file>.out <file>

##### delete all leading and trailing whitespace from each line in file

   sed  's/^[ \t]*//;s/[ \t]*$//' < <file> > <file>.out; mv <file>.out <file>

##### Remove  \r (carriage return) in a file

   sed  -i 's/\r//g somefile.txt

##### delete all leading and trailing whitespace from each line in file

   sed  's/^\s*//;s/\s*$//' -i file

##### Puts every word from a file into a new line

   sed  -r 's/[ \t\r\n\v\f]+/\^J/g' INFILE > OUTFILE

##### Change your e-mail address in multiple files

   sed  -i 's/oldname@example.com/newname@example.com/g' `grep oldname@example.com -rl .`

##### Delete all lines after the first match

   sed  -n -e '1,/match/p'

##### Extract ip addresses with sed

   sed  -n 's/.*\(\(\(^\| \)[0-9]\{1,3\}\.\)\{1\}\([0-9]\{1,3\}\.\)\{2\}[0-9]\{1,3\}\) .*/\1/gp'

##### sed replace string in whole files in folder

   sed  -i 's/SearchString/ReplaceString/g' views/*.php

##### bash chop

   sed  's/.$//'

##### Printout a list of field numbers from a CSV file with headers as first line.

   sed  's/,/\n/g;q' file.csv | nl

##### Remove lines that contain a specific pattern($1) from file($2).

   sed  -i '/myexpression/d' /path/to/file.txt

##### Convert Windows/DOS Text Files to Unix

   sed  -i 's/\r//' <filename>

##### insert blank lines

   sed  G input.txt | cat -s

##### Removes lines [range] from file

   sed  '1,5d'  /path/to/file

##### more than 4 repeated characters to a single character

   sed  -ru 's/(.)\1{4,}/\1/g'

##### Convert camelCase to underscores (camel_case)

   sed  -r 's/([a-z]+)([A-Z][a-z]+)/\1_\l\2/g' file.txt

##### Tells which group you DON'T belong to (opposite of command "groups") - uses sed

   sed  -e "/$USER/d;s/:.*//g" /etc/group | sed -e :a -e '/$/N;s/\n/ /;ta'

##### Remove blank lines from a file

   sed  -i.bak '/^[[:space:]]*$/d' file_name

##### Convert ISO8601 dates to milliseconds since epoch

   sed  "s|\(2[0-9]\{3\}-[01][0-9]-[0-3][0-9]T[01][0-9]:[0-5][0-9]:[0-5][0-9].[0-9]\{3\}Z\)|$(date -d \1 +%s)000|g"

##### Go to the Nth line of file

   sed  -n '15p' $file

##### MySQL: Slice out a specific database (assumes existence of the USE statement) from mysqldump output

   sed  -n "/^USE \`employees\`/,/^USE \`/p"

##### Remove color codes (special characters) with sed

   sed  -r "s@\^\[{1,2}([0-9]{1,2}(;[0-9]{1,2})?(;[0-9])?(m|K){1,2})?@@g"

##### Only change the first occurrence of the pattern

   sed  -i "0,/enabled/{s|enabled=0|enabled=1|}" /etc/yum.repos.d/remi.repo

##### Remove the first line containing 'match' from file

   sed  -i "$(grep -nm 1 match file|cut -f1 -d:)d" file

##### replace deprecated php-function split in php files

   sed  -i s/split\(/explode\(/ whatever.php

##### File without comments or blank lines.

   sed  's/^[[:blank:]]*//; s/^#.*//; /^$/d' filename

##### Comment out all lines in a file beginning with string

   sed  -i '/^somestring/ s/^/#/' somefile.cfg

##### Remove color codes (special characters) with sed

   sed  -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g"

##### Replace strings in files

   sed  -i -e 's/war/peace/g' *

##### pick up 3 lines start at every 5th line of file.txt

   sed  -n '1~5{N;N;p}' file.txt

##### Regular expression search pattern to remove the Datetime and Name when you paste from skype chat into your text editor

   sed  -i 's/^.*?].*?:\s//g' skype-chat-log.txt

##### Analyze Apache Web Log Statistics starting on DATE x

   sed  -n '/05\/Dec\/2010/,$ p' access.log | goaccess -s -b

##### Duplicate a line in a text file and replace part of the duplicated line

   sed  -i -e '/foo/p' -e 's/foo/barfoo/' file

##### Format a password file for John the Ripper from Cisco configs  (Level 5)

   sed  -n 's/[ :]/_/g; s/^\(.\{1,\}\)_5_\($1$[$./0-9A-Za-z]\{27,31\}\)_*$/\1:\2/p' < cisco-device-config > passwd

##### HTML esacaping with sed

   sed  's/&/\&amp;/g; s/</\&lt;/g; s/>/\&gt;/g; s/"/\&quot;/g; s/'"'"'/\&#39;/g'

##### Parse bookmarks and download youtube files

   sed  's+href="\([^"]*\)"+\n\1\n+g' bookmarks.html | grep '^http' |clive

##### Remove color codes (special characters) with sed

   sed  -E "s/"$'\E'"\[([0-9]{1,3}((;[0-9]{1,3})*)?)?[m|K]//g"

##### Extract specific lines from a text file using Stream Editor (sed)

   sed  -n -e 1186,1210p A-small-practice.in

##### Insert line(s) at top of file using sed

   sed  -i '1iI am a new line' file.txt

##### Extract XML from an otherwise plain text log file

   sed  -n '/<Tag>/,/<\/Tag>/p' logfile.log

##### List the CPU model name

   sed  -n 's/^model name[ \t]*: *//p' /proc/cpuinfo

##### Edit hosts file to remove "foo.novalocal" from it where foo is the hostname of a new VM

   sed  -e "s/^127.0.1.1 $(hostname).novalocal/127.0.1.1/g" /etc/hosts

##### convert html links into plain text with link anchor

   sed  's!<[Aa] *href*=*"\([^"]*\)"*>\([^<>]*\)</[Aa]>!\1,\2!g' links.html

##### delete first and last line from file

   sed  '1d;$d' filename

##### Remove comments from files

   sed  -i -e '/^#[^!].*/d' -e 's/\(.*[^!]\)#.*[^}]/\1/' <filename>

##### Sort a one-per-line list of email address, weeding out duplicates

   sed  's/[ \t]*$//' < emails.txt | tr 'A-Z' 'a-z' | sort | uniq > emails_sorted.txt

##### Join lines split with backslash at the end

   sed  -e '/\\$/{:0;N;s/\\\n//;t0}'
