# ack

##### Find invalid \uxxxx Unicode escape sequences in Java source code

   ack  java '\\u.?.?.?[^0-9a-fA-F]'

##### grep 'hoge' **/*  => Argument list too long

   ack  hoge .

##### Search recursively to find a word or phrase in certain file types, such as C code

   ack  "search pharse" *.[ch]

##### Use Perl like grep

   ack ; pcregrep

##### Opens files containing search term in vim with search term highlighted

   ack -open () { local x="$(ack -l $* | xargs)"; if [[ -n $x ]]; then eval vim -c "/$*[-1] $x"; else echo "No files found"; fi }

##### Search for a <pattern> string inside all files in the current directory

   ack  <pattern>

##### find str in  in a directory which file extension is .php

   ack  type=php <string>

##### Colorized grep in less

   ack  pager='less -r'

##### Search through files, ignoring .svn

   ack  -ai 'searchterm'

##### List all background image URLs referenced in CSS files in directory and subdirectories

   ack  -o -h nogroup css 'url\((.*)\)' output "\$1"

##### Ignore a specific subdir, instead of all subdirs, with ack-grep

   ack  -a -G '^(?!.*bar/data.*).*$' pattern

##### Search recursively to find a word or phrase in certain file types, such as C code

   ack  "search pharse" *.[ch]

##### Use Perl like grep

   ack ; pcregrep

##### Opens files containing search term in vim with search term highlighted

   ack -open () { local x="$(ack -l $* | xargs)"; if [[ -n $x ]]; then eval vim -c "/$*[-1] $x"; else echo "No files found"; fi }

##### Search for a <pattern> string inside all files in the current directory

   ack  <pattern>

##### find str in  in a directory which file extension is .php

   ack  type=php <string>

##### Colorized grep in less

   ack  pager='less -r'

##### Search through files, ignoring .svn

   ack  -ai 'searchterm'

##### List all background image URLs referenced in CSS files in directory and subdirectories

   ack  -o -h nogroup css 'url\((.*)\)' output "\$1"
