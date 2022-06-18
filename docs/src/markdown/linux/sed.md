# sed

Stream Editor for filtering and transforming text, really handy one-liners for SED


### Method 0: Insert a new string above and below matched string

    cat curl.md  |sed 's/    curl.*/```sh      \n&\n```/g' > curl


### Method 1: Insert a new line before every match

    echo "hello world"|sed 's/world/\n&/g' 
    hello 
    world

### Method 2: Another method for above

    sed "s/regexp/\\`echo -e '\n\r'`/g"

### Method 3: Make a new line after every comma ','

    echo one,two,three | sed 's/,/\
    /g'
    one
    two
    three

### Method 4:

    echo pattern | sed -E -e $'s/^(pattern)/\\\n\\1/'

    pattern

### Method 5:
    
    echo 'foobar' | sed -r 's/(bar)/\n\1/;'

### Method 6:

    echo "Hello" | sed -e 's/Hello/\0\ntmow/g'

### Replace 2 words with sans escaping

    echo "Hello World"| sed 's/\(Hello\)/World\1/g'
    World Hello

### Method 7, add '''sh above curl, good for writiing wikis for example

    echo "    curl" |sed 's/    curl/```sh\n&/;s/$/\n```/g'
    ```sh
    curl
    ```

### Double space a file

 sed G

 # double space a file which already has blank lines in it. Output file
 # should contain no more than one blank line between lines of text.
 sed '/^$/d;G'

 # triple space a file
 sed 'G;G'

 # undo double-spacing (assumes even-numbered lines are always blank)
 sed 'n;d'

NUMBERING:

 # number each line of a file (simple left alignment). Using a tab (see
 # note on '\t' at end of file) instead of space will preserve margins.
 sed = filename | sed 'N;s/\n/\t/'

 # number each line of a file (number on left, right-aligned)
 sed = filename | sed 'N; s/^/     /; s/ *\(.\{6,\}\)\n/\1  /'

 # number each line of file, but only print numbers if line is not blank
 sed '/./=' filename | sed '/./N; s/\n/ /'

 # count lines (emulates "wc -l")
 sed -n '$='

TEXT CONVERSION AND SUBSTITUTION:

 # IN UNIX ENVIRONMENT: convert DOS newlines (CR/LF) to Unix format
 sed 's/.$//'               # assumes that all lines end with CR/LF
 sed 's/^M$//'              # in bash/tcsh, press Ctrl-V then Ctrl-M
 sed 's/\x0D$//'            # gsed 3.02.80, but top script is easier

 # IN UNIX ENVIRONMENT: convert Unix newlines (LF) to DOS format
 sed "s/$/`echo -e \\\r`/"            # command line under ksh
 sed 's/$'"/`echo \\\r`/"             # command line under bash
 sed "s/$/`echo \\\r`/"               # command line under zsh
 sed 's/$/\r/'                        # gsed 3.02.80

 # IN DOS ENVIRONMENT: convert Unix newlines (LF) to DOS format
 sed "s/$//"                          # method 1
 sed -n p                             # method 2

 # IN DOS ENVIRONMENT: convert DOS newlines (CR/LF) to Unix format
 # Cannot be done with DOS versions of sed. Use "tr" instead.
 tr -d \r <infile >outfile            # GNU tr version 1.22 or higher

 # delete leading whitespace (spaces, tabs) from front of each line
 # aligns all text flush left
 sed 's/^[ \t]*//'                    # see note on '\t' at end of file

 # delete trailing whitespace (spaces, tabs) from end of each line
 sed 's/[ \t]*$//'                    # see note on '\t' at end of file

 # delete BOTH leading and trailing whitespace from each line
 sed 's/^[ \t]*//;s/[ \t]*$//'

 # insert 5 blank spaces at beginning of each line (make page offset)
 sed 's/^/     /'

 # align all text flush right on a 79-column width
 sed -e :a -e 's/^.\{1,78\}$/ &/;ta'  # set at 78 plus 1 space

 # center all text in the middle of 79-column width. In method 1,
 # spaces at the beginning of the line are significant, and trailing
 # spaces are appended at the end of the line. In method 2, spaces at
 # the beginning of the line are discarded in centering the line, and
 # no trailing spaces appear at the end of lines.
 sed  -e :a -e 's/^.\{1,77\}$/ & /;ta'                     # method 1
 sed  -e :a -e 's/^.\{1,77\}$/ &/;ta' -e 's/\( *\)\1/\1/'  # method 2

 # substitute (find and replace) "foo" with "bar" on each line
 sed 's/foo/bar/'             # replaces only 1st instance in a line
 sed 's/foo/bar/4'            # replaces only 4th instance in a line
 sed 's/foo/bar/g'            # replaces ALL instances in a line
 sed 's/\(.*\)foo\(.*foo\)/\1bar\2/' # replace the next-to-last case
 sed 's/\(.*\)foo/\1bar/'            # replace only the last case

 # substitute "foo" with "bar" ONLY for lines which contain "baz"
 sed '/baz/s/foo/bar/g'

 # substitute "foo" with "bar" EXCEPT for lines which contain "baz"
 sed '/baz/!s/foo/bar/g'

 # change "scarlet" or "ruby" or "puce" to "red"
 sed 's/scarlet/red/g;s/ruby/red/g;s/puce/red/g'   # most seds
 gsed 's/scarlet\|ruby\|puce/red/g'                # GNU sed only

 # reverse order of lines (emulates "tac")
 # bug/feature in HHsed v1.5 causes blank lines to be deleted
 sed '1!G;h;$!d'               # method 1
 sed -n '1!G;h;$p'             # method 2

 # reverse each character on the line (emulates "rev")
 sed '/\n/!G;s/\(.\)\(.*\n\)/&\2\1/;//D;s/.//'

 # join pairs of lines side-by-side (like "paste")
 sed '$!N;s/\n/ /'

 # if a line ends with a backslash, append the next line to it
 sed -e :a -e '/\\$/N; s/\\\n//; ta'

 # if a line begins with an equal sign, append it to the previous line
 # and replace the "=" with a single space
 sed -e :a -e '$!N;s/\n=/ /;ta' -e 'P;D'

 # add commas to numeric strings, changing "1234567" to "1,234,567"
 gsed ':a;s/\B[0-9]\{3\}\>/,&/;ta'                     # GNU sed
 sed -e :a -e 's/\(.*[0-9]\)\([0-9]\{3\}\)/\1,\2/;ta'  # other seds

 # add commas to numbers with decimal points and minus signs (GNU sed)
 gsed ':a;s/\(^\|[^0-9.]\)\([0-9]\+\)\([0-9]\{3\}\)/\1\2,\3/g;ta'

 # add a blank line every 5 lines (after lines 5, 10, 15, 20, etc.)
 gsed '0~5G'                  # GNU sed only
 sed 'n;n;n;n;G;'             # other seds

SELECTIVE PRINTING OF CERTAIN LINES:

 # print first 10 lines of file (emulates behavior of "head")
 sed 10q

 # print first line of file (emulates "head -1")
 sed q

 # print the last 10 lines of a file (emulates "tail")
 sed -e :a -e '$q;N;11,$D;ba'

 # print the last 2 lines of a file (emulates "tail -2")
 sed '$!N;$!D'

 # print the last line of a file (emulates "tail -1")
 sed '$!d'                    # method 1
 sed -n '$p'                  # method 2

 # print only lines which match regular expression (emulates "grep")
 sed -n '/regexp/p'           # method 1
 sed '/regexp/!d'             # method 2

 # print only lines which do NOT match regexp (emulates "grep -v")
 sed -n '/regexp/!p'          # method 1, corresponds to above
 sed '/regexp/d'              # method 2, simpler syntax

 # print the line immediately before a regexp, but not the line
 # containing the regexp
 sed -n '/regexp/{g;1!p;};h'

 # print the line immediately after a regexp, but not the line
 # containing the regexp
 sed -n '/regexp/{n;p;}'

 # print 1 line of context before and after regexp, with line number
 # indicating where the regexp occurred (similar to "grep -A1 -B1")
 sed -n -e '/regexp/{=;x;1!p;g;$!N;p;D;}' -e h

 # grep for AAA and BBB and CCC (in any order)
 sed '/AAA/!d; /BBB/!d; /CCC/!d'

 # grep for AAA and BBB and CCC (in that order)
 sed '/AAA.*BBB.*CCC/!d'

 # grep for AAA or BBB or CCC (emulates "egrep")
 sed -e '/AAA/b' -e '/BBB/b' -e '/CCC/b' -e d    # most seds
 gsed '/AAA\|BBB\|CCC/!d'                        # GNU sed only

 # print paragraph if it contains AAA (blank lines separate paragraphs)
 # HHsed v1.5 must insert a 'G;' after 'x;' in the next 3 scripts below
 sed -e '/./{H;$!d;}' -e 'x;/AAA/!d;'

 # print paragraph if it contains AAA and BBB and CCC (in any order)
 sed -e '/./{H;$!d;}' -e 'x;/AAA/!d;/BBB/!d;/CCC/!d'

 # print paragraph if it contains AAA or BBB or CCC
 sed -e '/./{H;$!d;}' -e 'x;/AAA/b' -e '/BBB/b' -e '/CCC/b' -e d
 gsed '/./{H;$!d;};x;/AAA\|BBB\|CCC/b;d'         # GNU sed only

 # print only lines of 65 characters or longer
 sed -n '/^.\{65\}/p'

 # print only lines of less than 65 characters
 sed -n '/^.\{65\}/!p'        # method 1, corresponds to above
 sed '/^.\{65\}/d'            # method 2, simpler syntax

 # print section of file from regular expression to end of file
 sed -n '/regexp/,$p'

 # print section of file based on line numbers (lines 8-12, inclusive)
 sed -n '8,12p'               # method 1
 sed '8,12!d'                 # method 2

 # print line number 52
 sed -n '52p'                 # method 1
 sed '52!d'                   # method 2
 sed '52q;d'                  # method 3, efficient on large files

 # beginning at line 3, print every 7th line
 gsed -n '3~7p'               # GNU sed only
 sed -n '3,${p;n;n;n;n;n;n;}' # other seds

 # print section of file between two regular expressions (inclusive)
 sed -n '/Iowa/,/Montana/p'             # case sensitive

