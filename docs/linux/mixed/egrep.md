# egrep

##### Print file excluding comments and blank lines

   egrep  -v '^$|^#' /etc/sysctl.conf

##### Identifying Xorg video driver in use

   egrep  -i " connected|card detect|primary dev" /var/log/Xorg.0.log

##### List of syscalls (for 32/64 bits systems)

   egrep  '__NR_' /usr/include/asm/unistd_`getconf -a | awk '$1~/^WORD/{print $2}'`.h | sed -e 's/^#define __NR_//' | column -t

##### Extract raw URLs from a file

   egrep  -ie "<*HREF=(.*?)>" index.html | awk -F\" '{print $2}' | grep ://

##### Find errors in your php website

   egrep  '(\[error\])+.*(PHP)+' /var/log/apache2/error.log

##### search for a pattern (regex) in all text files (ignoring binary files) in a directory tree

   egrep  -i "somepattern" `find . -type f -print`

##### Regex or

   egrep  '(expr1|expr2)' file

##### grep: find in files

   egrep  -in "this|that" *.dat

##### Display IPs accessing your Apache webserver.

   egrep  -o '\b[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\b' access.log | sort -u

##### Match a URL

   egrep  'https?://([[:alpha:]]([-[:alnum:]]+[[:alnum:]])*\.)+[[:alpha:]]{2,3}(:\d+)?(/([-\w/_\.]*(\?\S+)?)?)?'

##### Show the power of the home row on the Dvorak Keyboard layout

   egrep  -ci ^[aoeuidhtns-]+$ /usr/share/dict/words

##### Filter IPs out of files

   egrep  -o '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' file.txt

##### display contents of a file w/o any comments or blank lines

   egrep  '^[^#]' some_file

##### Colorize matching string without skipping others

   egrep  color=auto 'usb|' /var/log/messages

##### last.fm rss parser

   egrep  "<link>|<title>" recenttracks.rss | awk 'ORS=NR%2?" ":"\n"' | awk -F "</title>" '{print $2, $1}' | sed -e 's/\<link\>/\<li\>\<a href\=\"/' -e 's/\<\/link\>/\">/' -e 's/\<title\>//' -e 's/$/\<\/a\>\<\/li\>/g' -e '1,1d' -e 's/^[ \t]*//'

##### Extract raw URLs from a file

   egrep  -ie "<*HREF=(.*?)>" index.html | cut -d "\"" -f 2 | grep ://

##### Prints a file leaving out all blank lines and comment-only lines

   egrep  -v "^\s*(#|$)" myfile.cfg

##### Show a config file without comments

   egrep  -v "^$|^[[:space:]]*#" /etc/some/file

##### Show a script or config file without comments or blank lines

   egrep  -v "^$|^#" file

##### Filter out all blank or commented (starting with #) lines

   egrep  -v "(^#|^\b*$)"

##### Clean config from # and empty strings

   egrep  -v  '(\t)?#.*|^$' /etc/apache2/sites-available/default

##### Grep auth log and print ip of attackers

   egrep  'Failed password for invalid' /var/log/secure | awk '{print $13}' | uniq

##### Look up a unicode character by name

   egrep  -i "^[0-9a-f]{4,} .*$*" $(locate CharName.pm) | while read h d; do /usr/bin/printf "\U$(printf "%08x" 0x$h)\tU+%s\t%s\n" $h "$d"; done

##### Count relevant lines of shell code in a git repo

   egrep  -v '^\s*($|#)' $(git grep -l '#!/bin/.*sh' *) | wc -l

##### Check if you need to run LaTeX more times to get the refefences right

   egrep  "(There were undefined references|Rerun to get (cross-references|the bars) right)" texfile.log

##### Check spelling of word using regex

   egrep  "^compat.bility$" /usr/share/dict/words

##### Get Unique Hostnames from Apache Config Files

   egrep  'ServerAlias|ServerName' /etc/apache2/sites-enabled/*.conf | awk '{printf "%s\t%s\n",$2,$3}' | sed 's/www.//' | sort | uniq

##### sum and average of requests responses times or sizes in Apache2 access log

   egrep  '.*(("STATUS)|("HEAD)).*' http_access.2012.07.18.log | awk '{sum+=$11; ++n} END {print "Tot="sum"("n")";print "Avg="sum/n}'

##### check virt is available

   egrep  -c '(vmx|svm)' /proc/cpuinfo

##### Escape literal string for inclusion in an egrep regex

   egrep _escape() {  echo "$1" |sed -re 's/([\\.*+?(|)^$[])/\\\1/g' -e 's/\{/[{]/g';  }

##### Search for java explicit incrementation

   egrep  "([_a-zA-Z][_a-zA-Z0-9]*) *= *\1 *[*/+-] *[0-9]+ *;"

##### grep or

   egrep  'string1|string2' file

##### Finds all of the mailers being used in your rails app

   egrep  -r '(render_message|multipart).*('`find app/views -name '*.erb' | grep mailer | sed -e 's/\..*//' -e 's/.*\///' | uniq | xargs | sed 's/ /|/g'`')' app/models

