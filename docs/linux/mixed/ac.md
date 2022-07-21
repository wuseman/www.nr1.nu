# ac

##### print statistics about users' connect time

   ac  -d | awk '{h=int($NF); m=($NF-h)*60; s=int((m-int(m))*60); m=int(m); print $0" = "h"h "m"m "s"s "}'

##### Find invalid \uxxxx Unicode escape sequences in Java source code

   ac k java '\\u.?.?.?[^0-9a-fA-F]'

##### Print the current battery status

   ac pi | cut -d '%' -f1 | cut -d ',' -f2

##### grep 'hoge' **/*  => Argument list too long

   ac k hoge .

##### Execute AccuRev pop command to retrieve missing files from a workspace.

   ac curev stat -M -fl | awk '{print "\"" $0 "\""}' | xargs accurev pop

##### Check whether laptop is running on battery or cable

   ac pi -b

##### print battery , thermal , and cooling info

   ac pi -tc

##### Display time of accounts connection on a system

   ac  -p

##### On Screen micro display for battery and CPU temperature. nifty, small, omnipresent

   ac pi -t | osd_cat -p bottom

##### Search recursively to find a word or phrase in certain file types, such as C code

   ac k "search pharse" *.[ch]

##### Use Perl like grep

   ac k; pcregrep

##### Display laptop battery information

   ac pi -V

##### Opens files containing search term in vim with search term highlighted

   ac k-open () { local x="$(ack -l $* | xargs)"; if [[ -n $x ]]; then eval vim -c "/$*[-1] $x"; else echo "No files found"; fi }

##### Check whether laptop is running on battery or cable

   ac pi -a

##### Search for a <pattern> string inside all files in the current directory

   ac k <pattern>

##### security find-generic-password -ga "ROUTERNAME" | grep "password:"

   ac cess wifi password through terminal (osx)

##### find str in  in a directory which file extension is .php

   ac k type=php <string>

##### Colorized grep in less

   ac k pager='less -r'

##### Search through files, ignoring .svn

   ac k -ai 'searchterm'

##### List all background image URLs referenced in CSS files in directory and subdirectories

   ac k -o -h nogroup css 'url\((.*)\)' output "\$1"

##### Show which user has the most accumulated login time

   ac  -p | sort -nk 2 | awk '/total/{print x};{x=$1}'

##### Check whether laptop is running on battery or cable

   ac pi -b | sed 's/,//g' | awk '{print $3}'

##### Ignore a specific subdir, instead of all subdirs, with ack-grep

   ac k -a -G '^(?!.*bar/data.*).*$' pattern

##### Check whether laptop is running on battery or cable

   ac pi -b

##### print battery , thermal , and cooling info

   ac pi -tc

##### Display time of accounts connection on a system

   ac  -p

##### On Screen micro display for battery and CPU temperature. nifty, small, omnipresent

   ac pi -t | osd_cat -p bottom

##### Search recursively to find a word or phrase in certain file types, such as C code

   ac k "search pharse" *.[ch]

##### Use Perl like grep

   ac k; pcregrep

##### Display laptop battery information

   ac pi -V

##### Opens files containing search term in vim with search term highlighted

   ac k-open () { local x="$(ack -l $* | xargs)"; if [[ -n $x ]]; then eval vim -c "/$*[-1] $x"; else echo "No files found"; fi }

##### Check whether laptop is running on battery or cable

   ac pi -a

##### Search for a <pattern> string inside all files in the current directory

   ac k <pattern>

##### security find-generic-password -ga "ROUTERNAME" | grep "password:"

   ac cess wifi password through terminal (osx)

##### find str in  in a directory which file extension is .php

   ac k type=php <string>

##### Colorized grep in less

   ac k pager='less -r'

##### Search through files, ignoring .svn

   ac k -ai 'searchterm'

##### List all background image URLs referenced in CSS files in directory and subdirectories

   ac k -o -h nogroup css 'url\((.*)\)' output "\$1"

##### Show which user has the most accumulated login time

   ac  -p | sort -nk 2 | awk '/total/{print x};{x=$1}'