SELECTIVE DELETION OF CERTAIN LINES:

 # print all of file EXCEPT section between 2 regular expressions
 sed '/Iowa/,/Montana/d'

 # delete duplicate, consecutive lines from a file (emulates "uniq").
 # First line in a set of duplicate lines is kept, rest are deleted.
 sed '$!N; /^\(.*\)\n\1$/!P; D'

 # delete duplicate, nonconsecutive lines from a file. Beware not to
 # overflow the buffer size of the hold space, or else use GNU sed.
 sed -n 'G; s/\n/&&/; /^\([ -~]*\n\).*\n\1/d; s/\n//; h; P'

 # delete the first 10 lines of a file
 sed '1,10d'

 # delete the last line of a file
 sed '$d'

 # delete the last 2 lines of a file
 sed 'N;$!P;$!D;$d'

 # delete the last 10 lines of a file
 sed -e :a -e '$d;N;2,10ba' -e 'P;D'   # method 1
 sed -n -e :a -e '1,10!{P;N;D;};N;ba'  # method 2

 # delete every 8th line
 gsed '0~8d'                           # GNU sed only
 sed 'n;n;n;n;n;n;n;d;'                # other seds

 # delete ALL blank lines from a file (same as "grep '.' ")
 sed '/^$/d'                           # method 1
 sed '/./!d'                           # method 2

 # delete all CONSECUTIVE blank lines from file except the first; also
 # deletes all blank lines from top and end of file (emulates "cat -s")
 sed '/./,/^$/!d'          # method 1, allows 0 blanks at top, 1 at EOF
 sed '/^$/N;/\n$/D'        # method 2, allows 1 blank at top, 0 at EOF

 # delete all CONSECUTIVE blank lines from file except the first 2:
 sed '/^$/N;/\n$/N;//D'

 # delete all leading blank lines at top of file
 sed '/./,$!d'

 # delete all trailing blank lines at end of file
 sed -e :a -e '/^\n*$/{$d;N;ba' -e '}'  # works on all seds
 sed -e :a -e '/^\n*$/N;/\n$/ba'        # ditto, except for gsed 3.02*

 # delete the last line of each paragraph
 sed -n '/^$/{p;h;};/./{x;/./p;}'

### SPECIAL APPLICATIONS:

remove nroff overstrikes (char, backspace) from man pages. The 'echo'
command may need an -e switch if you use Unix System V or bash shell.

```sh
 sed "s/.`echo \\\b`//g"    # double quotes required for Unix environment
 sed 's/.^H//g'             # in bash/tcsh, press Ctrl-V and then Ctrl-H
 sed 's/.\x08//g'           # hex expression for sed v1.5
```
 # get Usenet/e-mail message header
 sed '/^$/q'                # deletes everything after first blank line

 # get Usenet/e-mail message body
 sed '1,/^$/d'              # deletes everything up to first blank line

 # get Subject header, but remove initial "Subject: " portion
 sed '/^Subject: */!d; s///;q'

 # get return address header
 sed '/^Reply-To:/q; /^From:/h; /./d;g;q'

 # parse out the address proper. Pulls out the e-mail address by itself
 # from the 1-line return address header (see preceding script)
 sed 's/ *(.*)//; s/>.*//; s/.*[:<] *//'

 # add a leading angle bracket and space to each line (quote a message)
 sed 's/^/> /'

 # delete leading angle bracket & space from each line (unquote a message)
 sed 's/^> //'

 # remove most HTML tags (accommodates multiple-line tags)
 ```sh
 sed -e :a -e 's/<[^>]*>//g;/</N;//ba'
```

### Add one blank line between all of them with sed

```sh
sed -i '0~1 a\\' 
```

### Inserts one line every 3 rows.

```sh
sed -i '0~3 a\\' 
```

### Method 2: Inserts one line every 3 rows.

```sh
sed -i 'G;G;G' 
```

### Method 3: Inserts one line after every string and at end, make 2 empty lines
sed ':a;G;s/\n/&/1;Ta'


### Uppercasing First Letter of Words Using SED

```sh
echo -e "wuseman" | sed -r 's/\<./\U&/g'
```