##### grep for 2 words existing on the same line

   egrep  'word1.*word2' color   /path/file.log |more

##### Regex or

   egrep  expr1\|expr2 file

##### grep on IP range from maillog

   egrep  '183\.([0-9]|(1[0-6]|2[0-3]))' -J /var/log/maillog*

##### Use grep to get multiple patterns.

   egrep  -wi color 'warning|error|critical'

##### Show a script or config file without comments

   egrep  -v "^[[:blank:]]*($|#|//|/\*| \*|\*/)"  somefile

##### get IPs with a DHCP lease

   egrep  "^lease" /var/lib/dhcp/db/dhcpd.leases |awk '{ print $2 }'

##### Display IPs accessing your Apache webserver.

   egrep  -o '\b[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\b' access.log | sort -u

##### Match a URL

   egrep  'https?://([[:alpha:]]([-[:alnum:]]+[[:alnum:]])*\.)+[[:alpha:]]{2,3}(:\d+)?(/([-\w/_\.]*(\?\S+)?)?)?'

##### Show the power of the home row on the Dvorak Keyboard layout

   egrep  -ci ^[aoeuidhtns-]+$ /usr/share/dict/words

##### Filter IPs out of files

   egrep  -o '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' file.txt

##### display contents of a file w/o any comments or blank lines

   egrep  '^[^#]' some_file

##### Colorize matching string without skipping others

   egrep  color=auto 'usb|' /var/log/messages

##### last.fm rss parser

   egrep  "<link>|<title>" recenttracks.rss | awk 'ORS=NR%2?" ":"\n"' | awk -F "</title>" '{print $2, $1}' | sed -e 's/\<link\>/\<li\>\<a href\=\"/' -e 's/\<\/link\>/\">/' -e 's/\<title\>//' -e 's/$/\<\/a\>\<\/li\>/g' -e '1,1d' -e 's/^[ \t]*//'

##### Extract raw URLs from a file

   egrep  -ie "<*HREF=(.*?)>" index.html | cut -d "\"" -f 2 | grep ://

##### Prints a file leaving out all blank lines and comment-only lines

   egrep  -v "^\s*(#|$)" myfile.cfg

##### Show a config file without comments

   egrep  -v "^$|^[[:space:]]*#" /etc/some/file

##### Show a script or config file without comments or blank lines

   egrep  -v "^$|^#" file

##### Filter out all blank or commented (starting with #) lines

   egrep  -v "(^#|^\b*$)"

##### Clean config from # and empty strings

   egrep  -v  '(\t)?#.*|^$' /etc/apache2/sites-available/default

##### Grep auth log and print ip of attackers

   egrep  'Failed password for invalid' /var/log/secure | awk '{print $13}' | uniq

##### Look up a unicode character by name

   egrep  -i "^[0-9a-f]{4,} .*$*" $(locate CharName.pm) | while read h d; do /usr/bin/printf "\U$(printf "%08x" 0x$h)\tU+%s\t%s\n" $h "$d"; done

##### Count relevant lines of shell code in a git repo

   egrep  -v '^\s*($|#)' $(git grep -l '#!/bin/.*sh' *) | wc -l

##### Check if you need to run LaTeX more times to get the refefences right

   egrep  "(There were undefined references|Rerun to get (cross-references|the bars) right)" texfile.log

##### Check spelling of word using regex

   egrep  "^compat.bility$" /usr/share/dict/words

##### Get Unique Hostnames from Apache Config Files

   egrep  'ServerAlias|ServerName' /etc/apache2/sites-enabled/*.conf | awk '{printf "%s\t%s\n",$2,$3}' | sed 's/www.//' | sort | uniq

##### sum and average of requests responses times or sizes in Apache2 access log

   egrep  '.*(("STATUS)|("HEAD)).*' http_access.2012.07.18.log | awk '{sum+=$11; ++n} END {print "Tot="sum"("n")";print "Avg="sum/n}'

##### check virt is available

   egrep  -c '(vmx|svm)' /proc/cpuinfo

##### Escape literal string for inclusion in an egrep regex

   egrep _escape() {  echo "$1" |sed -re 's/([\\.*+?(|)^$[])/\\\1/g' -e 's/\{/[{]/g';  }

##### Search for java explicit incrementation

   egrep  "([_a-zA-Z][_a-zA-Z0-9]*) *= *\1 *[*/+-] *[0-9]+ *;"

##### grep or

   egrep  'string1|string2' file

##### Finds all of the mailers being used in your rails app

   egrep  -r '(render_message|multipart).*('`find app/views -name '*.erb' | grep mailer | sed -e 's/\..*//' -e 's/.*\///' | uniq | xargs | sed 's/ /|/g'`')' app/models

##### grep for 2 words existing on the same line

   egrep  'word1.*word2' color   /path/file.log |more

##### Regex or

   egrep  expr1\|expr2 file
