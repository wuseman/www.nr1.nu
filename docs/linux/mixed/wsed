# wsed

#####!/bin/bash
cat << "EOF"
sed -n 5p <file>													    |	# To print a specific line from a file
sed -n 5p <file>													    |	# To print a specific line from a file
sed '/^#.*DEBUG.*/ s/^#//' $FILE											    |	# uncomment the lines where the word DEBUG is found
sed 's/.*/ /'														    |	# convert a line to a space
sed -n "/^.\{73,\}/p" < /path/to/file											    |	# find which lines in a file are longer than N characters
sed -n -e "/^\[/h; /priority *=/{ G; s/\n/ /; s/ity=/ity = /; p }" /etc/yum.repos.d/*.repo | sort -k3n			    |	# Easy way to display yum repo priorities
sed -n '/url/s#^.*url=\(.*://.*\)#\1#p' ~/.mozilla/firefox/*.[dD]efault/SDBackups/*.speeddial | sort | uniq		    |	# Get your Speed Dial urls
sed -i.bak -e s/\|/\\t/g filepath.tsv											    |	# Search and replace pipes for tabs in file with backup
sed ':a;N;$!ba;s/\n/ /g'												    |	# Remove/replace newline characters.
sed -i -e '1i \# -*- coding: utf-8 -*-' yourfile.py									    |	# Append the line # -*- coding: utf-8 -*- to a file
sed -i '$a\FOOBAR' *													    |	# Append a new line "FOOBAR" in all files matching the glob*
sed -e '/MP3$\|mp3$\|wma$\|flac$/!d' <filename_source> > <filename_destination>						    |	# Simply clean playlist
sed 's/^[ \t]*//' < <file> > <file>.out; mv <file>.out <file>								    |	# delete all leading whitespace from each line in file
sed G															    |	# Sed file spacing
sed -i 's/$/\r/' file													    |	# Convert an UNIX file to a DOS file.
sed -i 's/`head -n 500 foo.log`//' foo.log										    |	# truncate files without output redirection or temporary file creation
sed "s:/old/direcory/:/new/directory/:" <file>										    |	# sed : using colons as separators instead of forward slashes
sed -i 3d ~/.ssh/known_hosts												    |	# delete a particular line by line number in file
sed 's/.$//' Win-file.txt												    |	# Convert windows text file to linux text document
sed -i 's/http:\/\/old\/new\///g' index.html										    |	# a find and replace within text-based files
sed -re '/^#/d ; s/#.*$// ; /^\s*$/d'											    |	# Remove superfluous from conf file
sed -n "$=" fileName													    |	# to display number of lines in a file without using wc command
sed -e "s,/\+$,," -e "s,^/\+,," file.txt										    |	# Remove all leading and trailing slashes on each line of a text file
sed -e 's/{"url":/\n&/g' ~/.mozilla/firefox/*/sessionstore.js | cut -d\" -f4						    |	# Extract all urls from the last firefox sessionstore.js file used.
sed '/./=' infile | sed '/^/N; s/\n/ /'											    |	# prints line numbers
sed 's/pattern/^[[1m&^[[0m/g'												    |	# Bold matching string without skipping others
sed = <file> | sed 'N;s/\n/\t/'												    |	# Print line numbers
sed '4!d'														    |	# Print just line 4 from a textfile
sed -i 's/[ \t]\+$//g' file.txt												    |	# Remove trailing whitespaces (or tabs) from a text file
sed -i 's/\r\n//' file.txt												    |	# Remove CR LF from a text file
sed "s/\([a-zA-Z]*\:\/\/[^,]*\),\(.*\)/\<a href=\"\1\"\>\2\<\/a\>/"							    |	# turn url and link text into a hyperlink
sed -i 's/\t/  /g' yourfile												    |	# Convert all tabs in a file to spaces, assuming the tab width is 2
sed 's/$'"/`echo \\\r`/"												    |	# convert Unix newlines to DOS newlines
sed -n '/jan\|Jan\|JAN\|JAn\|jAn\|jAN\|jaN/p' data.txt > jan-only-data.txt						    |	# Print all lines containing the word 'jan' to a new file.
sed -i 's/^.*DEBUG.*/#&/'  $file											    |	# put all lines in comment where de word DEBUG is found
sed -n '/^function h\(\)/,/^}/p' script.sh										    |	# Extract a bash function
sed "s,\x1B\[[0-9;]*[a-zA-Z],,g"											    |	# Remove ( color / special / escape / ANSI ) codes, from text, with sed
sed -ne '/^Package: \(.*\)/{s//\1/;h;};/^Installed-Size:  \(.*\)/{s//\1/;G;s/\n/ /;p;}' /var/lib/dpkg/status | sort -rn	    |	# List your largest installed packages (on Debian/Ubuntu)
sed -i '/Centos/d' VirtualBox.xml											    |	# Delete an hard disk entry in Virtualbox registry
sed ?s/[sub_str]/[sub_str]\n/g? [text_file] | wc -l									    |	# count the number of times you match a substring in a larger text file
sed -i "s/\s*/ /g;s/\s*$//" input_file											    |	# Get rid of multiple spaces/tabs in a text file
sed 's/#.*//' /etc/fstab | column -t											    |	# list all available disks and disk partitions
sed -n '1!G;h;$p' techie.txt												    |	# Print file content in reverse order
sed '/^$/d' file >newfile												    |	# Remove blank lines from a file and save output to new file
sed '1,55d'														    |	# delete first X lines of a file
sed -i "s/\(\x09\{1,\}\)\|\( \{1,\}\)/ /g;s/\(\x09\{1,\}$\)\|\( \{1,\}$\)//g" brisati.txt				    |	# Get rid of multiple spaces/tabs in a text file
sed -i -n '/%/p' *.php													    |	# empty set of files
sed '${LINE}d' ~/.ssh/known_host											    |	# Remove a line from a file using sed (useful for updating known SSH server keys when they change)
sed -i 's/geteuid/getppid/g' /usr/bin/vlc										    |	# run vlc as root
sed 's/$//'														    |	# convert DOS newlines to unix newlines
sedit() { cp "$*"{,.bk}; which $EDITOR > /dev/null && $EDITOR "$*" || vim "$*"; }					    |	# Backup a file before editing it.
sed  '/foo/ s/foo/foobar/g' <filename>											    |	# optimized sed
sed -i -e 's/^#$//g' /path/to/file											    |	# Remove "#' from configuration files.
sed -e '/^#/d' -e 's/#.*$//' in												    |	# Remove comments from files
sed "s/<[^>]\+>//g" file												    |	# Remove all HTML tags from a file
sed -i 's/20[0-1][0-9]\{7\}/'`date +%Y%m%d%I`'/g' *.db									    |	# Update zone file Serial numbers
sed -i 8d ~/.ssh/known_hosts												    |	# Remove a line in a text file. Useful to fix "ssh host key change" warnings
sed -i '${LINE}d' ~/.ssh/known_host											    |	# Remove a line from a file using sed (useful for updating known SSH server keys when they change)
sed -e "s/| /\n/g" ~/.bash_history | cut -d ' ' -f 1 | sort | uniq -c | sort -nr | head					    |	# See the 10 programs the most used
sed 's/[0-9]\+/ [&] /g'													    |	# separate (emphasize) digital strings from other text
sed -n '3,6p' /path/to/file												    |	# Print all lines between two line numbers
sed 's/\(..\)/\1:/g;s/:$//' mac_address_list										    |	# Insert a colon between every two digits
sed -e :a -e 's/<[^>]*>//g;/</N;//ba' index.html									    |	# Regex to remove HTML-Tags from a file
sed "s/\([a-zA-Z]*\:\/\/[^ ]*\)\(.*\)/\<a href=\"\1\"\>\1\<\/a\>\2/"							    |	# regex for turning a URL into a real hyperlink (i.e. for posting somewhere that accepts basic html)
sed -e 's/ .*//' -e 's/\.//' -e 's/^0*//' /proc/loadavg									    |	# Shows cpu load in percent
sed '/MARKER/{N;s/THIS/THAT/}'												    |	# Apply substitution only on the line following a marker
sed -r "s/\x1B\[([0-9]{1,3}((;[0-9]{1,3})*)?)?[m|K]//g									    |	# Remove color codes (special characters) with sed
sed -i '19375 s/^/#/' file												    |	# Comment out a line in a file
sed -i 'your sed stuff here' file											    |	# Simplification of "sed 'your sed stuff here' file > file2 && mv file2 file"
sed -r "s:\x1B\[[0-9;]*[mK]::g"'											    |	# Remove color codes (special characters) with sed
sed -i '1s/^/text to prepend\n/' file1											    |	# Prepend a text to a file.
sed -i '10d' <somefile>													    |	# Delete line number 10 from file
sed '/^$/d'														    |	# remove empty lines
sed -i 's/^M//' file													    |	# Convert files from DOS line endings to UNIX line endings
sed '/./,$!d'														    |	# remove leading blank lines
sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g"									    |	# Remove color codes (special characters) with sed
sed 's/$/<ctrl+v><ctrl+m>/'												    |	# Convert Unix newlines to DOS newlines
sed '1!G;h;$!d'														    |	# reverse order of file
sed "s/^.//g" files													    |	# Remove the first character of each line in a file
sed '${/^$/d}' file													    |	# Delete Last Line of a File if it is Blank
sed -n 's/.*<foo>\([^<]*\)<\/foo>.*/\1/p'										    |	# Simple XML tag extract with sed
sed -e "$ ! s/$/,/"													    |	# Perform sed substitution on all but the last line of input
sed -e '/^$/d' -i .bak filewithempty.lines										    |	# remove empty lines in place with backup
sed '10,20!d'														    |	# Print all the lines between 10 and 20 of a file
sed '1000000!d;q' < massive-log-file.log										    |	# Efficiently print a line deep in a huge log file
sed -n 's/.*<title>\(.*\)<\/title>.*/\1/ip;T;q' file.html								    |	# Extract title from HTML files
sed '/test/{/error\|critical\|warning/d}' somefile									    |	# grep -v with multiple patterns.
sed -i -e 's/SEARCH_STRING/REPLACE_STRING/g' `find . -iname 'FILENAME'`							    |	# a find and replace within text-based files, for batch text replacement, not using perl
sed -n 13p /etc/services												    |	# Go to the Nth line of file
sed -e :a -e 's/\(.*[0-9]\)\([0-9]\{3\}\)/\1,\2/;ta' filename								    |	# Add thousand separator with sed, in a file or within pipe
sed G file.txt														    |	# append empty line after every line in file.txt
sed -n '/START/,${/STOP/q;p}'												    |	# Efficiently extract lines between markers
sed -i 's|\("browser.startup.homepage",\) "\(.*\)"|\1 "http://sliceoflinux.com"|' .mozilla/firefox/*.default/prefs.js	    |	# Change the homepage of Firefox
sed -i <file> -re '<start>,<end>d'											    |	# Remove a range of lines from a file
sed "s/^ABC/+ABC/" <file | sed "s/DEF$/DEF+/" | tr "\n" "~" | tr "+" "\n" | grep "^ABC"  | tr "~" "\n"			    |	# Gives you what's between first string and second string included.
sed '/^$/d'														    |	# Remove blank lines
sed 1d foo.txt														    |	# Deleting / Ignoring lines from the top of a file
sed -n  's/\([0-9]\{1,3\}\.\)\{3\}[0-9]\{1,3\}/\nip&\n/gp' ips.txt  | grep ip | sed 's/ip//'| sort | uniq		    |	# Extract ip addresses with sed
sed -n '/^.\{255\}/!p'													    |	# remove lines which are longer than 255
sed -n '/test/{/error\|critical\|warning/d;p}' somefile									    |	# grep -v with multiple patterns.
sed 's/\b\(0*\)//g' filename												    |	# Remove leading zeros in multiple columns with sed
sed -e '/^[<space><tab>]*$/d' somefile											    |	# output the contents of a file removing any empty lines including lines which contain only spaces or tabs.
sed -n '1,/regex/p' filename												    |	# print contents of file from line 1 until we match regex
sed 's/^/$ /' "$script" | xclip												    |	# preprocess code to be posted in comments on this site
sed -r 's_(/[^>]*?>)_\1\n_g' filename.html										    |	# quick and dirty formatting for HTML code
sed -i.bak 's/old/new/g' file												    |	# Do a search-and-replace in a file after making a backup
sed -e :a -e '/$/N;s/\n/ /;ta' <filename>										    |	# Concatenates lines using sed
sed "s/\s\+/;/g;s/^ //;s/ $//" filename.csv										    |	# Replace multiple spaces with semicolon
sed -i 's/OLD/NEW/g' FILE												    |	# Change every instance of OLD to NEW in file FILE
sed 's/^M$//' input.txt > output.txt											    |	# Convert DOS newlines (CR/LF) to Unix format
sed  'X{N;s/\n//;}' file.txt (where X is the current line)								    |	# Embed next line on the end of current line using sed
sed -i '/pattern/N; s/\n//' filename											    |	# remove newlines from specific lines in a file using sed
sed "s/\b\(.\)/\u\1/g"													    |	# Capitalize the first letter of every word
sed -e 's/#.*//;/^\s*$/d'												    |	# Show a config file without comments
sed 's/^[ \t]*//;s/[ \t]*$//' -i file											    |	# delete all leading and trailing whitespace from each line in file
sed -i 's/[ \t]*$//' file												    |	# Remove space and/or tab characters at the end of line
sed -i 's/^\s\+//' <file>												    |	# delete all trailing whitespace from each line in file
sed -n -e '/postfix\/smtp\[.*status=sent/s/^.*to=<\([^>]*\).*$/\1/p' /var/log/mail.log | sort -u			    |	# Display email addresses that have been sent to by a postfix server since the last mail log rollover
sed 's/\o0/\n/g' /proc/INSERT_PID_HERE/environ										    |	# Given process ID print its environment variables
sed 2~2d														    |	# Print only the odd lines of a file (GNU sed)
sed -i.$(date +%F@%T) 's/^LogLevel warn/LogLevel debug/g' httpd.conf							    |	# Search replace with Ansible style timestamps
sed '/INSERT INTO `unwanted_table`/d' mydb.sql > reduced.sql								    |	# Exclude inserting a table from a sql import
sed -e "s/[^/]*\/\/\([^@]*@\)\?\([^:/]*\).*/\2/"									    |	# Getting a domain from url, ex: very nice to get url from squid access.log
sed '/'"<opening tag>"'/,/'"<closing tag>"'/{/'"<closing tag>"'/d;p};d' "<file>"					    |	# Multi line grep using sed and specifying open/close tags
sed -i.backup '/patter/{n;s/foo/bar/g}' file										    |	# SED - Substitute string in next line
sed -ru 's/(..)\1{2,}/\1/g'												    |	# remove repeated pairs of characters e.g. "xtxtxtxt" will become "xt"
sed '/^$/d' /tmp/data.txt > /tmp/output.txt										    |	# Delete all empty/blank lines from text file & output to file
sed -n "/^ Table structure for table \`departments\`/,/^ Table structure for table/p"					    |	# MySQL: Slice out a specific table from the output of mysqldump
sed -i 's/^\(somestring\)/#\1/' somefile.cfg										    |	# Comment out all lines in a file beginning with string
sed -i '<line_no>s/\(.*\)/#\1/' <testfile>										    |	# commentate specified line of a file
sed "s/^ *//;s/ *$//;s/ \{1,\}/ /g" filename.txt									    |	# Remove multiple spaces
sed -i 's/^/#/' FILENAME												    |	# Simple Comment an entire file
sed  's/^\([^>.]\)/#\1/;s/^>>> //;s/^\.\.\./  /'									    |	# Convert a Python interactive session to a python script
sed '/^/R addfile' targetfile > savefile										    |	# Add a line from 1 file after every line of another (shuffle files together)
sed -n '/regex/,$p' filename												    |	# print contents of file from first match of regex to end of file
sed i"+" file.txt | xargs echo 0 |bc											    |	# Compute the numeric sum of a file
sed 's/^[ \t]*//' input.txt												    |	# Delete leading whitespace from the start of each line
sed 's/^\s*//' input.txt												    |	# Delete leading whitespace from the start of each line
sed -n '/^[^#]*<Virtual/{:l N; /<\/Virtual/!bl;}; /PATTERN/p' vhosts.conf						    |	# Search apache virtual host by pattern
sed 's/:/\n/g' <<<$PATH													    |	# Terminal - Show directories in the PATH, one per line with sed and bash3.X `here string'
sed -i <start>,<end>d <filename>											    |	# Remove a range of lines from a file
sed -i.`date +%Y%m%d` -e 's/pattern/replace' [filename]									    |	# In-Place search/replace with datestamped backup
sed -i 's/ /-/g' *													    |	# Replace spaces in a file with hyphens
sed -i 8d ~/.ssh/known_hosts												    |	# Delete the specified line
sed -i 's/oldname/newname/' /etc/hosts /etc/hostname									    |	# Change host name
sed -n '4{p;q}'														    |	# Print just line 4 from a textfile
sed -n '4p'														    |	# Print just line 4 from a textfile
sed -i -e 's/[ \t]*$//;/^$/N;/\n$/D' sourcefiletocleanup								    |	# Cleanup a (source) text file, removing trailing spaces/tabs and multiple consecutive blank lines
sed '/^\s*[^@%]/s=\([A-Z][A-Z]*\)\([^}A-Z]\|},$\)={\1}\2=g' literature.bib > output.bib					    |	# Put uppercase letters in curly brackets in a BibTeX database
sed -i 's/^/ls -l /' output_files.txt											    |	# Prepend a text to a file.
sed -i "s/:\([a-zA-Z_]*\) =>/\1:/g" **/*.rb										    |	# Edit Ruby files within the current directory to use Ruby 1.9+ style symbol keys instead of rockets
sed 's/^#\(.*DEBUG\)/\1/' $FILE												    |	# uncomment the lines where the word DEBUG is found
sed '$!d s/.*: 0\+//' /proc/cpuinfo											    |	# Raspberry Pi serial number w/o leading zeros
sed -r "s/(\x1B|\033)(\(B|\[([0-9]{1,2}(;[0-9]{1,2})?)?[A-Z])//Ig"							    |	# Remove color codes (special characters) with sed
sed -e's/%\([0-9A-F][0-9A-F]\)/\\\\\x\1/g' | xargs echo -e								    |	# urldecoding
sed -r 's/'$(echo -e "\033")'\[[0-9]{1,2}(;([0-9]{1,2})?)?[mK]//g'							    |	# Remove color codes (special characters) with sed
sed /BEGIN/,/END/s/xxx/yyy/g input.txt											    |	# Replace words with sed
sed 's/[ \t]*$//' < <file> > <file>.out; mv <file>.out <file>								    |	# delete all trailing whitespace from each line in file
sed 's/^[ \t]*//;s/[ \t]*$//' < <file> > <file>.out; mv <file>.out <file>						    |	# delete all leading and trailing whitespace from each line in file
sed -i 's/\r//g somefile.txt												    |	# Remove  \r (carriage return) in a file
sed 's/^\s*//;s/\s*$//' -i file												    |	# delete all leading and trailing whitespace from each line in file
sed -r 's/[ \t\r\n\v\f]+/\^J/g' INFILE > OUTFILE									    |	# Puts every word from a file into a new line
sed -i 's/oldname@example.com/newname@example.com/g' `grep oldname@example.com -rl .`					    |	# Change your e-mail address in multiple files
sed -n -e '1,/match/p'													    |	# Delete all lines after the first match
sed -n 's/.*\(\(\(^\| \)[0-9]\{1,3\}\.\)\{1\}\([0-9]\{1,3\}\.\)\{2\}[0-9]\{1,3\}\) .*/\1/gp'				    |	# Extract ip addresses with sed
sed -i 's/SearchString/ReplaceString/g' views/*.php									    |	# sed replace string in whole files in folder
sed 's/.$//'														    |	# bash chop
sed 's/,/\n/g;q' file.csv | nl												    |	# Printout a list of field numbers from a CSV file with headers as first line.
sed -i '/myexpression/d' /path/to/file.txt										    |	# Remove lines that contain a specific pattern($1) from file($2).
sed -i 's/\r//' <filename>												    |	# Convert Windows/DOS Text Files to Unix
sed G input.txt | cat -s												    |	# insert blank lines
sed '1,5d'  /path/to/file												    |	# Removes lines [range] from file
sed -ru 's/(.)\1{4,}/\1/g'												    |	# more than 4 repeated characters to a single character
sed -r 's/([a-z]+)([A-Z][a-z]+)/\1_\l\2/g' file.txt									    |	# Convert camelCase to underscores (camel_case)
sed -e "/$USER/d;s/:.*//g" /etc/group | sed -e :a -e '/$/N;s/\n/ /;ta'							    |	# Tells which group you DON'T belong to (opposite of command "groups") - uses sed
sed -i.bak '/^[[:space:]]*$/d' file_name										    |	# Remove blank lines from a file
sed "s|\(2[0-9]\{3\}-[01][0-9]-[0-3][0-9]T[01][0-9]:[0-5][0-9]:[0-5][0-9].[0-9]\{3\}Z\)|$(date -d \1 +%s)000|g"		    |	# Convert ISO8601 dates to milliseconds since epoch
sed -n '15p' $file													    |	# Go to the Nth line of file
sed -n "/^USE \`employees\`/,/^USE \`/p"										    |	# MySQL: Slice out a specific database (assumes existence of the USE statement) from mysqldump output
sed -r "s@\^\[{1,2}([0-9]{1,2}(;[0-9]{1,2})?(;[0-9])?(m|K){1,2})?@@g"							    |	# Remove color codes (special characters) with sed
sed -i "0,/enabled/{s|enabled=0|enabled=1|}" /etc/yum.repos.d/remi.repo							    |	# Only change the first occurrence of the pattern
sed -i "$(grep -nm 1 match file|cut -f1 -d:)d" file									    |	# Remove the first line containing 'match' from file
sed -i s/split\(/explode\(/ whatever.php										    |	# replace deprecated php-function split in php files
sed 's/^[[:blank:]]*//; s/^#.*//; /^$/d' filename									    |	# File without comments or blank lines.
sed -i '/^somestring/ s/^/#/' somefile.cfg										    |	# Comment out all lines in a file beginning with string
sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g"									    |	# Remove color codes (special characters) with sed
sed -i -e 's/war/peace/g' *												    |	# Replace strings in files
sed -n '1~5{N;N;p}' file.txt												    |	# pick up 3 lines start at every 5th line of file.txt
sed -i 's/^.*?].*?:\s//g' skype-chat-log.txt										    |	# Regular expression search pattern to remove the Datetime and Name when you paste from skype chat into your text editor
sed -n '/05\/Dec\/2010/,$ p' access.log | goaccess -s -b								    |	# Analyze Apache Web Log Statistics starting on DATE x
sed -i -e '/foo/p' -e 's/foo/barfoo/' file										    |	# Duplicate a line in a text file and replace part of the duplicated line
sed -n 's/[ :]/_/g; s/^\(.\{1,\}\)_5_\($1$[$./0-9A-Za-z]\{27,31\}\)_*$/\1:\2/p' < cisco-device-config > passwd		    |	# Format a password file for John the Ripper from Cisco configs  (Level 5)
sed 's/&/\&amp;/g; s/</\&lt;/g; s/>/\&gt;/g; s/"/\&quot;/g; s/'"'"'/\&#39;/g'						    |	# HTML esacaping with sed
sed 's+href="\([^"]*\)"+\n\1\n+g' bookmarks.html | grep '^http' |clive							    |	# Parse bookmarks and download youtube files
sed -E "s/"$'\E'"\[([0-9]{1,3}((;[0-9]{1,3})*)?)?[m|K]//g"								    |	# Remove color codes (special characters) with sed
sed -n -e 1186,1210p A-small-practice.in										    |	# Extract specific lines from a text file using Stream Editor (sed)
sed -i '1iI am a new line' file.txt											    |	# Insert line(s) at top of file using sed
sed -n '/<Tag>/,/<\/Tag>/p' logfile.log											    |	# Extract XML from an otherwise plain text log file
sed -n 's/^model name[ \t]*: *//p' /proc/cpuinfo									    |	# List the CPU model name
sed -e "s/^127.0.1.1 $(hostname).novalocal/127.0.1.1/g" /etc/hosts							    |	# Edit hosts file to remove "foo.novalocal" from it where foo is the hostname of a new VM
sed 's!<[Aa] *href*=*"\([^"]*\)"*>\([^<>]*\)</[Aa]>!\1,\2!g' links.html							    |	# convert html links into plain text with link anchor
sed '1d;$d' filename													    |	# delete first and last line from file
sed -i -e '/^#[^!].*/d' -e 's/\(.*[^!]\)#.*[^}]/\1/' <filename>								    |	# Remove comments from files
sed 's/[ \t]*$//' < emails.txt | tr 'A-Z' 'a-z' | sort | uniq > emails_sorted.txt					    |	# Sort a one-per-line list of email address, weeding out duplicates
sed ':a;N;$!ba;s/\n\n/\n%\n/g' input.txt >output									    |	# Create fortune's *.dat file from commandlinefu from saved preferite
sed -e :a -e '$!N;s/\n/ /;ta'												    |	# Replace nelines with spaces
sed -i.awkbak "s/\([:,]\)oldspiderman/\1newspiderman/" /etc/group							    |	# Revoke an existing user's group memberships and add another user to those same groups,
sed -e '/4.2.2.2/ s/^;//' -i test.txt											    |	# Uncomment line based on string match
sed 's/^\(.*\)\(.\)\(.\)$/\1\3/' fileName										    |	# to display all characters except second last character from each line of a file
sed 's/,/\t/g' report.csv > report.tsv											    |	# Convert CSV files to TSV
sed -r 's/(\[|])//g' | awk ' { $1=strftime("%D %T",$1); print }'							    |	# Change time format in log, UNIX Timestamp to Human readable
sed -i 'g/text/d' <filename>												    |	# Remove lines ending or trailing slash (/)
sed -n -e :a -i -e '1,5!{P;N;D;};N;ba' /etc/apt/sources.list								    |	# Remove last x lines from file using sed
sed -i 6,66d <filename>													    |	# Remove a range of lines from a file
sed 's/ \+ /\t/g' /usr/local/etc/rsnapshot.conf >/tmp/snap.conf								    |	# rsnapshot vim edit replaying space tabs
sed -e '/\\$/{:0;N;s/\\\n//;t0}'											    |	# Join lines split with backslash at the end
sed -n 5p <file>													    |	# To print a specific line from a file
sed '/^#.*DEBUG.*/ s/^#//' $FILE											    |	# uncomment the lines where the word DEBUG is found
sed "s:/old/direcory/:/new/directory/:" <file>										    |	# sed : using colons as separators instead of forward slashes
sed -i 3d ~/.ssh/known_hosts												    |	# delete a particular line by line number in file
sed -i 's/^.*DEBUG.*/#&/'  $file											    |	# put all lines in comment where de word DEBUG is found
sed -n '/^function h\(\)/,/^}/p' script.sh										    |	# Extract a bash function
sed "s,\x1B\[[0-9;]*[a-zA-Z],,g"											    |	# Remove ( color / special / escape / ANSI ) codes, from text, with sed
sed -e 's/ *$//' ~/.bash_history | sort | uniq -cd | sort -nr | head							    |	# top 10 commands used
sed -n /start_pattern/,/stop_pattern/p file.txt										    |	# Display a block of text with AWK
sed -e '/^#/d' -e 's/#.*$//' in												    |	# Remove comments from files
sed "s/<[^>]\+>//g" file												    |	# Remove all HTML tags from a file
sed -i 's/20[0-1][0-9]\{7\}/'`date +%Y%m%d%I`'/g' *.db									    |	# Update zone file Serial numbers
sed -i 8d ~/.ssh/known_hosts												    |	# Remove a line in a text file. Useful to fix "ssh host key change" warnings
sed -i '${LINE}d' ~/.ssh/known_host											    |	# Remove a line from a file using sed (useful for updating known SSH server keys when they change)
sed -e "s/| /\n/g" ~/.bash_history | cut -d ' ' -f 1 | sort | uniq -c | sort -nr | head					    |	# See the 10 programs the most used
sed 's/[0-9]\+/ [&] /g'													    |	# separate (emphasize) digital strings from other text
sed -n '3,6p' /path/to/file												    |	# Print all lines between two line numbers
sed 's/\(..\)/\1:/g;s/:$//' mac_address_list										    |	# Insert a colon between every two digits
sed -e :a -e 's/<[^>]*>//g;/</N;//ba' index.html									    |	# Regex to remove HTML-Tags from a file
sed "s/\([a-zA-Z]*\:\/\/[^ ]*\)\(.*\)/\<a href=\"\1\"\>\1\<\/a\>\2/"							    |	# regex for turning a URL into a real hyperlink (i.e. for posting somewhere that accepts basic html)
sed -e 's/ .*//' -e 's/\.//' -e 's/^0*//' /proc/loadavg									    |	# Shows cpu load in percent
sed '/MARKER/{N;s/THIS/THAT/}'												    |	# Apply substitution only on the line following a marker
sed -r "s/\x1B\[([0-9]{1,3}((;[0-9]{1,3})*)?)?[m|K]//g									    |	# Remove color codes (special characters) with sed
sed -i '19375 s/^/#/' file												    |	# Comment out a line in a file
sed -i 'your sed stuff here' file											    |	# Simplification of "sed 'your sed stuff here' file > file2 && mv file2 file"
sed -r "s:\x1B\[[0-9;]*[mK]::g"'											    |	# Remove color codes (special characters) with sed
sed -i '1s/^/text to prepend\n/' file1											    |	# Prepend a text to a file.
sed -i '10d' <somefile>													    |	# Delete line number 10 from file
sed '/^$/d'														    |	# remove empty lines
sed -i 's/^M//' file													    |	# Convert files from DOS line endings to UNIX line endings
sed '/./,$!d'														    |	# remove leading blank lines
sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g"									    |	# Remove color codes (special characters) with sed
sed 's/$/<ctrl+v><ctrl+m>/'												    |	# Convert Unix newlines to DOS newlines
sed '1!G;h;$!d'														    |	# reverse order of file
sed "s/^.//g" files													    |	# Remove the first character of each line in a file
sed '${/^$/d}' file													    |	# Delete Last Line of a File if it is Blank
sed -n 's/.*<foo>\([^<]*\)<\/foo>.*/\1/p'										    |	# Simple XML tag extract with sed
sed -e "$ ! s/$/,/"													    |	# Perform sed substitution on all but the last line of input
sed -e '/^$/d' -i .bak filewithempty.lines										    |	# remove empty lines in place with backup
sed '10,20!d'														    |	# Print all the lines between 10 and 20 of a file
sed '1000000!d;q' < massive-log-file.log										    |	# Efficiently print a line deep in a huge log file
sed -n 's/.*<title>\(.*\)<\/title>.*/\1/ip;T;q' file.html								    |	# Extract title from HTML files
sed '/test/{/error\|critical\|warning/d}' somefile									    |	# grep -v with multiple patterns.
sed -i -e 's/SEARCH_STRING/REPLACE_STRING/g' `find . -iname 'FILENAME'`							    |	# a find and replace within text-based files, for batch text replacement, not using perl
sed -n 13p /etc/services												    |	# Go to the Nth line of file
sed -e :a -e 's/\(.*[0-9]\)\([0-9]\{3\}\)/\1,\2/;ta' filename								    |	# Add thousand separator with sed, in a file or within pipe
sed G file.txt														    |	# append empty line after every line in file.txt
sed -n '/START/,${/STOP/q;p}'												    |	# Efficiently extract lines between markers
sed -i 's|\("browser.startup.homepage",\) "\(.*\)"|\1 "http://sliceoflinux.com"|' .mozilla/firefox/*.default/prefs.js	    |	# Change the homepage of Firefox
sed -i <file> -re '<start>,<end>d'											    |	# Remove a range of lines from a file
sed "s/^ABC/+ABC/" <file | sed "s/DEF$/DEF+/" | tr "\n" "~" | tr "+" "\n" | grep "^ABC"  | tr "~" "\n"			    |	# Gives you what's between first string and second string included.
sed '/^$/d'														    |	# Remove blank lines
sed 1d foo.txt														    |	# Deleting / Ignoring lines from the top of a file
sed -n  's/\([0-9]\{1,3\}\.\)\{3\}[0-9]\{1,3\}/\nip&\n/gp' ips.txt  | grep ip | sed 's/ip//'| sort | uniq		    |	# Extract ip addresses with sed
sed -n '/^.\{255\}/!p'													    |	# remove lines which are longer than 255
sed -n '/test/{/error\|critical\|warning/d;p}' somefile									    |	# grep -v with multiple patterns.
sed 's/\b\(0*\)//g' filename												    |	# Remove leading zeros in multiple columns with sed
sed -e '/^[<space><tab>]*$/d' somefile											    |	# output the contents of a file removing any empty lines including lines which contain only spaces or tabs.
sed -n '1,/regex/p' filename												    |	# print contents of file from line 1 until we match regex
sed 's/^/$ /' "$script" | xclip												    |	# preprocess code to be posted in comments on this site
sed -r 's_(/[^>]*?>)_\1\n_g' filename.html										    |	# quick and dirty formatting for HTML code
sed -i.bak 's/old/new/g' file												    |	# Do a search-and-replace in a file after making a backup
sed -e :a -e '/$/N;s/\n/ /;ta' <filename>										    |	# Concatenates lines using sed
sed "s/\s\+/;/g;s/^ //;s/ $//" filename.csv										    |	# Replace multiple spaces with semicolon
sed -i 's/OLD/NEW/g' FILE												    |	# Change every instance of OLD to NEW in file FILE
sed 's/^M$//' input.txt > output.txt											    |	# Convert DOS newlines (CR/LF) to Unix format
sed  'X{N;s/\n//;}' file.txt (where X is the current line)								    |	# Embed next line on the end of current line using sed
sed -i '/pattern/N; s/\n//' filename											    |	# remove newlines from specific lines in a file using sed
sed "s/\b\(.\)/\u\1/g"													    |	# Capitalize the first letter of every word
sed -e 's/#.*//;/^\s*$/d'												    |	# Show a config file without comments
sed 's/^[ \t]*//;s/[ \t]*$//' -i file											    |	# delete all leading and trailing whitespace from each line in file
sed -i 's/[ \t]*$//' file												    |	# Remove space and/or tab characters at the end of line
sed -i 's/^\s\+//' <file>												    |	# delete all trailing whitespace from each line in file
sed -n -e '/postfix\/smtp\[.*status=sent/s/^.*to=<\([^>]*\).*$/\1/p' /var/log/mail.log | sort -u			    |	# Display email addresses that have been sent to by a postfix server since the last mail log rollover
sed 's/\o0/\n/g' /proc/INSERT_PID_HERE/environ										    |	# Given process ID print its environment variables
sed 2~2d														    |	# Print only the odd lines of a file (GNU sed)
sed -i.$(date +%F@%T) 's/^LogLevel warn/LogLevel debug/g' httpd.conf							    |	# Search replace with Ansible style timestamps
sed '/INSERT INTO `unwanted_table`/d' mydb.sql > reduced.sql								    |	# Exclude inserting a table from a sql import
sed -e "s/[^/]*\/\/\([^@]*@\)\?\([^:/]*\).*/\2/"									    |	# Getting a domain from url, ex: very nice to get url from squid access.log
sed '/'"<opening tag>"'/,/'"<closing tag>"'/{/'"<closing tag>"'/d;p};d' "<file>"					    |	# Multi line grep using sed and specifying open/close tags
sed -i.backup '/patter/{n;s/foo/bar/g}' file										    |	# SED - Substitute string in next line
sed -ru 's/(..)\1{2,}/\1/g'												    |	# remove repeated pairs of characters e.g. "xtxtxtxt" will become "xt"
sed '/^$/d' /tmp/data.txt > /tmp/output.txt										    |	# Delete all empty/blank lines from text file & output to file
sed -n "/^ Table structure for table \`departments\`/,/^ Table structure for table/p"					    |	# MySQL: Slice out a specific table from the output of mysqldump
sed -i 's/^\(somestring\)/#\1/' somefile.cfg										    |	# Comment out all lines in a file beginning with string
sed -i '<line_no>s/\(.*\)/#\1/' <testfile>										    |	# commentate specified line of a file
sed "s/^ *//;s/ *$//;s/ \{1,\}/ /g" filename.txt									    |	# Remove multiple spaces
sed -i 's/^/#/' FILENAME												    |	# Simple Comment an entire file
sed  's/^\([^>.]\)/#\1/;s/^>>> //;s/^\.\.\./  /'									    |	# Convert a Python interactive session to a python script
sed '/^/R addfile' targetfile > savefile										    |	# Add a line from 1 file after every line of another (shuffle files together)
sed -n '/regex/,$p' filename												    |	# print contents of file from first match of regex to end of file
sed i"+" file.txt | xargs echo 0 |bc											    |	# Compute the numeric sum of a file
sed 's/^[ \t]*//' input.txt												    |	# Delete leading whitespace from the start of each line
sed 's/^\s*//' input.txt												    |	# Delete leading whitespace from the start of each line
sed -n '/^[^#]*<Virtual/{:l N; /<\/Virtual/!bl;}; /PATTERN/p' vhosts.conf						    |	# Search apache virtual host by pattern
sed 's/:/\n/g' <<<$PATH													    |	# Terminal - Show directories in the PATH, one per line with sed and bash3.X `here string'
sed -i <start>,<end>d <filename>											    |	# Remove a range of lines from a file
sed -i.`date +%Y%m%d` -e 's/pattern/replace' [filename]									    |	# In-Place search/replace with datestamped backup
sed -i 's/ /-/g' *													    |	# Replace spaces in a file with hyphens
sed -i 8d ~/.ssh/known_hosts												    |	# Delete the specified line
sed -i 's/oldname/newname/' /etc/hosts /etc/hostname									    |	# Change host name
sed -n '4{p;q}'														    |	# Print just line 4 from a textfile
sed -n '4p'														    |	# Print just line 4 from a textfile
sed -i -e 's/[ \t]*$//;/^$/N;/\n$/D' sourcefiletocleanup								    |	# Cleanup a (source) text file, removing trailing spaces/tabs and multiple consecutive blank lines
sed '/^\s*[^@%]/s=\([A-Z][A-Z]*\)\([^}A-Z]\|},$\)={\1}\2=g' literature.bib > output.bib					    |	# Put uppercase letters in curly brackets in a BibTeX database
sed -i 's/^/ls -l /' output_files.txt											    |	# Prepend a text to a file.
sed -i "s/:\([a-zA-Z_]*\) =>/\1:/g" **/*.rb										    |	# Edit Ruby files within the current directory to use Ruby 1.9+ style symbol keys instead of rockets
sed 's/^#\(.*DEBUG\)/\1/' $FILE												    |	# uncomment the lines where the word DEBUG is found
sed '$!d s/.*: 0\+//' /proc/cpuinfo											    |	# Raspberry Pi serial number w/o leading zeros
sed -r "s/(\x1B|\033)(\(B|\[([0-9]{1,2}(;[0-9]{1,2})?)?[A-Z])//Ig"							    |	# Remove color codes (special characters) with sed
sed -e's/%\([0-9A-F][0-9A-F]\)/\\\\\x\1/g' | xargs echo -e								    |	# urldecoding
sed -r 's/'$(echo -e "\033")'\[[0-9]{1,2}(;([0-9]{1,2})?)?[mK]//g'							    |	# Remove color codes (special characters) with sed
sed /BEGIN/,/END/s/xxx/yyy/g input.txt											    |	# Replace words with sed
sed 's/[ \t]*$//' < <file> > <file>.out; mv <file>.out <file>								    |	# delete all trailing whitespace from each line in file
sed 's/^[ \t]*//;s/[ \t]*$//' < <file> > <file>.out; mv <file>.out <file>						    |	# delete all leading and trailing whitespace from each line in file
sed -i 's/\r//g somefile.txt												    |	# Remove  \r (carriage return) in a file
sed 's/^\s*//;s/\s*$//' -i file												    |	# delete all leading and trailing whitespace from each line in file
sed -r 's/[ \t\r\n\v\f]+/\^J/g' INFILE > OUTFILE									    |	# Puts every word from a file into a new line
sed -i 's/oldname@example.com/newname@example.com/g' `grep oldname@example.com -rl .`					    |	# Change your e-mail address in multiple files
sed -n -e '1,/match/p'													    |	# Delete all lines after the first match
sed -n 's/.*\(\(\(^\| \)[0-9]\{1,3\}\.\)\{1\}\([0-9]\{1,3\}\.\)\{2\}[0-9]\{1,3\}\) .*/\1/gp'				    |	# Extract ip addresses with sed
sed -i 's/SearchString/ReplaceString/g' views/*.php									    |	# sed replace string in whole files in folder
sed 's/.$//'														    |	# bash chop
sed 's/,/\n/g;q' file.csv | nl												    |	# Printout a list of field numbers from a CSV file with headers as first line.
sed -i '/myexpression/d' /path/to/file.txt										    |	# Remove lines that contain a specific pattern($1) from file($2).
sed -i 's/\r//' <filename>												    |	# Convert Windows/DOS Text Files to Unix
sed G input.txt | cat -s												    |	# insert blank lines
sed '1,5d'  /path/to/file												    |	# Removes lines [range] from file
sed -ru 's/(.)\1{4,}/\1/g'												    |	# more than 4 repeated characters to a single character
sed -r 's/([a-z]+)([A-Z][a-z]+)/\1_\l\2/g' file.txt									    |	# Convert camelCase to underscores (camel_case)
sed -e "/$USER/d;s/:.*//g" /etc/group | sed -e :a -e '/$/N;s/\n/ /;ta'							    |	# Tells which group you DON'T belong to (opposite of command "groups") - uses sed
sed -i.bak '/^[[:space:]]*$/d' file_name										    |	# Remove blank lines from a file
sed "s|\(2[0-9]\{3\}-[01][0-9]-[0-3][0-9]T[01][0-9]:[0-5][0-9]:[0-5][0-9].[0-9]\{3\}Z\)|$(date -d \1 +%s)000|g"		    |	# Convert ISO8601 dates to milliseconds since epoch
sed -n '15p' $file													    |	# Go to the Nth line of file
sed -n "/^USE \`employees\`/,/^USE \`/p"										    |	# MySQL: Slice out a specific database (assumes existence of the USE statement) from mysqldump output
sed -r "s@\^\[{1,2}([0-9]{1,2}(;[0-9]{1,2})?(;[0-9])?(m|K){1,2})?@@g"							    |	# Remove color codes (special characters) with sed
sed -i "0,/enabled/{s|enabled=0|enabled=1|}" /etc/yum.repos.d/remi.repo							    |	# Only change the first occurrence of the pattern
sed -i "$(grep -nm 1 match file|cut -f1 -d:)d" file									    |	# Remove the first line containing 'match' from file
sed -i s/split\(/explode\(/ whatever.php										    |	# replace deprecated php-function split in php files
sed 's/^[[:blank:]]*//; s/^#.*//; /^$/d' filename									    |	# File without comments or blank lines.
sed -i '/^somestring/ s/^/#/' somefile.cfg										    |	# Comment out all lines in a file beginning with string
sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g"									    |	# Remove color codes (special characters) with sed
sed -i -e 's/war/peace/g' *												    |	# Replace strings in files
sed -n '1~5{N;N;p}' file.txt												    |	# pick up 3 lines start at every 5th line of file.txt
sed -i 's/^.*?].*?:\s//g' skype-chat-log.txt										    |	# Regular expression search pattern to remove the Datetime and Name when you paste from skype chat into your text editor
sed -n '/05\/Dec\/2010/,$ p' access.log | goaccess -s -b								    |	# Analyze Apache Web Log Statistics starting on DATE x
sed -i -e '/foo/p' -e 's/foo/barfoo/' file										    |	# Duplicate a line in a text file and replace part of the duplicated line
sed -n 's/[ :]/_/g; s/^\(.\{1,\}\)_5_\($1$[$./0-9A-Za-z]\{27,31\}\)_*$/\1:\2/p' < cisco-device-config > passwd		    |	# Format a password file for John the Ripper from Cisco configs  (Level 5)
sed 's/&/\&amp;/g; s/</\&lt;/g; s/>/\&gt;/g; s/"/\&quot;/g; s/'"'"'/\&#39;/g'						    |	# HTML esacaping with sed
sed 's+href="\([^"]*\)"+\n\1\n+g' bookmarks.html | grep '^http' |clive							    |	# Parse bookmarks and download youtube files
sed -E "s/"$'\E'"\[([0-9]{1,3}((;[0-9]{1,3})*)?)?[m|K]//g"								    |	# Remove color codes (special characters) with sed
sed -n -e 1186,1210p A-small-practice.in										    |	# Extract specific lines from a text file using Stream Editor (sed)
sed -i '1iI am a new line' file.txt											    |	# Insert line(s) at top of file using sed
sed -n '/<Tag>/,/<\/Tag>/p' logfile.log											    |	# Extract XML from an otherwise plain text log file
sed -n 's/^model name[ \t]*: *//p' /proc/cpuinfo									    |	# List the CPU model name
sed -e "s/^127.0.1.1 $(hostname).novalocal/127.0.1.1/g" /etc/hosts							    |	# Edit hosts file to remove "foo.novalocal" from it where foo is the hostname of a new VM
sed 's!<[Aa] *href*=*"\([^"]*\)"*>\([^<>]*\)</[Aa]>!\1,\2!g' links.html							    |	# convert html links into plain text with link anchor
sed '1d;$d' filename													    |	# delete first and last line from file
sed -i -e '/^#[^!].*/d' -e 's/\(.*[^!]\)#.*[^}]/\1/' <filename>								    |	# Remove comments from files
sed 's/[ \t]*$//' < emails.txt | tr 'A-Z' 'a-z' | sort | uniq > emails_sorted.txt					    |	# Sort a one-per-line list of email address, weeding out duplicates
sed -e '/\\$/{:0;N;s/\\\n//;t0}'											    |	# Join lines split with backslash at the end
EOF