### Colorize a word
```
echo START|sed ''/START/s//`printf "\033[32mSTART\033[0m"`/''                           
```
### To print a specific line from a file
```sh
sed -n 5p <file>
```
### uncomment the lines where the word DEBUG is found
```sh
sed '/^#.*DEBUG.*/ s/^#//' $FILE
```
### convert a line to a space
```sh
sed     's/.*/ /'
```
### find which lines in a file are longer than N characters
```sh
sed -n "/^.\{73,\}/p" < /path/to/file
```
### Easy way to display yum repo priorities
```sh
sed -n -e "/^\[/h; /priority *=/{ G; s/\n/ /; s/ity=/ity = /; p }" /etc/yum.repos.d/*.repo | sort -k3n
```
### Get your Speed Dial urls
```sh
sed -n '/url/s#^.*url=\(.*://.*\)#\1#p' ~/.mozilla/firefox/*.[dD]efault/SDBackups/*.speeddial | sort | uniq
```
### Search and replace pipes for tabs in file with backup
```sh
sed -i.bak -e s/\|/\\t/g filepath.tsv
```
### Remove/replace newline characters.
```sh
sed ':a;N;$!ba;s/\n/ /g'
```
### Append the line # -*- coding: utf-8 -*- to a file
```sh
sed -i -e '1i \# -*- coding: utf-8 -*-' yourfile.py
```
### Append a new line "FOOBAR" in all files matching the glob*
```sh
sed -i '$a\FOOBAR' *
```
### Simply clean playlist
```sh
sed -e '/MP3$\|mp3$\|wma$\|flac$/!d' <filename_source> > <filename_destination>
```
### delete all leading whitespace from each line in file
```sh
sed 's/^[ \t]*//' < <file> > <file>.out; mv <file>.out <file>
```
### Sed file spacing
```sh
sed G
```
### Convert an UNIX file to a DOS file.
```sh
sed -i 's/$/\r/' file
```
### truncate files without output redirection or temporary file creation
```sh
sed -i 's/`head -n 500 foo.log`//' foo.log
```
### sed : using colons as separators instead of forward slashes
```sh
sed "s:/old/direcory/:/new/directory/:" <file>
```
### delete a particular line by line number in file
```sh
sed -i 3d ~/.ssh/known_hosts
```
### Convert windows text file to linux text document
```sh
sed 's/.$//' Win-file.txt
```
### Reverse DNS lookups
```sh
sed 's/\([0-9]*\)\.\([0-9]*\)\.\([0-9]*\)\.\([0-9]*\).in-addr.arpa domain name pointer\(.*\)\./\4.\3.\2.\1\5/' \ lookups.txt
```
### a find and replace within text-based files
```sh
sed -i 's/http:\/\/old\/new\///g' index.html
```
### Remove superfluous from conf file
```sh
sed -re '/^#/d ; s/#.*$// ; /^\s*$/d'
```
### to display number of lines in a file without using wc command
```sh
sed -n "$=" fileName
```
### Remove all leading and trailing slashes on each line of a text file
```sh
sed -e "s,/\+$,," -e "s,^/\+,," file.txt
```
### Extract all urls from the last firefox sessionstore.js file used.
```sh
sed -e 's/{"url":/\n&/g' ~/.mozilla/firefox/*/sessionstore.js | cut -d\" -f4
```
### prints line numbers
```sh
sed '/./=' infile | sed '/^/N; s/\n/ /'
```
### Bold matching string without skipping others
```sh
sed 's/pattern/^[[1m&^[[0m/g'
```
### Print line numbers
```sh
sed = <file> | sed 'N;s/\n/\t/'
```
### Print just line 4 from a textfile
```sh
sed '4!d'
```
### Remove trailing whitespaces (or tabs) from a text file
```sh
sed -i 's/[ \t]\+$//g' file.txt
```
### Remove CR LF from a text file
```sh
sed -i 's/\r\n//' file.txt
```
### turn url and link text into a hyperlink
```sh
sed "s/\([a-zA-Z]*\:\/\/[^,]*\),\(.*\)/\<a href=\"\1\"\>\2\<\/a\>/"
```
### Convert all tabs in a file to spaces, assuming the tab width is 2
```sh
sed -i 's/\t/  /g' yourfile
```
### convert Unix newlines to DOS newlines
```sh
sed 's/$'"/`echo \\\r`/"
```
### Print all lines containing the word 'jan' to a new file.
```sh
sed -n '/jan\|Jan\|JAN\|JAn\|jAn\|jAN\|jaN/p' data.txt > jan-only-data.txt
```
### put all lines in comment where de word DEBUG is found
```sh
sed -i 's/^.*DEBUG.*/#&/'  $file
```
### Extract a bash function
```sh
sed -n '/^function h\(\)/,/^}/p' script.sh
```
### Remove ( color / special / escape / ANSI ) codes, from text, with sed
```sh
sed "s,\x1B\[[0-9;]*[a-zA-Z],,g"
```
### List your largest installed packages (on Debian/Ubuntu)
```sh
sed -ne '/^Package: \(.*\)/{s//\1/;h;};/^Installed-Size:  \(.*\)/{s//\1/;G;s/\n/ /;p;}' /var/lib/dpkg/status | sort -rn
```
### Delete an hard disk entry in Virtualbox registry
```sh
sed -i '/Centos/d' VirtualBox.xml
```
### count the number of times you match a substring in a larger text file
```sh
sed ?s/[sub_str]/[sub_str]\n/g? [text_file] | wc -l
```
### Get rid of multiple spaces/tabs in a text file
```sh
sed -i "s/\s*/ /g;s/\s*$//" input_file
```
### list all available disks and disk partitions
```sh
sed 's/#.*//' /etc/fstab | column -t
```
### top 10 commands used
```sh
sed -e 's/ *$//' ~/.bash_history | sort | uniq -cd | sort -nr | head
```
### Display a block of text with AWK
```sh
sed -n /start_pattern/,/stop_pattern/p file.txt
```
### Show a script or config file without comments
```sh
sed -e '/^[[:blank:]]*#/d; s/[[:blank:]][[:blank:]]*#.*//'  -e '/^$/d' -e '/^\/\/.*/d' -e '/^\/\*/d;/^ \* /d;/^ \*\//d' /a/file/with/comments
```
### Print file content in reverse order
```sh
sed -n '1!G;h;$p' techie.txt
```
### Remove blank lines from a file and save output to new file
```sh
sed '/^$/d' file >newfile
```
### delete first X lines of a file
```sh
sed '1,55d'
```
### Get rid of multiple spaces/tabs in a text file
```sh
sed -i "s/\(\x09\{1,\}\)\|\( \{1,\}\)/ /g;s/\(\x09\{1,\}$\)\|\( \{1,\}$\)//g" brisati.txt
```
### empty set of files
```sh
sed -i -n '/%/p' *.php
```
### Remove a line from a file using sed (useful for updating known SSH server keys when they change)
```sh
sed '${LINE}d' ~/.ssh/known_host
```
### run vlc as root
```sh
sed -i 's/geteuid/getppid/g' /usr/bin/vlc
```
### convert DOS newlines to unix newlines
```sh
sed 's/$//'
```
### Backup a file before editing it.
```sh
    sedit() { cp "$*"{,.bk}; which $EDITOR > /dev/null && $EDITOR "$*" || vim "$*"; }
```
### optimized sed
```sh
sed  '/foo/ s/foo/foobar/g' <filename>
```
### Remove "#' from configuration files.
```sh
sed -i -e 's/^#$//g' /path/to/file
```
### Remove comments from files
```sh
sed -e '/^#/d' -e 's/#.*$//' in
```
### Remove all HTML tags from a file
```sh
sed "s/<[^>]\+>//g" file
```
### Update zone file Serial numbers
```sh
sed -i 's/20[0-1][0-9]\{7\}/'`date +%Y%m%d%I`'/g' *.db
```
### Remove a line in a text file. Useful to fix "ssh host key change" warnings
```sh
sed -i 8d ~/.ssh/known_hosts
```
### Remove a line from a file using sed (useful for updating known SSH server keys when they change)
```sh
sed -i '${LINE}d' ~/.ssh/known_host
```
### See the 10 programs the most used
```sh
sed -e "s/| /\n/g" ~/.bash_history | cut -d ' ' -f 1 | sort | uniq -c | sort -nr | head
```
### separate (emphasize) digital strings from other text
```sh
sed 's/[0-9]\+/ [&] /g'
```
### Print all lines between two line numbers
```sh
sed -n '3,6p' /path/to/file
```
### Insert a colon between every two digits
```sh
sed 's/\(..\)/\1:/g;s/:$//' mac_address_list
```
### Regex to remove HTML-Tags from a file
```sh
sed -e :a -e 's/<[^>]*>//g;/</N;//ba' index.html
```
### regex for turning a URL into a real hyperlink (i.e. for posting somewhere that accepts basic html)
```sh
sed "s/\([a-zA-Z]*\:\/\/[^ ]*\)\(.*\)/\<a href=\"\1\"\>\1\<\/a\>\2/"
```
### Shows cpu load in percent
```sh
sed -e 's/ .*//' -e 's/\.//' -e 's/^0*//' /proc/loadavg
```
### Apply substitution only on the line following a marker
```sh
sed '/MARKER/{N;s/THIS/THAT/}'
```
### Remove color codes (special characters) with sed
```sh
sed -r "s/\x1B\[([0-9]{1,3}((;[0-9]{1,3})*)?)?[m|K]//g
```
### Comment out a line in a file
```sh
sed -i '19375 s/^/#/' file
```
### Simplification of "sed 'your sed stuff here' file > file2 && mv file2 file"
```sh
sed -i 'your sed stuff here' file
```
### Remove color codes (special characters) with sed
```sh
sed -r "s:\x1B\[[0-9;]*[mK]::g"'
```
### Prepend a text to a file.
```sh
sed -i '1s/^/text to prepend\n/' file1
```
### Delete line number 10 from file
```sh
sed -i '10d' <somefile>
```
### remove empty lines
```sh
sed '/^$/d'
```
### Convert files from DOS line endings to UNIX line endings
```sh
sed -i 's/^M//' file
```
### remove leading blank lines
```sh
sed '/./,$!d'
```
### Remove color codes (special characters) with sed
```sh
sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g"
```
### Convert Unix newlines to DOS newlines
```sh
sed 's/$/<ctrl+v><ctrl+m>/'
```
### reverse order of file
```sh
sed '1!G;h;$!d'
```
### Remove the first character of each line in a file
```sh
sed "s/^.//g" files
```
### Delete Last Line of a File if it is Blank
```sh
sed '${/^$/d}' file
```
### Simple XML tag extract with sed
```sh
sed -n 's/.*<foo>\([^<]*\)<\/foo>.*/\1/p'
```
### Perform sed substitution on all but the last line of input
```sh
sed -e "$ ! s/$/,/"
```
### remove empty lines in place with backup
```sh
sed -e '/^$/d' -i .bak filewithempty.lines
```
### Print all the lines between 10 and 20 of a file
```sh
sed '10,20!d'
```
### Efficiently print a line deep in a huge log file
```sh
sed '1000000!d;q' < massive-log-file.log
```
### Extract title from HTML files
```sh
sed -n 's/.*<title>\(.*\)<\/title>.*/\1/ip;T;q' file.html
```
### grep -v with multiple patterns.
```sh
sed '/test/{/error\|critical\|warning/d}' somefile
```
### a find and replace within text-based files, for batch text replacement, not using perl
```sh
sed -i -e 's/SEARCH_STRING/REPLACE_STRING/g' `find . -iname 'FILENAME'`
```
### Go to the Nth line of file
```sh
sed -n 13p /etc/services
```
### Add thousand separator with sed, in a file or within pipe
```sh
sed -e :a -e 's/\(.*[0-9]\)\([0-9]\{3\}\)/\1,\2/;ta' filename
```
### append empty line after every line in file.txt
```sh
sed G file.txt
```
### Efficiently extract lines between markers
```sh
sed -n '/START/,${/STOP/q;p}'
```
### Change the homepage of Firefox
```sh
sed -i 's|\("browser.startup.homepage",\) "\(.*\)"|\1 "http://sliceoflinux.com"|' .mozilla/firefox/*.default/prefs.js
```
### sed edit-in-place using -a option instead of -i option (no tmp file created)
```sh
    sedi(){ case $# in [01]|[3-9])echo usage: sedi sed-cmds file ;;2)sed -a ''"$1"';H;$!d;g;' $2 |sed -a '/^$/d;w '"$2"''  ;;esac;}
```
### Remove a range of lines from a file
```sh
sed -i <file> -re '<start>,<end>d'
```
### Gives you what's between first string and second string included.
```sh
sed "s/^ABC/+ABC/" <file | sed "s/DEF$/DEF+/" | tr "\n" "~" | tr "+" "\n" | grep "^ABC"  | tr "~" "\n"
```
### Remove blank lines
```sh
sed '/^$/d'
```
### Deleting / Ignoring lines from the top of a file
```sh
sed 1d foo.txt
```
### Extract ip addresses with sed
```sh
sed -n  's/\([0-9]\{1,3\}\.\)\{3\}[0-9]\{1,3\}/\nip&\n/gp' ips.txt  | grep ip | sed 's/ip//'| sort | uniq
```
### remove lines which are longer than 255
```sh
sed -n '/^.\{255\}/!p'
```
### grep -v with multiple patterns.
```sh
sed -n '/test/{/error\|critical\|warning/d;p}' somefile
```
### Remove leading zeros in multiple columns with sed
```sh
sed 's/\b\(0*\)//g' filename
```
### output the contents of a file removing any empty lines including lines which contain only spaces or tabs.
```sh
sed -e '/^[<space><tab>]*$/d' somefile
```
### extract all urls from firefox sessionstore
```sh
sed -e "s/\[{/\n/g" -e "s/}, {/\n/g"  sessionstore.js | grep url | awk -F"," '{ print $1 }'| sed -e "s/url:\"\([^\"]*\)\"/\1/g" -e "/^about:blank/d" > session_urls.txt
```
### print contents of file from line 1 until we match regex
```sh
sed -n '1,/regex/p' filename
```
### preprocess code to be posted in comments on this site
```sh
sed 's/^/$ /' "$script" | xclip
```
### quick and dirty formatting for HTML code
```sh
sed -r 's_(/[^>]*?>)_\1\n_g' filename.html
```
### Do a search-and-replace in a file after making a backup
```sh
sed -i.bak 's/old/new/g' file
```
### Concatenates lines using sed
```sh
sed -e :a -e '/$/N;s/\n/ /;ta' <filename>
```
### Replace multiple spaces with semicolon
```sh
sed "s/\s\+/;/g;s/^ //;s/ $//" filename.csv
```
### Change every instance of OLD to NEW in file FILE
```sh
sed -i 's/OLD/NEW/g' FILE
```
### Convert DOS newlines (CR/LF) to Unix format
```sh
sed 's/^M$//' input.txt > output.txt
```
### Embed next line on the end of current line using sed
```sh
sed  'X{N;s/\n//;}' file.txt (where X is the current line)
```
### remove newlines from specific lines in a file using sed
```sh
sed -i '/pattern/N; s/\n//' filename
```
### Capitalize the first letter of every word
```sh
sed "s/\b\(.\)/\u\1/g"
```
### Show a config file without comments
```sh
sed -e 's/#.*//;/^\s*$/d'
```
### Top 20 commands in your bash history
```sh
sed -e 's/[;|][[:space:]]*/\n/g' .bash_history | cut delimiter=' ' fields=1 | sort | uniq count | sort numeric-sort reverse | head lines=20
```
### Update grub menu.lst
```sh
sed -e '/^$/d' -e '/^#/d' -e '/initrd/ a\ ' -e 's/hiddenmenu//g' -e '/^timeout/d' -e '/default/ a\timeout\t\t15' -e 's/quiet//g' -e 's/splash/rootdelay=60/g' /boot/grub/menu.lst > /boot/grub/menu.lst.new
```
### delete all leading and trailing whitespace from each line in file
```sh
sed 's/^[ \t]*//;s/[ \t]*$//' -i file
```
### Remove space and/or tab characters at the end of line
```sh
sed -i 's/[ \t]*$//' file
```
### delete all trailing whitespace from each line in file
```sh
sed -i 's/^\s\+//' <file>
```
### Display email addresses that have been sent to by a postfix server since the last mail log rollover
```sh
sed -n -e '/postfix\/smtp\[.*status=sent/s/^.*to=<\([^>]*\).*$/\1/p' /var/log/mail.log | sort -u
```
### Given process ID print its environment variables
```sh
sed 's/\o0/\n/g' /proc/INSERT_PID_HERE/environ
```
### Print only the odd lines of a file (GNU sed)
```sh
sed 2~2d
```
### Search replace with Ansible style timestamps
```sh
sed -i.$(date +%F@%T) 's/^LogLevel warn/LogLevel debug/g' httpd.conf
```
### Exclude inserting a table from a sql import
```sh
sed '/INSERT INTO `unwanted_table`/d' mydb.sql > reduced.sql
```
### Getting a domain from url, ex: very nice to get url from squid access.log
```sh
sed -e "s/[^/]*\/\/\([^@]*@\)\?\([^:/]*\).*/\2/"
```
### Multi line grep using sed and specifying open/close tags
```sh
sed '/'"<opening tag>"'/,/'"<closing tag>"'/{/'"<closing tag>"'/d;p};d' "<file>"
```
### SED - Substitute string in next line
```sh
sed -i.backup '/patter/{n;s/foo/bar/g}' file
```
### remove repeated pairs of characters e.g. "xtxtxtxt" will become "xt"
```sh
sed -ru 's/(..)\1{2,}/\1/g'
```
### Delete all empty/blank lines from text file & output to file
```sh
sed '/^$/d' /tmp/data.txt > /tmp/output.txt
```
### Fix subtitle timing (for .sub files)
```sh
sed -e 's/{/|/' -e 's/}{/|/' -e 's/}/|/' myFile.sub | awk -F "|" 'BEGIN {OFS =  "|"} { $2 = $2 - 600; $3 = $3 - 600; print $0 }' | sed -e 's/^|/{/' -e 's/\([0-9]\)|\([0-9]\)/\1}{\2/' -e 's/|/}/' >
```
### MySQL: Slice out a specific table from the output of mysqldump
```sh
sed -n "/^ Table structure for table \`departments\`/,/^ Table structure for table/p"
```
### Comment out all lines in a file beginning with string
```sh
sed -i 's/^\(somestring\)/#\1/' somefile.cfg
```
### commentate specified line of a file
```sh
sed -i '<line_no>s/\(.*\)/#\1/' <testfile>
```
### Remove multiple spaces
```sh
sed "s/^ *//;s/ *$//;s/ \{1,\}/ /g" filename.txt
```
### Simple Comment an entire file
```sh
sed -i 's/^/#/' FILENAME
```
### Convert a Python interactive session to a python script
```sh
sed  's/^\([^>.]\)/#\1/;s/^>>> //;s/^\.\.\./  /'
```
### Add a line from 1 file after every line of another (shuffle files together)
```sh
sed '/^/R addfile' targetfile > savefile
```
### print contents of file from first match of regex to end of file
```sh
sed -n '/regex/,$p' filename
```
### Compute the numeric sum of a file
```sh
sed i"+" file.txt | xargs echo 0 |bc
```
### Delete leading whitespace from the start of each line
```sh
sed 's/^[ \t]*//' input.txt
```
### Delete leading whitespace from the start of each line
```sh
sed 's/^\s*//' input.txt
```
### Search apache virtual host by pattern
```sh
sed -n '/^[^#]*<Virtual/{:l N; /<\/Virtual/!bl;}; /PATTERN/p' vhosts.conf
```
### Terminal - Show directories in the PATH, one per line with sed and bash3.X `here string'
```sh
sed 's/:/\n/g' <<<$PATH
```
### Remove a range of lines from a file
```sh
sed -i <start>,<end>d <filename>
```
### Every Nth line position # (SED)
```sh
sed -n '1,${p;n;n;}' foo > foo_every3_position1; sed -n '2,${p;n;n;}' foo > foo_every3_position2; sed -n '3,${p;n;n;}' foo > foo_every3_position3
```
### In-Place search/replace with datestamped backup
```sh
sed -i.`date +%Y%m%d` -e 's/pattern/replace' [filename]
```
### Replace spaces in a file with hyphens
```sh
sed -i 's/ /-/g' *
```
### Delete the specified line
```sh
sed -i 8d ~/.ssh/known_hosts
```
### Change host name
```sh
sed -i 's/oldname/newname/' /etc/hosts /etc/hostname
```
### Print just line 4 from a textfile
```sh
sed -n '4{p;q}'
```
### Print just line 4 from a textfile
```sh
sed -n '4p'
```
### Cleanup a (source) text file, removing trailing spaces/tabs and multiple consecutive blank lines
```sh
sed -i -e 's/[ \t]*$//;/^$/N;/\n$/D' sourcefiletocleanup
```
### Put uppercase letters in curly brackets in a BibTeX database
```sh
sed '/^\s*[^@%]/s=\([A-Z][A-Z]*\)\([^}A-Z]\|},$\)={\1}\2=g' literature.bib > output.bib
```
### Prepend a text to a file.
```sh
sed -i 's/^/ls -l /' output_files.txt
```
### Edit Ruby files within the current directory to use Ruby 1.9+ style symbol keys instead of rockets
```sh
sed -i "s/:\([a-zA-Z_]*\) =>/\1:/g" **/*.rb
```
### uncomment the lines where the word DEBUG is found
```sh
sed 's/^#\(.*DEBUG\)/\1/' $FILE
```
### Raspberry Pi serial number w/o leading zeros
```sh
sed '$!d s/.*: 0\+//' /proc/cpuinfo
```
### Remove color codes (special characters) with sed
```sh
sed -r "s/(\x1B|\033)(\(B|\[([0-9]{1,2}(;[0-9]{1,2})?)?[A-Z])//Ig"
```
### urldecoding
```sh
sed -e's/%\([0-9A-F][0-9A-F]\)/\\\\\x\1/g' | xargs echo -e
```
### Remove color codes (special characters) with sed
```sh
sed -r 's/'$(echo -e "\033")'\[[0-9]{1,2}(;([0-9]{1,2})?)?[mK]//g'
```
### Replace words with sed
```sh
sed /BEGIN/,/END/s/xxx/yyy/g input.txt
```
### Rebuild a Delimited File with a Unique Delimiter
```sh
sed 's/$/uniqueString/' file.old | sed 's/,/\n/g' | sed ':loop;/^\"[^\"]*$/N;s/\n/,/;/[^\"]$/t loop' | sed ':loop;N;s/\n/@/g;/uniqueString$/!b loop;s/uniqueString$//' > file.new
```
### delete all trailing whitespace from each line in file
```sh
sed 's/[ \t]*$//' < <file> > <file>.out; mv <file>.out <file>
```
### delete all leading and trailing whitespace from each line in file
```sh
sed 's/^[ \t]*//;s/[ \t]*$//' < <file> > <file>.out; mv <file>.out <file>
```
### Remove  \r (carriage return) in a file
```sh
sed -i 's/\r//g somefile.txt
```
### delete all leading and trailing whitespace from each line in file
```sh
sed 's/^\s*//;s/\s*$//' -i file
```
### Puts every word from a file into a new line
```sh
sed -r 's/[ \t\r\n\v\f]+/\^J/g' INFILE > OUTFILE
```
### Change your e-mail address in multiple files
```sh
sed -i 's/oldname@example.com/newname@example.com/g' `grep oldname@example.com -rl .`
```
### Delete all lines after the first match
```sh
sed -n -e '1,/match/p'
```
### Extract ip addresses with sed
```sh
sed -n 's/.*\(\(\(^\| \)[0-9]\{1,3\}\.\)\{1\}\([0-9]\{1,3\}\.\)\{2\}[0-9]\{1,3\}\) .*/\1/gp'
```
### sed replace string in whole files in folder
```sh
sed -i 's/SearchString/ReplaceString/g' views/*.php
```
### bash chop
```sh
sed 's/.$//'
```
### Printout a list of field numbers from a CSV file with headers as first line.
```sh
sed 's/,/\n/g;q' file.csv | nl
```
### Remove lines that contain a specific pattern($1) from file($2).
```sh
sed -i '/myexpression/d' /path/to/file.txt
```
### Convert Windows/DOS Text Files to Unix
```sh
sed -i 's/\r//' <filename>
```
### insert blank lines
```sh
sed G input.txt | cat -s
```
### Removes lines [range] from file
```sh
sed '1,5d'  /path/to/file
```
### more than 4 repeated characters to a single character
```sh
sed -ru 's/(.)\1{4,}/\1/g'
```
### Convert camelCase to underscores (camel_case)
```sh
sed -r 's/([a-z]+)([A-Z][a-z]+)/\1_\l\2/g' file.txt
```
### Tells which group you DON'T belong to (opposite of command "groups") - uses sed
```sh
sed -e "/$USER/d;s/:.*//g" /etc/group | sed -e :a -e '/$/N;s/\n/ /;ta'
```
### Remove blank lines from a file
```sh
sed -i.bak '/^[[:space:]]*$/d' file_name
```
### Convert ISO8601 dates to milliseconds since epoch
```sh
sed "s|\(2[0-9]\{3\}-[01][0-9]-[0-3][0-9]T[01][0-9]:[0-5][0-9]:[0-5][0-9].[0-9]\{3\}Z\)|$(date -d \1 +%s)000|g"
```
### Go to the Nth line of file
```sh
sed -n '15p' $file
```
### MySQL: Slice out a specific database (assumes existence of the USE statement) from mysqldump output
```sh
sed -n "/^USE \`employees\`/,/^USE \`/p"
```
### Remove color codes (special characters) with sed
```sh
sed -r "s@\^\[{1,2}([0-9]{1,2}(;[0-9]{1,2})?(;[0-9])?(m|K){1,2})?@@g"
```
### Only change the first occurrence of the pattern
```sh
sed -i "0,/enabled/{s|enabled=0|enabled=1|}" /etc/yum.repos.d/remi.repo
```
### Remove the first line containing 'match' from file
```sh
sed -i "$(grep -nm 1 match file|cut -f1 -d:)d" file
```
### replace deprecated php-function split in php files
```sh
sed -i s/split\(/explode\(/ whatever.php
```
### File without comments or blank lines.
```sh
sed 's/^[[:blank:]]*//; s/^#.*//; /^$/d' filename
```
### Comment out all lines in a file beginning with string
```sh
sed -i '/^somestring/ s/^/#/' somefile.cfg
```
### Remove color codes (special characters) with sed
```sh
sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g"
```
### Replace strings in files
```sh
sed -i -e 's/war/peace/g' *
```
### pick up 3 lines start at every 5th line of file.txt
```sh
sed -n '1~5{N;N;p}' file.txt
```
### Regular expression search pattern to remove the Datetime and Name when you paste from skype chat into your text editor
```sh
sed -i 's/^.*?].*?:\s//g' skype-chat-log.txt
```
### Analyze Apache Web Log Statistics starting on DATE x
```sh
sed -n '/05\/Dec\/2010/,$ p' access.log | goaccess -s -b
```
### Duplicate a line in a text file and replace part of the duplicated line
```sh
sed -i -e '/foo/p' -e 's/foo/barfoo/' file
```
### Format a password file for John the Ripper from Cisco configs  (Level 5)
```sh
sed -n 's/[ :]/_/g; s/^\(.\{1,\}\)_5_\($1$[$./0-9A-Za-z]\{27,31\}\)_*$/\1:\2/p' < cisco-device-config > passwd
```
### HTML esacaping with sed
```sh
sed 's/&/\&amp;/g; s/</\&lt;/g; s/>/\&gt;/g; s/"/\&quot;/g; s/'"'"'/\&#39;/g'
```
### Parse bookmarks and download youtube files
```sh
sed 's+href="\([^"]*\)"+\n\1\n+g' bookmarks.html | grep '^http' |clive
```
### Remove color codes (special characters) with sed
```sh
sed -E "s/"$'\E'"\[([0-9]{1,3}((;[0-9]{1,3})*)?)?[m|K]//g"
```
### Extract specific lines from a text file using Stream Editor (sed)
```sh
sed -n -e 1186,1210p A-small-practice.in
```
### Insert line(s) at top of file using sed
```sh
sed -i '1iI am a new line' file.txt
```
### Extract XML from an otherwise plain text log file
```sh
sed -n '/<Tag>/,/<\/Tag>/p' logfile.log
```
### List the CPU model name
```sh
sed -n 's/^model name[ \t]*: *//p' /proc/cpuinfo
```
### Edit hosts file to remove "foo.novalocal" from it where foo is the hostname of a new VM
```sh
sed -e "s/^127.0.1.1 $(hostname).novalocal/127.0.1.1/g" /etc/hosts
```
### convert html links into plain text with link anchor
```sh
sed 's!<[Aa] *href*=*"\([^"]*\)"*>\([^<>]*\)</[Aa]>!\1,\2!g' links.html
```
### delete first and last line from file
```sh
sed '1d;$d' filename
```
### Remove comments from files
```sh
sed -i -e '/^#[^!].*/d' -e 's/\(.*[^!]\)#.*[^}]/\1/' <filename>
```
### Sort a one-per-line list of email address, weeding out duplicates
```sh
sed 's/[ \t]*$//' < emails.txt | tr 'A-Z' 'a-z' | sort | uniq > emails_sorted.txt
```
### Create fortune's *.dat file from commandlinefu from saved preferite
```sh
sed ':a;N;$!ba;s/\n\n/\n%\n/g' input.txt >output
```
### Replace nelines with spaces
```sh
sed -e :a -e '$!N;s/\n/ /;ta'
```
### Revoke an existing user's group memberships and add another user to those same groups,
```sh
sed -i.awkbak "s/\([:,]\)oldspiderman/\1newspiderman/" /etc/group
```
### Uncomment line based on string match
```sh
sed -e '/4.2.2.2/ s/^;//' -i test.txt
```
### to display all characters except second last character from each line of a file
```sh
sed 's/^\(.*\)\(.\)\(.\)$/\1\3/' fileName
```
### Convert CSV files to TSV
```sh
sed 's/,/\t/g' report.csv > report.tsv
```
### Change time format in log, UNIX Timestamp to Human readable
```sh
sed -r 's/(\[|])//g' | awk ' { $1=strftime("%D %T",$1); print }'
```
### Remove lines ending or trailing slash (/)
```sh
sed -i 'g/text/d' <filename>
```
### Remove last x lines from file using sed
```sh
sed -n -e :a -i -e '1,5!{P;N;D;};N;ba' /etc/apt/sources.list
```
### Remove a range of lines from a file
```sh
sed -i 6,66d <filename>
```
### rsnapshot vim edit replaying space tabs
```sh
sed 's/ \+ /\t/g' /usr/local/etc/rsnapshot.conf >/tmp/snap.conf
```
### Join lines split with backslash at the end
```sh
sed -e '/\\$/{:0;N;s/\\\n//;t0}'
```
### To print a specific line from a file
```sh
sed -n 5p <file>
```
### uncomment the lines where the word DEBUG is found
```sh
sed '/^#.*DEBUG.*/ s/^#//' $FILE
```
### sed : using colons as separators instead of forward slashes
```sh
sed "s:/old/direcory/:/new/directory/:" <file>
```
### delete a particular line by line number in file
```sh
sed -i 3d ~/.ssh/known_hosts
```
### put all lines in comment where de word DEBUG is found
```sh
sed -i 's/^.*DEBUG.*/#&/'  $file
```
### Extract a bash function
```sh
sed -n '/^function h\(\)/,/^}/p' script.sh
```
### Remove ( color / special / escape / ANSI ) codes, from text, with sed
```sh
sed "s,\x1B\[[0-9;]*[a-zA-Z],,g"
```
### top 10 commands used
```sh
sed -e 's/ *$//' ~/.bash_history | sort | uniq -cd | sort -nr | head
```
### Display a block of text with AWK
```sh
sed -n /start_pattern/,/stop_pattern/p file.txt
```
### Remove comments from files
```sh
sed -e '/^#/d' -e 's/#.*$//' in
```
### Remove all HTML tags from a file
```sh
sed "s/<[^>]\+>//g" file
```
### Update zone file Serial numbers
```sh
sed -i 's/20[0-1][0-9]\{7\}/'`date +%Y%m%d%I`'/g' *.db
```
### Remove a line in a text file. Useful to fix "ssh host key change" warnings
```sh
sed -i 8d ~/.ssh/known_hosts
```
### Remove a line from a file using sed (useful for updating known SSH server keys when they change)
```sh
sed -i '${LINE}d' ~/.ssh/known_host
```
### See the 10 programs the most used
```sh
sed -e "s/| /\n/g" ~/.bash_history | cut -d ' ' -f 1 | sort | uniq -c | sort -nr | head
```
### separate (emphasize) digital strings from other text
```sh
sed 's/[0-9]\+/ [&] /g'
```
### Print all lines between two line numbers
```sh
sed -n '3,6p' /path/to/file
```
### Insert a colon between every two digits
```sh
sed 's/\(..\)/\1:/g;s/:$//' mac_address_list
```
### Regex to remove HTML-Tags from a file
```sh
sed -e :a -e 's/<[^>]*>//g;/</N;//ba' index.html
```
### regex for turning a URL into a real hyperlink (i.e. for posting somewhere that accepts basic html)
```sh
sed "s/\([a-zA-Z]*\:\/\/[^ ]*\)\(.*\)/\<a href=\"\1\"\>\1\<\/a\>\2/"
```
### Shows cpu load in percent
```sh
sed -e 's/ .*//' -e 's/\.//' -e 's/^0*//' /proc/loadavg
```
### Apply substitution only on the line following a marker
```sh
sed '/MARKER/{N;s/THIS/THAT/}'
```
### Remove color codes (special characters) with sed
```sh
sed -r "s/\x1B\[([0-9]{1,3}((;[0-9]{1,3})*)?)?[m|K]//g
```
### Comment out a line in a file
```sh
sed -i '19375 s/^/#/' file
```
### Simplification of "sed 'your sed stuff here' file > file2 && mv file2 file"
```sh
sed -i 'your sed stuff here' file
```
### Remove color codes (special characters) with sed
```sh
sed -r "s:\x1B\[[0-9;]*[mK]::g"'
```
### Prepend a text to a file.
```sh
sed -i '1s/^/text to prepend\n/' file1
```
### Delete line number 10 from file
```sh
sed -i '10d' <somefile>
```
### remove empty lines
```sh
sed '/^$/d'
```
### Convert files from DOS line endings to UNIX line endings
```sh
sed -i 's/^M//' file
```
### remove leading blank lines
```sh
sed '/./,$!d'
```
### Remove color codes (special characters) with sed
```sh
sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g"
```
### Convert Unix newlines to DOS newlines
```sh
sed 's/$/<ctrl+v><ctrl+m>/'
```
### reverse order of file
```sh
sed '1!G;h;$!d'
```
### Remove the first character of each line in a file
```sh
sed "s/^.//g" files
```
### Delete Last Line of a File if it is Blank
```sh
sed '${/^$/d}' file
```
### Simple XML tag extract with sed
```sh
sed -n 's/.*<foo>\([^<]*\)<\/foo>.*/\1/p'
```
### Perform sed substitution on all but the last line of input
```sh
sed -e "$ ! s/$/,/"
```
### remove empty lines in place with backup
```sh
sed -e '/^$/d' -i .bak filewithempty.lines
```
### Print all the lines between 10 and 20 of a file
```sh
sed '10,20!d'
```
### Efficiently print a line deep in a huge log file
```sh
sed '1000000!d;q' < massive-log-file.log
```
### Extract title from HTML files
```sh
sed -n 's/.*<title>\(.*\)<\/title>.*/\1/ip;T;q' file.html
```
### grep -v with multiple patterns.
```sh
sed '/test/{/error\|critical\|warning/d}' somefile
```
### a find and replace within text-based files, for batch text replacement, not using perl
```sh
sed -i -e 's/SEARCH_STRING/REPLACE_STRING/g' `find . -iname 'FILENAME'`
```
### Go to the Nth line of file
```sh
sed -n 13p /etc/services
```
### Add thousand separator with sed, in a file or within pipe
```sh
sed -e :a -e 's/\(.*[0-9]\)\([0-9]\{3\}\)/\1,\2/;ta' filename
```
### append empty line after every line in file.txt
```sh
sed G file.txt
```
### Efficiently extract lines between markers
```sh
sed -n '/START/,${/STOP/q;p}'
```
### Change the homepage of Firefox
```sh
sed -i 's|\("browser.startup.homepage",\) "\(.*\)"|\1 "http://sliceoflinux.com"|' .mozilla/firefox/*.default/prefs.js
```
### sed edit-in-place using -a option instead of -i option (no tmp file created)
```sh
    sedi(){ case $# in [01]|[3-9])echo usage: sedi sed-cmds file ;;2)sed -a ''"$1"';H;$!d;g;' $2 |sed -a '/^$/d;w '"$2"''  ;;esac;}
```
### Remove a range of lines from a file
```sh
sed -i <file> -re '<start>,<end>d'
```
### Gives you what's between first string and second string included.
```sh
sed "s/^ABC/+ABC/" <file | sed "s/DEF$/DEF+/" | tr "\n" "~" | tr "+" "\n" | grep "^ABC"  | tr "~" "\n"
```
### Remove blank lines
```sh
sed '/^$/d'
```
### Deleting / Ignoring lines from the top of a file
```sh
sed 1d foo.txt
```
### Extract ip addresses with sed
```sh
sed -n  's/\([0-9]\{1,3\}\.\)\{3\}[0-9]\{1,3\}/\nip&\n/gp' ips.txt  | grep ip | sed 's/ip//'| sort | uniq
```
### remove lines which are longer than 255
```sh
sed -n '/^.\{255\}/!p'
```
### grep -v with multiple patterns.
```sh
sed -n '/test/{/error\|critical\|warning/d;p}' somefile
```
### Remove leading zeros in multiple columns with sed
```sh
sed 's/\b\(0*\)//g' filename
```
### output the contents of a file removing any empty lines including lines which contain only spaces or tabs.
```sh
sed -e '/^[<space><tab>]*$/d' somefile
```
### extract all urls from firefox sessionstore
```sh
sed -e "s/\[{/\n/g" -e "s/}, {/\n/g"  sessionstore.js | grep url | awk -F"," '{ print $1 }'| sed -e "s/url:\"\([^\"]*\)\"/\1/g" -e "/^about:blank/d" > session_urls.txt
```
### print contents of file from line 1 until we match regex
```sh
sed -n '1,/regex/p' filename
```
### preprocess code to be posted in comments on this site
```sh
sed 's/^/$ /' "$script" | xclip
```
### quick and dirty formatting for HTML code
```sh
sed -r 's_(/[^>]*?>)_\1\n_g' filename.html
```
### Do a search-and-replace in a file after making a backup
```sh
sed -i.bak 's/old/new/g' file
```
### Concatenates lines using sed
```sh
sed -e :a -e '/$/N;s/\n/ /;ta' <filename>
```
### Replace multiple spaces with semicolon
```sh
sed "s/\s\+/;/g;s/^ //;s/ $//" filename.csv
```
### Change every instance of OLD to NEW in file FILE
```sh
sed -i 's/OLD/NEW/g' FILE
```
### Convert DOS newlines (CR/LF) to Unix format
```sh
sed 's/^M$//' input.txt > output.txt
```
### Embed next line on the end of current line using sed
```sh
sed  'X{N;s/\n//;}' file.txt (where X is the current line)
```
### remove newlines from specific lines in a file using sed
```sh
sed -i '/pattern/N; s/\n//' filename
```
### Capitalize the first letter of every word
```sh
sed "s/\b\(.\)/\u\1/g"
```
### Show a config file without comments
```sh
sed -e 's/#.*//;/^\s*$/d'
```
### Top 20 commands in your bash history
```sh
sed -e 's/[;|][[:space:]]*/\n/g' .bash_history | cut delimiter=' ' fields=1 | sort | uniq count | sort numeric-sort reverse | head lines=20
```
### Update grub menu.lst
```sh
sed -e '/^$/d' -e '/^#/d' -e '/initrd/ a\ ' -e 's/hiddenmenu//g' -e '/^timeout/d' -e '/default/ a\timeout\t\t15' -e 's/quiet//g' -e 's/splash/rootdelay=60/g' /boot/grub/menu.lst > /boot/grub/menu.lst.new
```
### delete all leading and trailing whitespace from each line in file
```sh
sed 's/^[ \t]*//;s/[ \t]*$//' -i file
```
### Remove space and/or tab characters at the end of line
```sh
sed -i 's/[ \t]*$//' file
```
### delete all trailing whitespace from each line in file
```sh
sed -i 's/^\s\+//' <file>
```
### Display email addresses that have been sent to by a postfix server since the last mail log rollover
```sh
sed -n -e '/postfix\/smtp\[.*status=sent/s/^.*to=<\([^>]*\).*$/\1/p' /var/log/mail.log | sort -u
```
### Given process ID print its environment variables
```sh
sed 's/\o0/\n/g' /proc/INSERT_PID_HERE/environ
```
### Print only the odd lines of a file (GNU sed)
```sh
sed 2~2d
```
### Search replace with Ansible style timestamps
```sh
sed -i.$(date +%F@%T) 's/^LogLevel warn/LogLevel debug/g' httpd.conf
```
### Exclude inserting a table from a sql import
```sh
sed '/INSERT INTO `unwanted_table`/d' mydb.sql > reduced.sql
```
### Getting a domain from url, ex: very nice to get url from squid access.log
```sh
sed -e "s/[^/]*\/\/\([^@]*@\)\?\([^:/]*\).*/\2/"
```
### Multi line grep using sed and specifying open/close tags
```sh
sed '/'"<opening tag>"'/,/'"<closing tag>"'/{/'"<closing tag>"'/d;p};d' "<file>"
```
### SED - Substitute string in next line
```sh
sed -i.backup '/patter/{n;s/foo/bar/g}' file
```
### remove repeated pairs of characters e.g. "xtxtxtxt" will become "xt"
```sh
sed -ru 's/(..)\1{2,}/\1/g'
```
### Delete all empty/blank lines from text file & output to file
```sh
sed '/^$/d' /tmp/data.txt > /tmp/output.txt
```
### Fix subtitle timing (for .sub files)
```sh
sed -e 's/{/|/' -e 's/}{/|/' -e 's/}/|/' myFile.sub | awk -F "|" 'BEGIN {OFS =  "|"} { $2 = $2 - 600; $3 = $3 - 600; print $0 }' | sed -e 's/^|/{/' -e 's/\([0-9]\)|\([0-9]\)/\1}{\2/' -e 's/|/}/' >
```
### MySQL: Slice out a specific table from the output of mysqldump
```sh
sed -n "/^ Table structure for table \`departments\`/,/^ Table structure for table/p"
```
### Comment out all lines in a file beginning with string
```sh
sed -i 's/^\(somestring\)/#\1/' somefile.cfg
```
### commentate specified line of a file
```sh
sed -i '<line_no>s/\(.*\)/#\1/' <testfile>
```
### Remove multiple spaces
```sh
sed "s/^ *//;s/ *$//;s/ \{1,\}/ /g" filename.txt
```
### Simple Comment an entire file
```sh
sed -i 's/^/#/' FILENAME
```
### Convert a Python interactive session to a python script
```sh
sed  's/^\([^>.]\)/#\1/;s/^>>> //;s/^\.\.\./  /'
```
### Add a line from 1 file after every line of another (shuffle files together)
```sh
sed '/^/R addfile' targetfile > savefile
```
### print contents of file from first match of regex to end of file
```sh
sed -n '/regex/,$p' filename
```
### Compute the numeric sum of a file
```sh
sed i"+" file.txt | xargs echo 0 |bc
```
### Delete leading whitespace from the start of each line
```sh
sed 's/^[ \t]*//' input.txt
```
### Delete leading whitespace from the start of each line
```sh
sed 's/^\s*//' input.txt
```
### Search apache virtual host by pattern
```sh
sed -n '/^[^#]*<Virtual/{:l N; /<\/Virtual/!bl;}; /PATTERN/p' vhosts.conf
```
### Terminal - Show directories in the PATH, one per line with sed and bash3.X `here string'
```sh
sed 's/:/\n/g' <<<$PATH
```
### Remove a range of lines from a file
```sh
sed -i <start>,<end>d <filename>
```
### Every Nth line position # (SED)
```sh
sed -n '1,${p;n;n;}' foo > foo_every3_position1; sed -n '2,${p;n;n;}' foo > foo_every3_position2; sed -n '3,${p;n;n;}' foo > foo_every3_position3
```
### In-Place search/replace with datestamped backup
```sh
sed -i.`date +%Y%m%d` -e 's/pattern/replace' [filename]
```
### Replace spaces in a file with hyphens
```sh
sed -i 's/ /-/g' *
```
### Delete the specified line
```sh
sed -i 8d ~/.ssh/known_hosts
```
### Change host name
```sh
sed -i 's/oldname/newname/' /etc/hosts /etc/hostname
```
### Print just line 4 from a textfile
```sh
sed -n '4{p;q}'
```
### Print just line 4 from a textfile
```sh
sed -n '4p'
```
### Cleanup a (source) text file, removing trailing spaces/tabs and multiple consecutive blank lines
```sh
sed -i -e 's/[ \t]*$//;/^$/N;/\n$/D' sourcefiletocleanup
```
### Put uppercase letters in curly brackets in a BibTeX database
```sh
sed '/^\s*[^@%]/s=\([A-Z][A-Z]*\)\([^}A-Z]\|},$\)={\1}\2=g' literature.bib > output.bib
```
### Prepend a text to a file.
```sh
sed -i 's/^/ls -l /' output_files.txt
```
### Edit Ruby files within the current directory to use Ruby 1.9+ style symbol keys instead of rockets
```sh
sed -i "s/:\([a-zA-Z_]*\) =>/\1:/g" **/*.rb
```
### uncomment the lines where the word DEBUG is found
```sh
sed 's/^#\(.*DEBUG\)/\1/' $FILE
```
### Raspberry Pi serial number w/o leading zeros
```sh
sed '$!d s/.*: 0\+//' /proc/cpuinfo
```
### Remove color codes (special characters) with sed
```sh
sed -r "s/(\x1B|\033)(\(B|\[([0-9]{1,2}(;[0-9]{1,2})?)?[A-Z])//Ig"
```
### urldecoding
```sh
sed -e's/%\([0-9A-F][0-9A-F]\)/\\\\\x\1/g' | xargs echo -e
```
### Remove color codes (special characters) with sed
```sh
sed -r 's/'$(echo -e "\033")'\[[0-9]{1,2}(;([0-9]{1,2})?)?[mK]//g'
```
### Replace words with sed
```sh
sed /BEGIN/,/END/s/xxx/yyy/g input.txt
```
### Rebuild a Delimited File with a Unique Delimiter
```sh
sed 's/$/uniqueString/' file.old | sed 's/,/\n/g' | sed ':loop;/^\"[^\"]*$/N;s/\n/,/;/[^\"]$/t loop' | sed ':loop;N;s/\n/@/g;/uniqueString$/!b loop;s/uniqueString$//' > file.new
```
### delete all trailing whitespace from each line in file
```sh
sed 's/[ \t]*$//' < <file> > <file>.out; mv <file>.out <file>
```
### delete all leading and trailing whitespace from each line in file
```sh
sed 's/^[ \t]*//;s/[ \t]*$//' < <file> > <file>.out; mv <file>.out <file>
```
### Remove  \r (carriage return) in a file
```sh
sed -i 's/\r//g somefile.txt
```
### delete all leading and trailing whitespace from each line in file
```sh
sed 's/^\s*//;s/\s*$//' -i file
```
### Puts every word from a file into a new line
```sh
sed -r 's/[ \t\r\n\v\f]+/\^J/g' INFILE > OUTFILE
```
### Change your e-mail address in multiple files
```sh
sed -i 's/oldname@example.com/newname@example.com/g' `grep oldname@example.com -rl .`
```
### Delete all lines after the first match
```sh
sed -n -e '1,/match/p'
```
### Extract ip addresses with sed
```sh
sed -n 's/.*\(\(\(^\| \)[0-9]\{1,3\}\.\)\{1\}\([0-9]\{1,3\}\.\)\{2\}[0-9]\{1,3\}\) .*/\1/gp'
```
### sed replace string in whole files in folder
```sh
sed -i 's/SearchString/ReplaceString/g' views/*.php
```
### bash chop
```sh
sed 's/.$//'
```
### Printout a list of field numbers from a CSV file with headers as first line.
```sh
sed 's/,/\n/g;q' file.csv | nl
```
### Remove lines that contain a specific pattern($1) from file($2).
```sh
sed -i '/myexpression/d' /path/to/file.txt
```
### Convert Windows/DOS Text Files to Unix
```sh
sed -i 's/\r//' <filename>
```
### insert blank lines
```sh
sed G input.txt | cat -s
```
### Removes lines [range] from file
```sh
sed '1,5d'  /path/to/file
```
### more than 4 repeated characters to a single character
```sh
sed -ru 's/(.)\1{4,}/\1/g'
```
### Convert camelCase to underscores (camel_case)
```sh
sed -r 's/([a-z]+)([A-Z][a-z]+)/\1_\l\2/g' file.txt
```
### Tells which group you DON'T belong to (opposite of command "groups") - uses sed
```sh
sed -e "/$USER/d;s/:.*//g" /etc/group | sed -e :a -e '/$/N;s/\n/ /;ta'
```
### Remove blank lines from a file
```sh
sed -i.bak '/^[[:space:]]*$/d' file_name
```
### Convert ISO8601 dates to milliseconds since epoch
```sh
sed "s|\(2[0-9]\{3\}-[01][0-9]-[0-3][0-9]T[01][0-9]:[0-5][0-9]:[0-5][0-9].[0-9]\{3\}Z\)|$(date -d \1 +%s)000|g"
```
### Go to the Nth line of file
```sh
sed -n '15p' $file
```
### MySQL: Slice out a specific database (assumes existence of the USE statement) from mysqldump output
```sh
sed -n "/^USE \`employees\`/,/^USE \`/p"
```
### Remove color codes (special characters) with sed
```sh
sed -r "s@\^\[{1,2}([0-9]{1,2}(;[0-9]{1,2})?(;[0-9])?(m|K){1,2})?@@g"
```
### Only change the first occurrence of the pattern
```sh
sed -i "0,/enabled/{s|enabled=0|enabled=1|}" /etc/yum.repos.d/remi.repo
```
### Remove the first line containing 'match' from file
```sh
sed -i "$(grep -nm 1 match file|cut -f1 -d:)d" file
```
### replace deprecated php-function split in php files
```sh
sed -i s/split\(/explode\(/ whatever.php
```
### File without comments or blank lines.
```sh
sed 's/^[[:blank:]]*//; s/^#.*//; /^$/d' filename
```
### Comment out all lines in a file beginning with string
```sh
sed -i '/^somestring/ s/^/#/' somefile.cfg
```
### Remove color codes (special characters) with sed
```sh
sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g"
```
### Replace strings in files
```sh
sed -i -e 's/war/peace/g' *
```
### pick up 3 lines start at every 5th line of file.txt
```sh
sed -n '1~5{N;N;p}' file.txt
```
### Regular expression search pattern to remove the Datetime and Name when you paste from skype chat into your text editor
```sh
sed -i 's/^.*?].*?:\s//g' skype-chat-log.txt
```
### Analyze Apache Web Log Statistics starting on DATE x
```sh
sed -n '/05\/Dec\/2010/,$ p' access.log | goaccess -s -b
```
### Duplicate a line in a text file and replace part of the duplicated line
```sh
sed -i -e '/foo/p' -e 's/foo/barfoo/' file
```
### Format a password file for John the Ripper from Cisco configs  (Level 5)
```sh
sed -n 's/[ :]/_/g; s/^\(.\{1,\}\)_5_\($1$[$./0-9A-Za-z]\{27,31\}\)_*$/\1:\2/p' < cisco-device-config > passwd
```
### HTML esacaping with sed
```sh
sed 's/&/\&amp;/g; s/</\&lt;/g; s/>/\&gt;/g; s/"/\&quot;/g; s/'"'"'/\&#39;/g'
```
### Parse bookmarks and download youtube files
```sh
sed 's+href="\([^"]*\)"+\n\1\n+g' bookmarks.html | grep '^http' |clive
```
### Remove color codes (special characters) with sed
```sh
sed -E "s/"$'\E'"\[([0-9]{1,3}((;[0-9]{1,3})*)?)?[m|K]//g"
```
### Extract specific lines from a text file using Stream Editor (sed)
```sh
sed -n -e 1186,1210p A-small-practice.in
```
### Insert line(s) at top of file using sed
```sh
sed -i '1iI am a new line' file.txt
```
### Extract XML from an otherwise plain text log file
```sh
sed -n '/<Tag>/,/<\/Tag>/p' logfile.log
```
### List the CPU model name
```sh
sed -n 's/^model name[ \t]*: *//p' /proc/cpuinfo
```
### Edit hosts file to remove "foo.novalocal" from it where foo is the hostname of a new VM
```sh
sed -e "s/^127.0.1.1 $(hostname).novalocal/127.0.1.1/g" /etc/hosts
```
### convert html links into plain text with link anchor
```sh
sed 's!<[Aa] *href*=*"\([^"]*\)"*>\([^<>]*\)</[Aa]>!\1,\2!g' links.html
```
### delete first and last line from file
```sh
sed '1d;$d' filename
```
### Remove comments from files
```sh
sed -i -e '/^#[^!].*/d' -e 's/\(.*[^!]\)#.*[^}]/\1/' <filename>
```
### Sort a one-per-line list of email address, weeding out duplicates
```sh
sed 's/[ \t]*$//' < emails.txt | tr 'A-Z' 'a-z' | sort | uniq > emails_sorted.txt
```

