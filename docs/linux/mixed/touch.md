# touch

##### Change file time stamp

   touch  -t [[CC]AA]MMJJhhmm[.ss]

##### Force file system check

   touch  /forcefsk

##### Find files/directories newer than X

   touch  -t 197001010000 ./tmp && find . -newer ./tmp && rm -f ./tmp

##### rename multiple files with different name, eg converting all txt to csv

   touch  file{1..10}.txt ; ls *txt| sed -e "p;s/\.txt$/\.csv/"|xargs -n2 mv

##### Change/Modify timestamp

   touch  date "2010-01-05" /tmp/filename

##### create any empty file in the current path

   touch  <filename>

##### Create a new file

   touch  /path/to/file.txt

##### Create a new file

   touch  file

##### creates balls

   touch  balls

##### shush MOTD

   touch  ~/.hushlogin

##### convert a web page into a pdf

   touch  $2;firefox -print $1 -printmode PDF -printfile $2

##### Find files that were modified by a given command

   touch  /tmp/file ; $EXECUTECOMMAND ; find /path -newer /tmp/file

##### Lists all files and directories with modified time newer than a given date

   touch  -t "YYYYMMDDhhmm.ss" ~/.ts ; find . -newer ~/.ts

##### creeate file named after actual date

   touch  file-$(date +%Y%m%d)

##### Create a listing of all possible permissions and their octal representation.

   touch  /tmp/$$;for N in `seq -w  0 7777|grep -v [89]`; do    chmod $N /tmp/$$;    P=`ls -l /tmp/$$ | awk '{print $1}'`; echo $N $P; done;rm /tmp/$$

##### Prevent non-root users from logging in

   touch  /etc/nologin

##### remove files and directories with acces time older than a given date

   touch  -t "YYYYMMDDhhmm.ss" dummy ; find . -anewer dummy

##### Set access and modification timestamps of a file using another one as reference

   touch  -r "$FILE1" "$FILE2"

##### Copy modification timestamp from one file to another.

   touch  -r "source_file" "destination_file"

##### List all files modified by a command

   touch  .tardis; the command ; find . -newer .tardis; rm .tardis;

##### Get File Names from touch commands

   touch  files.txt; cat reorder_files.sh | while read line; do x=`echo $line | sed 's/touch \([a-z0-9\.]\+.*.pdf\);.*/\1/'`; echo $x >> files.txt ; done;

##### find files in a date range

   touch  -t 201001010000 begin; touch -t 201012312359.59 end; find . -newer begin -a ! -newer end

##### Generate RSA private key and self-signed certificate

   touch  pk.pem && chmod 600 pk.pem && openssl genrsa -out pk.pem 2048 && openssl req -new -batch -key pk.pem | openssl x509 -req -days 365 -signkey pk.pem -out cert.pem

##### Change timestamp on a file

   touch  -amct [[CC]YY]MMDDhhmm[.ss] FILE

##### Create a bunch of dummy files for testing

   touch  {1..10}.txt

##### Change/Modify timestamp interactively

   touch  -d $(zenity calendar date-format=%F) filename

##### Create multiple files in a single command

   touch  file{1,2,3,4,5}.sh

##### convert a web page into a png

   touch  $2;firefox -print $1 -printmode PNG -printfile $2

##### find files between specific date/times and move them to another folder

   touch  -t 201208211200 first ; touch -t 201208220100 last ; find /path/to/files/ -newer first ! -newer last | xargs -ifile mv -fv file /path/to/destination/ ; rm first; rm last;

##### Reset the time stamps on a file

   touch  -acm yyyymmddhhMM.ss [file]

##### Empty a file

   touch  filename

##### Change/Modify timestamp

   touch  date "2010-01-05" /tmp/filename

##### shush MOTD

   touch  ~/.hushlogin

##### convert a web page into a pdf

   touch  $2;firefox -print $1 -printmode PDF -printfile $2

##### Find files that were modified by a given command

   touch  /tmp/file ; $EXECUTECOMMAND ; find /path -newer /tmp/file

##### Lists all files and directories with modified time newer than a given date

   touch  -t "YYYYMMDDhhmm.ss" ~/.ts ; find . -newer ~/.ts

##### creeate file named after actual date

   touch  file-$(date +%Y%m%d)

##### Create a listing of all possible permissions and their octal representation.

   touch  /tmp/$$;for N in `seq -w  0 7777|grep -v [89]`; do    chmod $N /tmp/$$;    P=`ls -l /tmp/$$ | awk '{print $1}'`; echo $N $P; done;rm /tmp/$$

##### Prevent non-root users from logging in

   touch  /etc/nologin

##### remove files and directories with acces time older than a given date

   touch  -t "YYYYMMDDhhmm.ss" dummy ; find . -anewer dummy

##### Set access and modification timestamps of a file using another one as reference

   touch  -r "$FILE1" "$FILE2"

##### Copy modification timestamp from one file to another.

   touch  -r "source_file" "destination_file"

##### List all files modified by a command

   touch  .tardis; the command ; find . -newer .tardis; rm .tardis;

##### Get File Names from touch commands

   touch  files.txt; cat reorder_files.sh | while read line; do x=`echo $line | sed 's/touch \([a-z0-9\.]\+.*.pdf\);.*/\1/'`; echo $x >> files.txt ; done;

##### find files in a date range

   touch  -t 201001010000 begin; touch -t 201012312359.59 end; find . -newer begin -a ! -newer end

##### Generate RSA private key and self-signed certificate

   touch  pk.pem && chmod 600 pk.pem && openssl genrsa -out pk.pem 2048 && openssl req -new -batch -key pk.pem | openssl x509 -req -days 365 -signkey pk.pem -out cert.pem

##### Change timestamp on a file

   touch  -amct [[CC]YY]MMDDhhmm[.ss] FILE

##### Create a bunch of dummy files for testing

   touch  {1..10}.txt

##### Change/Modify timestamp interactively

   touch  -d $(zenity calendar date-format=%F) filename

##### Create multiple files in a single command

   touch  file{1,2,3,4,5}.sh

##### convert a web page into a png

   touch  $2;firefox -print $1 -printmode PNG -printfile $2
