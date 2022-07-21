# strings

##### Show only printable characters and newlines from a file or input

   strings  -1 <file>

##### see who's using DOM storage a/k/a Web Storage, super cookies

   strings  ~/.mozilla/firefox/*/webappsstore.sqlite|grep -Eo "^.+\.:" |rev

##### easiest way to get kernel version without uname

   strings  /boot/kernel-file | grep 2.6

##### A fun thing to do with ram is actually open it up and take a peek. This command will show you all the string (plain text) values in ram

   strings  /dev/mem|less

##### Generate a random password 30 characters long

   strings  /dev/urandom | tr -cd '[:alnum:]' | fold -w 30 | head -n 1

##### Displays the version of the Adobe Flash plugin installed

   strings  /usr/lib/flashplugin-nonfree/libflashplayer.so |grep ^LNX

##### Convert all .weblock files in present directory  (Apple url) to a url on the stdout.

   strings  * |grep -v "Apple" |grep http |uniq |sed "s/<[^>]\+>//g"

##### Generate a random password 30 characters long

   strings  /dev/urandom | grep -o '[[:alnum:]]' | head -n 30 | tr -d '\n'; echo

##### Generate a random password 30 characters long

   strings  /dev/urandom | grep -o '[[:alnum:]]' | head -n 30 | tr -d '\n'; echo

##### look for a header reference in a shared library

   strings  libc-2.2.5.so | grep stat.h

##### Prefix file contents with filename

   strings  -f sample.txt

##### see who's using DOM storage a/k/a Web Storage, super cookies

   strings  ~/.mozilla/firefox/*/webappsstore.sqlite|grep -Eo "^.+\.:" |rev

##### A fun thing to do with ram is actually open it up and take a peek. This command will show you all the string (plain text) values in ram

   strings  /dev/mem|less

##### Generate a random password 30 characters long

   strings  /dev/urandom | tr -cd '[:alnum:]' | fold -w 30 | head -n 1

##### Displays the version of the Adobe Flash plugin installed

   strings  /usr/lib/flashplugin-nonfree/libflashplayer.so |grep ^LNX

##### Convert all .weblock files in present directory  (Apple url) to a url on the stdout.

   strings  * |grep -v "Apple" |grep http |uniq |sed "s/<[^>]\+>//g"

##### Generate a random password 30 characters long

   strings  /dev/urandom | grep -o '[[:alnum:]]' | head -n 30 | tr -d '\n'; echo

##### look for a header reference in a shared library

   strings  libc-2.2.5.so | grep stat.h