### Join lines split with backslash at the end
```sh
sed -e '/\\$/{:0;N;s/\\\n//;t0}' 
```
### Cut everything until last slash
```sh
sed 's:..*/::'                   
echo "${var##*/}"
```

```sh
# Colorize sed outpu
printf 'my ERROR color' | sed s/ERROR/`printf "\033[32mERROR\033[0m"`/ 
```

### Remove all space before a line
```sh
sed 'NUMq;d' 
```


### Print only NUM line
```sh
sed -e 's/^[ \t]*//' 
```
### Remove all leading and trailing whitespace from end of each line
```sh
sed 's/^[ \t]*//;s/[ \t]*$//'
```

### Print everything after /
```sh
sed 's:.*/::'
```

### Print everything after stalled
```sh
sed -n -e 's/^.*stalled: //p'
```

#### Cut all spaces infront of all words

```sh
sed -e 's/^[ \t]*//'   
```

### Make space very 3 word
```sh
echo "Youcaneasilydothisbyhighlightingyourcode." | sed 's/\(.\{3\}\)/\1 /g' 
```

### Cut after every third line
```sh
printf 'Line 1\nLine 2\nLine 3\nLine 4\nLine 5\n' | sed '$!N;$!N;s/\n/ /g'
```

### Print with tabular
```sh
head -4 /etc/passwd | tr : , | sed -e 's/^/| /' -e 's/,/,| /g' -e 's/$/,|/' | column -t -s,
```

### Resources

https://fabianlee.org/2018/10/28/linux-using-sed-to-insert-lines-before-or-after-a-match/