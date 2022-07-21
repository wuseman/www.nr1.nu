# cat

##### pretend to be busy in office to enjoy a cup of coffee

   cat  /dev/urandom | hexdump -C | grep "ca fe"

##### pretend to be busy in office to enjoy a cup of coffee

   cat  /dev/urandom | hexdump -C | grep "ca fe"

##### Verify a file has not been tampered with since dpkg installation

   cat  /var/lib/dpkg/info/*.md5sums|grep usr/sbin/sshd|sed 's,usr,/usr,'|md5sum -c

##### cut log with row number,like from row number to another row number.

   cat  -n install | head -n 150 | tac | head -n 50 | tac

##### Send a local file via email

   cat  filename | uuencode filename | mail -s "Email subject" user@example.com

##### cut log from  line  50 to line 88

   cat  -n install.log | head -88 | tac | head -n $(( 88 - 50 )) | tac

##### Get all URL With Extension from File

   cat  File.txt | grep -io 'http://www.acme.com/a/files/.*.pdf'| uniq

##### Watch Star Wars via telnet

   cat  < /dev/tcp/towel.blinkenlights.nl/23

##### make non-printable characters visible

   cat  -A

##### See memory usage precentage

   cat  /proc/meminfo | awk -v"RS=~" '{print "Total:", $2/1024000, "GiB","|","In Use:",100-$5/$2*100"%"}'

##### Find which service was used by which port number

   cat  /etc/services  | egrep [[:blank:]]<port_number>/

##### append content of a file to itself

   cat  file | tee >> file

##### Copy your ssh public key to a server from a machine that doesn't have ssh-copy-id

   cat  ~/.ssh/id_rsa.pub | ssh tester@10.2.6.10 "mkdir -p ~/.ssh; cat >> ~/.ssh/authorized_keys; chmod 600 ~/.ssh/authorized_keys"

##### Copy your ssh public key to a server from a machine that doesn't have ssh-copy-id

   cat  ~/.ssh/id_rsa.pub | ssh tester@10.2.6.10 "mkdir -p ~/.ssh; cat >> ~/.ssh/authorized_keys; chmod 600 ~/.ssh/authorized_keys"

##### Parallel Apache Benchmark

   cat  url_list.txt | parallel -k 'ab -n 10000 -c 15 {}'

##### Join lines

   cat  file | tr "\n" " "

##### cat without comments

   cat  /etc/squid/squid.conf | grep -v '^#' | sed '/^$/d'

##### Retrieve Plesk Admin Password

   cat  /etc/psa/.psa.shadow

##### Send and streamming video to web

   cat  video.ogg | nc -l -p 4232 & wget http://users.bshellz.net/~bazza/?nombre=name -O - & sleep 10; mplayer http://users.bshellz.net/~bazza/datos/name.ogg

##### Get Memeory Info

   cat  /proc/meminfo

##### cat large file to clipboard

   cat  large.xml | xclip

##### Detect your computer's harddisk read speed without disk cache speed

   cat  /dev/sda | pv -r > /dev/null

##### Join lines

   cat  file | tr -d "\n"

##### Extract single table from a MySQL dump

   cat  dump.sql | sed -n -e '/Table structure for table .table1./,/Table structure for table .table2./p'

##### use curl to resume a failed download

   cat  file-that-failed-to-download.zip | curl -C - http://www.somewhere.com/file-I-want-to-download.zip >successfully-downloaded.zip

##### Load multiple sql script in mysql

   cat  schema.sql data.sql test_data.sql | mysql -u user password=pass dbname

##### Copy public ssh Id to new host withtout bash redirection

   cat  .ssh/id_dsa.pub | ssh <HOST> "mkdir -p .ssh && tee -a .ssh/authorized_keys"

##### Quickly create simple text file from command line w/o using vi/emacs

   cat  > {filename}  {your text}  [^C | ^D]

##### How many lines does  the passwd file have?

   cat   /etc/passwd | wc -l

##### Get the time from NIST.GOV

   cat  </dev/tcp/time.nist.gov/13

##### display portion of a file

   cat  -n FILE | grep -C3 "^[[:blank:]]\{1,5\}NUMBER[[:blank:]]"

##### dd if=/dev/null of=/dev/sda

   cat  /dev/zero > /dev/sda

##### removing those pesky malformed lines at the end of a text file..

   cat  -n $file | tail -n 100 &&  head -n number-of-lines-you-want-to-keep > newfile

##### prints line numbers

   cat  infile | while read str; do echo "$((++i)) - $str" ; done;

##### Merge tarballs

   cat  1.tar.gz 2.tar.gz | tar zxvif -

##### Easily find an old command you run

   cat  $HISTFILE | grep command

##### Parse logs for IP addresses and how many hits from each IP

   cat  "log" | grep "text to grep" | awk '{print $1}' |  sort -n | uniq -c | sort -rn | head -n 100

##### Per country GET report, based on access log. Easy to transform to unique IP

   cat  /var/log/nginx/access.log | grep -oe '^[0-9.]\+' | perl -ne 'system("geoiplookup $_")' | grep -v found | grep -oe ', [A-Za-z ]\+$' | sort | uniq -c | sort -n

##### CPU architecture details

   cat  /proc/cpuinfo

##### Remove color codes (special characters) with sed

   cat  input.txt | sed 's/\\\033[^a-zA-Z]*.//g'

##### sed - match numbers between 1-100

   cat  file | sed -n -r '/^100$|^[0-9]{1,2}$/p'

##### automate web search and open tabs in firefox

   cat  search_items.txt | while read i; do surfraw google -browser=firefox $i; done

##### Checks apache's access_log file, strips the search queries and shoves them up your e-mail

   cat  /var/log/httpd/access_log | grep q= | awk '{print $11}' | awk -F 'q=' '{print $2}' | sed 's/+/ /g;s/%22/"/g;s/q=//' | cut -d "&" -f 1 | mail youremail@isp.com -s "[your-site] search strings for `date`"

##### put nothing nowhere

   cat  /dev/zero > /dev/null &

##### Generate an XKCD #936 style 4 word password

   cat  /usr/share/dict/words | grep -P ^[a-z].* | grep -v "'s$" | grep -Pv ^.\{1,15\}$ | shuf -n4 | tr '\n' ' ' | sed 's/$/\n/'

##### What Type of Computer Do You Have?

   cat  /sys/devices/virtual/dmi/id/board_name

##### List all password hashes

   cat  /etc/shadow

##### having root on server, add user's public key to his keys (no password required)

   cat  user_public_key.pub | ssh root@<host> "cat | su -c 'mkdir -m 700 -p ~/.ssh && cat >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys' <user>"

##### List your MACs address

   cat  `ls -r /sys/class/net/*/address` | sort -u

##### Find the average QTime for all queries ran within the last hour for solr

   cat  /service/solr/log/main/current | tai64nlocal | grep "\(`date '+%F %H'`\|`date '+%F %H %M' | awk '{print $1" 0"$2-1":"$3}'`\)" | grep QTime | awk '{print $NF}' | awk -F\= '{ s += $2} END {print s/NR}'

##### download a list of urls

   cat  urls.txt | xargs -n1 curl -O max-time 10 retry 3 retry-delay 1

##### Copy paste contents quickly and save as a file

   cat  > file_name

##### Find brute force attempts on SSHd

   cat  /var/log/secure | grep sshd | grep Failed | sed 's/invalid//' | sed 's/user//' | awk '{print $11}' | sort | uniq -c | sort -n

##### List SMTP connections by host

   cat  /var/log/secure | grep smtp | awk '{print $9}' | cut -f2 -d= | sort | uniq -c | sort -n | tail

##### Eliminate duplicate lines on a file

   cat  file1.txt | uniq > file2.txt

##### CPU model

   cat  /proc/cpuinfo

##### close stderr

   cat  aaaaaa 2>&-

##### sendmail via commandline

   cat  file.txt | sendmail -F myname -f admin@mysite.com guest@guest.com

##### Reset scrambled screen

   cat  [ENTER]^V^O[ENTER]^D

##### Replace tabs with spaces in file

   cat  file_with_tabs.txt | perl -pe 's/\t/    /g'

##### Broadcast message to all logged in terminal users.

   cat  welcome | wall

##### View SuSE version

   cat  /etc/SuSE-release

##### Check whether laptop is running on battery or cable

   cat  /proc/acpi/battery/*/state

##### ssh Publickey auf remote Rechner anh?ngen

   cat  .ssh/id_rsa.pub | ssh user@server "cat >>.ssh/authorized_keys2"

##### Combining text files into one file

   cat  file1 ... fileN > combinedFile;

##### Find out your Debian version

   cat  /etc/debian_version

##### full cpu info (linux)

   cat  /proc/cpuinfo

##### Cat files in a directory; for loop command

   cat  *

##### Quickly create simple text file from command line w/o using vi/emacs

   cat  > <file_name> << "EOF"

##### copy public key

   cat  .ssh/id_rsa.pub | ssh user@server 'cat >> ~/.ssh/authorized_keys2'

##### Hex Dump

   cat  /dev/ttyS2 | hexdump -C

##### Replace spaces with newlines

   cat  file.txt|perl -ne '$_=~s/\s+/\n/g; print $_;'

##### Remove the first character of each line in a file

   cat  files |sed 's/.\(.*\)/\1/'

##### Get non-printable keycode to bind keys in applications

   cat  > /dev/null

##### Remove lines ending or trailing at least one slash (/)

   cat  file.txt | grep -v /$ > newfile.txt

##### Show line numbers in a text file

   cat  x

##### Find out which version of linux you are running

   cat  /etc/*issue

##### Quickly analyze apache logs for top 25 most common IP addresses.

   cat  $(ls -tr | tail -1) | awk '{ a[$1] += 1; } END { for(i in a) printf("%d, %s\n", a[i], i ); }' | sort -n  | tail -25

##### show debian version

   cat  /etc/debian_version

##### emptying a file

   cat  /dev/null >filename

##### Creating ISO Images from Audio CD

   cat  /dev/scd0 > ~/audio_image.iso

##### Convert JSON to YAML

   cat  data.json >data.yml

##### Easily find an old command you run

   cat  .bash_history | tail -100 | grep {command}

##### Create a iso from the disk.

   cat  /dev/cdrom > ~/mydisk.iso

##### display a tab separated file as columns

   cat  <file>|column -t

##### merge vob files to mpg

   cat  VTS_05_1.VOB VTS_05_2.VOB VTS_05_3.VOB VTS_05_4.VOB > mergedmovie.mpg

##### execute your commands and avoid history records

   cat  | bash

##### Compress blank lines

   cat  -s

##### concat multiple videos into one (and add an audio track)

   cat  frame/*.mpeg | ffmpeg -i $ID.mp3 -i - -f dvd -y track/$ID.mpg 2>/dev/null

##### Limit the transfer rate and size of data over a pipe

   cat  /dev/urandom | pv -L 3m | dd bs=1M count=100 iflag=fullblock > /dev/null

##### Netcat ftp brute force

   cat  list|while read lines;do echo "USER admin">ftp;echo "PASS $lines">>ftp;echo "QUIT">>ftp;nc 192.168.77.128 21 <ftp>ftp2;echo "trying: $lines";cat ftp2|grep "230">/dev/null;[ "$?" -eq "0" ]&& echo "pass: $lines" && break;done

##### Are there any words in the English language that use at least half of the alphabet without repeating any letters?

   cat  /usr/share/dict/words | egrep '^\w{13,}$' | egrep -iv '(\w).*\1'

##### Merge tarballs

   cat  1.tar.gz 2.tar.gz > 3.tar.gz; tar zxvfi 3.tar.gz

##### Copy your SSH public key on a remote machine for passwordless login.

   cat  ~/.ssh/*.pub | ssh user@remote-system 'umask 077; cat >>.ssh/authorized_keys'

##### Plot frequency distribution of words from files on a terminal.

   cat  *.c | { printf "se te du\nplot '-' t '' w dots\n"; tr '[[:upper:]]' '[[:lower:]]' | tr -s [[:punct:][:space:]] '\n' | sort | uniq -c | sort -nr | head -n 100 | awk '{print $1}END{print "e"}'; } | gnuplot

##### Show line numbers in a text file

   cat  -n file.txt

##### DVD ripping with ffmpeg

   cat  VIDEO_TS/VTS_01_[1234].VOB | nice ffmpeg -i - -s 512x384 -vcodec libtheora -acodec libvorbis ~/Videos/dvd_rip.ogg

##### Checks throughput between two nodes

   cat  /dev/zero | pv | ssh 192.168.1.2 "cat > /dev/null"

##### Enter your ssh password one last time

   cat  .ssh/id_dsa.pub | ssh elsewhere "[ -d .ssh ] || mkdir .ssh ; cat >> .ssh/authorized_keys"

##### delete duplicate lines from a file and keep the order of the other lines

   cat  -n <file> | sort -k 2 | uniq -f 1 | sort -n | cut -f 2-

##### Convert all JPEG images to MP4

   cat  *.jpg | ffmpeg -f image2pipe -r 1 -vcodec mjpeg -i - -vcodec libx264 out.mp4

##### write text or append to a file

   cat  <<.>> somefilename

##### View non-printing characters with cat

   cat  -v -t -e

##### scp a good script from host A which has no public access to host C, but with a hop by host B

   cat  nicescript |ssh middlehost "cat | ssh -a root@securehost 'cat > nicescript'"

##### Create a self-extracting archive for win32 using 7-zip

   cat  /path/to/7z.sfx /path/to/archive > archive.exe

##### List your MACs address

   cat  /sys/class/net/*/address

##### Merge AVI-files without recoding

   cat  part1.avi part2.avi part3.avi > tmp.avi && mencoder -forceidx -oac copy -ovc copy tmp.avi -o output.avi && rm -f tmp.avi

##### Copy your ssh public key to a server from a machine that doesn't have ssh-copy-id

   cat  ~/.ssh/id_rsa.pub | ssh <REMOTE> "(cat > tmp.pubkey ; mkdir -p .ssh ; touch .ssh/authorized_keys ; sed -i.bak -e '/$(awk '{print $NF}' ~/.ssh/id_rsa.pub)/d' .ssh/authorized_keys;  cat tmp.pubkey >> .ssh/authorized_keys; rm tmp.pubkey)"

##### prints line numbers

   cat  -n

##### Generate White Noise

   cat  /dev/urandom > /dev/dsp

##### convert a line to a space

   cat  file | tr '\n' ''

##### check remote port  without telnet

   cat  < /dev/tcp/74.125.224.40/80

##### Combining text files into one file

   cat  *.txt >output.txt

##### useless load

   cat  /dev/urandom | gzip -9 > /dev/null &

##### Show the command line of a process that use a specific port (ubuntu)

   cat  /proc/$(lsof -ti:8888)/cmdline | tr "\0" " "

##### Put split files back together, without a for loop

   cat  file{0..5} > mainfile

##### Quick notepad

   cat  > list -

##### Remove newlines from output

   cat  filename | grep .

##### Produces a list of when your domains expire

   cat  domainlist.txt  | while read line; do echo -ne $line; whois $line | grep Expiration ; done | sed 's:Expiration Date::'

##### Displaying system temperature

   cat  /proc/acpi/thermal_zone/THRM/temperature

##### Using awk to sum/count a column of numbers.

   cat  count.txt | awk '{ sum+=$1} END {print sum}'

##### Find Out My Linux Distribution Name and Version

   cat  /etc/*-release

##### Count all conections estabilished on gateway

   cat  /proc/net/ip_conntrack | grep ESTABLISHED | grep -c -v ^#

##### Export log to html file

   cat  /var/log/auth.log | logtool -o HTML > auth.html

##### Quickly Encrypt a file with gnupg and email it with mailx

   cat  private-file | gpg2 encrypt armor recipient "Disposable Key" | mailx -s "Email Subject" user@email.com

##### Compare two CSV files, discarding any repeated lines

   cat  foo.csv bar.csv | sort -t "," -k 2 | uniq

##### Multi line grep using sed and specifying open/close tags

   cat  file.txt | sed -e /<opening tag>/d -e /<closing tag>/G | sed -e '/./{H;$!d;}' -e 'x;/<string to search>/!d;'

##### Complex string encoding with sed

   cat  index.html | sed 's|"index.html%3Ffeed=rss2"|"http://dynamic-blog.hemca.com/?feed=rss2.html"|g'

##### Generate random password on Mac OS X

   cat  /dev/urandom | env LC_CTYPE=C tr -dc a-zA-Z0-9 | head -c 16; echo

##### Show me a histogram of the busiest minutes in a log file:

   cat  /var/log/secure.log | awk '{print substr($0,0,12)}' | uniq -c | sort -nr | awk '{printf("\n%s ",$0) ; for (i = 0; i<$1 ; i++) {printf("*")};}'

##### cat stdout of multiple commands

   cat  <( command1 arg arg ) <( command2 arg ) ...

##### Copy ssh keys to user@host to enable password-less ssh logins.

   cat  ~/.ssh/id_rsa.pub | ssh user@host 'cat >> ~/.ssh/authorized_keys'

##### Limit the transfer rate and size of data over a pipe

   cat  /dev/zero | pv -L 3m -Ss 100m > /dev/null

##### Copy text to the clipboard

   cat  SomeFile.txt | pbcopy

##### Both view and pipe the file without saving to disk

   cat  /path/to/some/file.txt | tee /dev/pts/0 | wc -l

##### Check whether laptop is running on battery or cable

   cat  /proc/acpi/ac_adapter/AC0/state

##### Combine all .mpeg files in current directory into one big one.

   cat  *.mpg > all.mpg

##### Get Unique Hostnames from Apache Config Files

   cat  /etc/apache2/sites-enabled/* | egrep 'ServerAlias|ServerName' | tr -s ' ' | sed 's/^\s//' | cut -d ' ' -f 2 | sed 's/www.//' | sort | uniq

##### format txt as table

   cat  /etc/passwd | column -nts:

##### listen to ram

   cat  /dev/mem > /dev/audio

##### Trim linebreaks

   cat  myfile.txt | tr -d '\n'

##### Send a local file via email

   cat  filename | mail -s "Email subject" user@example.com

##### umount rbind mount with submounts

   cat  /proc/mounts | awk '{print $2}' | grep "^$MOUNTPOINT" | sort -r | xargs umount

##### Uncompress a CSS file

   cat  somefile.css | awk '{gsub(/{|}|;/,"&\n"); print}' >> uncompressed.css

##### Display duplicated lines in a file

   cat  file.txt | sort | uniq -dc

##### multiline data block parse and CSV data extraction with perl

   cat  z.log |  perl -ne 'BEGIN{ print "DATE;RATE\n"; } /\[(\d.*)\]/ && print $1; /CURRENT RATE: +(\S+) msg.*/ && print ";" .$1 . "\n"; '

##### Print out your hard drive to a jet-direct compatible printer.

   cat  /dev/hda|netcat -q 0 192.168.1.2 9100

##### Given process ID print its environment variables

   cat  /proc/PID/environ | tr '\0' '\n'

##### Display which distro is installed

   cat  /etc/issue

##### Copy your ssh public key to a server from a machine that doesn't have ssh-copy-id

   cat  ~/.ssh/id_rsa.pub | ssh user@machine "mkdir ~/.ssh; cat >> ~/.ssh/authorized_keys"

##### Display which distro is installed

   cat  /etc/issue

##### Copy your ssh public key to a server from a machine that doesn't have ssh-copy-id

   cat  ~/.ssh/id_rsa.pub | ssh user@machine "mkdir ~/.ssh; cat >> ~/.ssh/authorized_keys"

##### show how many regex you use in your vim today

   cat  ~/.viminfo  | sed -n '/^:[0-9]\+,\([0-9]\+\|\$\)s/p'

##### generate random password

   cat  /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 10 | sed 1q

##### shell equivalent of a boss button

   cat  /dev/urandom | hexdump -C | highlight ca fe 3d 42 e1 b3 ae f8 | perl -MTime::HiRes -pne "Time::HiRes::usleep(rand()*1000000)"

##### Check if *hardware* is 32bit or 64bit

   cat  /proc/cpuinfo | grep " lm " > /dev/null && echo 64 bits || echo 32 bits

##### extracts 64 bytes of random digits from random lines out of /dev/random sent to stdio

   cat  /dev/urandom|od -t x1|awk 'NR > line { pos=int(rand()*15)+2;printf("%s",$pos);line=NR+(rand()*1000);digits = digits+2 } digits == 64 { print("\n");exit }'

##### Filter IP's in apache access logs based on use

   cat  /var/log/apache2/access_logs | cut -d ' ' -f 1 | uniq -c | sort -n

##### Add your public SSH key to a server in one command

   cat  .ssh/id_rsa.pub | ssh hostname 'cat >> .ssh/authorized_keys'

##### most changed files in domains by rdiff-backup output

   cat  /backup/hd7/rdiff-log.txt |grep Processing | awk '{ print $4 }' | sed -e 's/\// /g' | awk '{ print $1 }' |uniq -c |sort -n

##### Convert JSON to YAML

   cat mandu convert JSON to YAML < file.json > file.yaml

##### Filter IP's in apache access logs based on use

   cat  /var/log/apache2/access_logs | cut -d' ' -f1 | sort | uniq -c | sort -n

##### Convert JSON to YAML

   cat mandu convert JSON multiline 1 to YAML < file.json > file.yaml

##### calculate how much bogomips one cpu core has (assuming you have 4 cores).

   cat  /proc/cpuinfo | grep BogoMIPS | uniq | sed 's/^.*://g' | awk '{print($1 / 4) }'

##### Type strait into a file from the terminal.

   cat  /dev/tty > FILE

##### Use Cygwin to talk to the Windows clipboard

   cat  /dev/clipboard; $(somecommand) > /dev/clipboard

##### Fetch the requested virtual domains and their hits from log file

   cat  /etc/httpd/logs/access.log | awk '{ print $6}' | sed -e 's/\[//' | awk -F'/' '{print $1}' | sort | uniq -c

##### Skype conversation logs to IRC-format logs

   cat  skype_log | sed -s 's/\(\[.*\]\) \(.*\): \(.*\)/<\2> \3/'

##### Basic sed usage with xargs to refactor a node.js depdendency

   cat  matching_files.txt | xargs sed -i '' "s/require('global-module')/require('..\/some-folder\/relative-module')/"

##### Find out my Linux distribution name and version

   cat  /etc/*-release

##### 'Fix' a typescript file created by the 'script' program to remove control characters

   cat  typescript | perl -pe 's/\e([^\[\]]|\[.*?[a-zA-Z]|\].*?\a)//g' | col -b > typescript-processed

##### First file editor for newbies

   cat  > file.txt << EOF

##### Combine two mp3's or more into 1 long mp3

   cat  1.mp3 2.mp3 > combined.mp3

##### Count the frequency of every word for a given file

   cat  YOUR_FILE|tr -d '[:punct:]'|tr '[:upper:]' '[:lower:]'|tr -s ' ' '\n'|sort|uniq -c|sort -rn

##### Generate a 18 character password, print the password and sha512 salted hash

   cat  /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 18 | head -1 | python -c "import sys,crypt; stdin=sys.stdin.readline().rstrip('\n'); print stdin;print crypt.crypt(stdin)"

##### change microdvd subtitles framerate

   cat   subtitles.txt | perl -pe 's/} /}/g; s/{(\d+)}/=1=/; $f1=(24/25*$1); s/{(\d+)}/=2=/; $f2=(24/25*$1); $f1=~s/\..*//; $f2=~s/\..*//; s/=1=/{$f1}/;  s/=2=/{$f2}/; ' > subtitles_newfps.txt

##### download a list of urls

   cat  urls.txt | wget -i- -T 10 -t 3 waitretry 1

##### sort a JSON blob

   cat  foo.json | python -mjson.tool

##### Get MD5 checksum from a pipe stream and do not alter it

   cat  somefile | tee >(openssl md5 > sum.md5) | bzip2 > somefile.bz2

##### Find Out My Linux Distribution Name and Version

   cat  /etc/issue

##### print all paragraphs containing string

   cat  file1 file2| sed -e /^$/d -e /paragraph delimiter/G | sed -e '/./{H;$!d;}' -e 'x;/'."string to search".'/!d;''

##### Query VirusTotal Hash DB using a Public APIKEY

   cat  h.txt| while read line; do curl -s -X POST 'https://www.virustotal.com/vtapi/v2/file/report' form apikey="APIKEY" form resource="$line"|awk -F'positives\":' '{print "VTHits"$2}'|awk -F' ' '{print $1" "$2$5$6}'|sed 's/["}]//g' && sleep 15; done

##### Change the default Catfish file manager and search method

   cat fish fileman=nautilus path=/home/<username> hidden method=find

##### Create SSH key exchange from one host to the other

   cat  ~/.ssh/id_rsa.pub | ssh <remote_host> "xargs null echo >> ~/.ssh/authorized_keys"

##### You can access some-image.html where you include a image any other file than you can access it through http using a browser (e.g. http://xxx.xxx.xxx.xxx:12345 )

   cat  some-image.html | nc -v -l -p 12345

##### number the line of  a file

   cat  -n file  or cat -b file

##### check squid logs for time value greater than 9000ms

   cat  squid.log| awk -v x=9000 '$2 >=x' | sort -hs| tail -n 100

##### Bruteforce dm-crypt using dictionary

   cat  dictionary.txt|while read a; do echo $a|cryptsetup luksOpen /dev/sda5 sda5 $a && echo KEY FOUND: $a; done

##### send files via ssh-xfer

   cat  somefilehere.txt | ssh-xfer nametocallfile.txt -

##### Find ulimit values of currently running process

   cat  /proc/PID/limits

##### Put files back together after encrypted with tar and ccrypt

   cat  file.gz.cpt *[a-z] | ccdecrypt -k yoursecretpassword | tar -xzf -

##### Randomize lines (opposite of | sort)

   cat  ~/SortedFile.txt | perl -wnl -e '@f=<>; END{ foreach $i (reverse 0 .. $#f) { $r=int rand ($i+1); @f[$i, $r]=@f[$r,$i] unless ($i==$r); }  chomp @f; foreach $line (@f){ print $line; }}'

##### convert unixtime to human-readable

   cat  log | perl -ne 'use POSIX; s/([\d.]+)/strftime "%y-%m-%d %H:%M:%S", localtime $1/e,print if /./'

##### Produces a list of when your domains expire

   cat  domainlist.txt  | while read line; do echo -ne $line; whois $line | grep Expiration ; done | sed 's:Expiration Date::'

##### Reconstruct a malformed authorizated_keys for ssh

   cat  authorized_keys_with_broken_lines | sed 's,^ssh,%ssh,' | tr '\n' '\0'  | tr '%' '\n' | sed '1d' | sed "/^$/d"  > authorized_keys

##### computes the most frequent used words of a text file

   cat  WAR_AND_PEACE_By_LeoTolstoi.txt | tr -cs "[:alnum:]" "\n"| tr "[:lower:]" "[:upper:]" | awk '{h[$1]++}END{for (i in h){print h[i]" "i}}'|sort -nr | cat -n | head -n 30

##### List all username for accounts using bash shell

   cat  /etc/passwd | grep "bash" | cut -d: -f1

##### cat file.txt | pv -qL 15

   cat  File.txt | pv -qL 15

##### Hexadecimal dump of a file, pipe, or anything

   cat  testfile | hexdump -C

##### Copy a file content to clipboard on Cygwin

   cat  file.txt | putclip

##### Find running binary executables that were not installed using dpkg

   cat  /var/lib/dpkg/info/*.list > /tmp/listin ; ls /proc/*/exe |xargs -l readlink | grep -xvFf /tmp/listin; rm /tmp/listin

##### Have a list of directories in a file, ending with newlines and need to run du on it?

   cat  filename | tr '\n' '\0' | du -hsc ?files0-from=-

##### Change your exported xml love list from last.fm, into Song: songname Artist: artistname

   cat  username_lovedtracks.xspf |perl -pe "s/.*<title>(.*)<\/title><creator>(.*)<\/creator>.*/Song: \1 Artist: \2/gi"> titles

##### output your mp3 file over SSH on a remote computer's speaker

   cat  /home/user/file.mp3 | ssh -C user@host mpg123 -

##### merge ogg file into a new one according to their download time

   cat   $(ls -c | grep  ogg | tac ) > directory/test.ogg

##### Remove color codes (special characters) with sed

   cat  $* | sed -e "s,\x1B\[[0-9;]*[H],+++NEWLINE+++,g" -e "s,\x1B\[[0-9;]*[a-zA-Z],,g" -e "s,+++NEWLINE+++,\x0A,g" -e "s,\x07,,g" -e "s,\x08,,g" | sed -e "s, *$,,g" -e "s,[^ -~],,g" | uniq

##### Join avi files

   cat  b1.avi b2.avi b3.avi b4.avi b5.avi b6.avi b7.avi > output.avi; mencoder -forceidx -oac copy -ovc copy output.avi -o output_final.avi; rm output.avi

##### Convert Kubernetes ConfigMaps to Secrets

   cat  configmap.json | jq 'with_entries(if .key == "data" then .value=(.value | to_entries | map( { (.key): (.value|@base64) } ) | add  ) elif .key == "kind" then .value="Secret" else . end)'

##### Show thermal info

   cat  /proc/acpi/thermal_zone/*/temperature

##### Copy file to multiple destinations

   cat  myfile | tee dest1 dest2 > /dev/null 2>&1

##### Find distro name and/or version/release

   cat  /etc/*-release

##### find out about a process

   cat  /proc/<PID>/environ

##### Play local mp3 file on remote machine's speakers

   cat  myfile.mp3 | ssh user@remotemachine "mplayer -cache 8912 -"

##### Watch number of lines being processed on a clear screen

   cat  /dev/urandom|awk 'BEGIN{"tput cuu1" | getline CursorUp; "tput clear" | getline Clear; printf Clear}{num+=1;printf CursorUp; print num}'

##### Extract URLs from all anchors inside an HTML document with sed and grep

   cat  index.html | grep -o '<a .*href=.*>' | sed -e 's/<a /\n<a /g' | sed -e 's/<a .*href=['"'"'"]//' -e 's/["'"'"'].*$//' -e '/^$/ d'

##### ssh copy

   cat  ~/.ssh/id_rsa.pub | ssh deployer@xxxxx -p 52201 'cat >> ~/.ssh/authorized_keys'

##### cpuinfo

   cat  /proc/cpuinfo

##### MySQL: Strip a my.cnf file from comments, remove blank lines, normalize spaces:

   cat  my.cnf | sed '/^#/d' | sed '/^$/d' | sed -e 's/[ \t]\+//g'

##### List your MACs address

   cat  /sys/class/net/eth0/address

##### search system log for spamassassin score and list only 15th column

   cat  /var/log/syslog | grep score= | awk '{print $15}' | more

##### MySQL: normalize parameter names on my.cnf configuration file

   cat  my.sandbox.cnf | awk -F "=" 'NF < 2 {print} sub("=", "=~placeholder~=") {print}' | awk -F "=~placeholder~=" 'NF < 2 {gsub("-", "_", $0); print} NF==2 {gsub("-", "_", $1); print $1 "=" $2}'

##### Report summary of string occurrence by time period (hour)

   cat  z.log | grep Timeout | cut -d ':' -f1 | sort | uniq -c

##### Report summary of string occurrence by time period (hour) - alternate

   cat  z.log | cut -d ':' -f1 | sort | uniq  | xargs -l1 -iFF echo 'echo FF $(cat z.log | grep -e "^FF" | grep -e Timeout | wc -l )' | bash

##### Count loglines by time (minute)

   cat  z.log  | cut -d ':' -f1,2  | uniq -c

##### Transfer 1 file with ssh

   cat  filein | ssh destination.com -c arcfour,blowfish-cbc -C -p 50005 "cat - > /tmp/fileout"

##### List LVM Volume Groups as an unprivileged user

   cat  /sys/block/{*,*/*}/holders/dm*/dm/name | awk -F- '{print $1}' | sort -u

##### Find LVM Volume Group name for a block device

   cat  /sys/block/md1/holders/dm*/dm/name | awk -F- '{print $1}' | sort -u

##### Copy files from list with hierarchy

   cat  files.txt | xargs tar -cv | tar -x -c $DIR/

##### Get a list of IP Addresses that have failed to login via SSH

   cat  /var/log/auth.log | grep -i "pam_unix(sshd:auth): authentication failure;" | cut -d' ' -f14,15 | cut -d= -f2 | sort | uniq

##### sends a postscript file to a postscript printer using netcat

   cat  my.ps | nc -q 1 hp4550.mynet.xx 9100

##### Display which distro is installed

   cat  /etc/*release

##### sorta apache logs by ip frequency

   cat  access.log | awk '{print $1}' | sort -n | uniq -c | sort -nr | head -20

##### find git commits by description

   cat  /tmp/commit_list | { while read old_commit ; do msg="`git log pretty=oneline $old_commit'^'..$old_commit | sed 's/[0-9a-f]* //' | sed 's/[^A-Za-z0-9]/./g'`"; git log pretty=oneline HEAD@'{100}'..HEAD | grep "$msg" ; done ; }

##### Combine DVD Studio Pro DDP layers back into a DVD disc image for testing

   cat  dvd_output/Layer0/IMAGE.DAT dvd_output/Layer1/IMAGE.DAT > dvd.iso

##### Convert input to a line of quote protected CSV

   cat  file | paste -s -d'%' - | sed 's/\(^\|$\)/"/g;s/%/","/g'

##### Copy a file over SSH without SCP

   cat  LOCALFILE | ssh HOST "cat > REMOTEFILE"

##### Send data securly over the net.

   cat  /etc/passwd | openssl aes-256-cbc -a -e -pass pass:password | netcat -l -p 8080

##### Cat(print) and sort all IPs from file

   cat  /file/way/somelogforexample | grep -o "[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}" | sort -n | uniq -c | sort -n

##### add line number for each line

   cat  -n file.txt

##### remove comments from xml

   cat  <filename> | perl -e '$/ = ""; $_ = <>; s/<!.*?>//gs; print;'

##### Combining video file part downloaded separately using cat command

   cat  video.avi.001 video.avi.002 video.avi.003 >> video.avi

##### Copy a file over the network with 3 bounces

   cat  file.orig | ssh user1@host1 "ssh user2@host2 \"ssh user3@server3 'cat >file.dest'\""

##### Bashbuiltin printf

   cat  file.txt | while read line; do printf "%7.2f -> %7.2f\n" $line; done

##### set text file into background

   cat  foo.txt | aha black line-fix |  wkhtmltoimage -q minimum-font-size 18 - - |  feh bg-max -

##### Determine configure options used for MySQL binary builds

   cat  `whereis mysqlbug | awk '{print $2}'` | grep 'CONFIGURE_LINE='

##### Convert metasploit cachedump files to Hashcat format for cracking

   cat  cachedump.txt | awk -F : '{print $2":"$1}'

##### Generate a random password 30 characters long

   cat  /dev/urandom | tr -dc A-Za-z0-9 | head -c 32

##### Strip out Hungarian notation from a PHP file

   cat  file.php | perl -p -e 's/(\$|->)(str|arr|obj|int|flt|boo|bool|mix|res)([A-Z])/$1\L$3/g'

##### check for hanging postgres process (postmaster.pid)

   cat  /usr/local/var/postgres/postmaster.pid

##### check open network port with cat

   cat  < /dev/null > /dev/tcp/<hostname or ip>/<port>; echo $?

##### Suppress standard output using > /dev/null

   cat  file.txt > /dev/null

##### [MySQL] Get which table were dumped in [mysql_dump_file]

   cat  [mysql_dump_file] | grep "Table structure" | cut -c 30- | tr '\n' ' ' | rev | cut -c 2- | rev | tr -d '`'

##### Get purescript externs

   cat  externs.json  | jq ".efExports | .[] | (keys|.[0]) as \$kind | {kind:\$kind,value:(.[\$kind] |.Ident?)}"

##### Get purescript externs

   cat  externs.json  | jq ".efExports | .[] | (keys|.[0]) as \$kind | {kind:\$kind,value:(.[\$kind] |.Ident?)}"

##### Execute all SQL files in a directory

   cat  *.sql | mysql <db_name>

##### Clean a wordlist for use with password cracking tools and rules

   cat  dirtyfile.txt | awk '{gsub(/[[:punct:]]/,"")}1' | tr A-Z a-z | sed 's/[0-9]*//g' | sed -e 's/ //g' | strings | tr -cs '[:alpha:]' '\ ' | sed -e 's/ /\n/g' | tr A-Z a-z | sort -u > cleanfile.txt

##### Cat without comment

   cat  /etc/squid/squid.conf | egrep -v "(^#.*|^$)"

##### Check whether laptop is running on battery or cable

   cat  /proc/acpi/ac_adapter/ACAD/state

##### Untar a directory in a tar file over ssh

   cat  tarfile.tar.gz | ssh server.com " cd /tmp; tar xvzf - directory/i/want"

##### Create a CD/DVD ISO image from disk.

   cat  /dev/cdrom > ~/img.iso

##### Get Unique Hostnames from Apache Config Files

   cat  /etc/apache2/sites-enabled/* | egrep 'ServerAlias|ServerName' | tr -s " " | sed 's/^[ ]//g' | uniq | cut -d ' ' -f 2 | sed 's/www.//g' | sort | uniq

##### Check whether laptop is running on battery or cable

   cat  /proc/acpi/battery/BAT0/state

##### top ten shell command in bash shell

   cat  ~/.bash_history | perl -lane 'if($F[0] eq "sudo"){$hash{$F[1]}++}else{$hash{$F[0]}++};$all++;END {@top = map {[$_, $hash{$_}]} sort {$hash{$b}<=>$hash{$a}} keys %hash;printf("%10s%10d%10.2f%%\n", $_->[0],$_->[1],$_->[1]/$all*100) for @top[0..9]}'

##### Create a tar archive from a text list without trailing slash in directories

   cat  list.txt | pax -wd > archive.tar

##### Find out my Linux distribution name and version

   cat  /proc/version

##### Multiple Perl Search/Replace from a file

   cat  table-mv.txt | perl -pe 's{([^;]+);([^;]+)}{tbl$1/tbl$2}' | perl -pe 's{(\S+)}{perl -i -pe #s/$1/g# xxx.sql}' |  tr "#" "\'" | bash

##### Instant threadpool

   cat  item_list | xargs -n1 -P<n> process_item

##### Convert metasploit cachedump files to Hashcat format for cracking

   cat  *mscache* | awk -F '"' '{print $4":"$2}'

##### format txt as table not joining empty columns adding header with column numbers

   cat  file.csv | perl -pe 'if($. == 1) {@h = split(/;/); $i = 1 ; map { $_ = $i; $i++ } @h; print join(" ;", @h) , "\n"} ; s/(^|;);/$1 ;/g' | column -ts\; | less -S

##### Load file into RAM (cache) for faster accessing for repeated usage

   cat  <file> > /dev/null

##### Get domains on the server

   cat  /etc/named.conf | grep -Po '(?<=(named/)).*(?=\.db)'

##### Copy a file over SSH without SCP

   cat  file | ssh user@remotehost "cat > file"

##### Create unique IP and count list of hits against URL in Pound LB logs, redirect to file

   cat  *pound* | grep someURL.com | awk '{print $7}'| uniq -c | sort -bgr >> uniqueIPwC.txt

##### pretend to be busy in office to enjoy a cup of coffee

   cat  /dev/urandom | hexdump -C | grep "ca fe"

##### Join lines

   cat  file | tr "\n" " "

##### Get the time from NIST.GOV

   cat  </dev/tcp/time.nist.gov/13

##### Find brute force attempts on SSHd

   cat  /var/log/secure | grep sshd | grep Failed | sed 's/invalid//' | sed 's/user//' | awk '{print $11}' | sort | uniq -c | sort -n

##### Quickly create simple text file from command line w/o using vi/emacs

   cat  > <file_name> << "EOF"

##### Quickly analyze apache logs for top 25 most common IP addresses.

   cat  $(ls -tr | tail -1) | awk '{ a[$1] += 1; } END { for(i in a) printf("%d, %s\n", a[i], i ); }' | sort -n  | tail -25

##### merge vob files to mpg

   cat  VTS_05_1.VOB VTS_05_2.VOB VTS_05_3.VOB VTS_05_4.VOB > mergedmovie.mpg

##### execute your commands and avoid history records

   cat  | bash

##### Compress blank lines

   cat  -s

##### concat multiple videos into one (and add an audio track)

   cat  frame/*.mpeg | ffmpeg -i $ID.mp3 -i - -f dvd -y track/$ID.mpg 2>/dev/null

##### Limit the transfer rate and size of data over a pipe

   cat  /dev/urandom | pv -L 3m | dd bs=1M count=100 iflag=fullblock > /dev/null

##### Netcat ftp brute force

   cat  list|while read lines;do echo "USER admin">ftp;echo "PASS $lines">>ftp;echo "QUIT">>ftp;nc 192.168.77.128 21 <ftp>ftp2;echo "trying: $lines";cat ftp2|grep "230">/dev/null;[ "$?" -eq "0" ]&& echo "pass: $lines" && break;done

##### Are there any words in the English language that use at least half of the alphabet without repeating any letters?

   cat  /usr/share/dict/words | egrep '^\w{13,}$' | egrep -iv '(\w).*\1'

##### Merge tarballs

   cat  1.tar.gz 2.tar.gz > 3.tar.gz; tar zxvfi 3.tar.gz

##### Copy your SSH public key on a remote machine for passwordless login.

   cat  ~/.ssh/*.pub | ssh user@remote-system 'umask 077; cat >>.ssh/authorized_keys'

##### Plot frequency distribution of words from files on a terminal.

   cat  *.c | { printf "se te du\nplot '-' t '' w dots\n"; tr '[[:upper:]]' '[[:lower:]]' | tr -s [[:punct:][:space:]] '\n' | sort | uniq -c | sort -nr | head -n 100 | awk '{print $1}END{print "e"}'; } | gnuplot

##### Show line numbers in a text file

   cat  -n file.txt

##### DVD ripping with ffmpeg

   cat  VIDEO_TS/VTS_01_[1234].VOB | nice ffmpeg -i - -s 512x384 -vcodec libtheora -acodec libvorbis ~/Videos/dvd_rip.ogg

##### Checks throughput between two nodes

   cat  /dev/zero | pv | ssh 192.168.1.2 "cat > /dev/null"

##### Enter your ssh password one last time

   cat  .ssh/id_dsa.pub | ssh elsewhere "[ -d .ssh ] || mkdir .ssh ; cat >> .ssh/authorized_keys"

##### delete duplicate lines from a file and keep the order of the other lines

   cat  -n <file> | sort -k 2 | uniq -f 1 | sort -n | cut -f 2-

##### Convert all JPEG images to MP4

   cat  *.jpg | ffmpeg -f image2pipe -r 1 -vcodec mjpeg -i - -vcodec libx264 out.mp4

##### write text or append to a file

   cat  <<.>> somefilename

##### View non-printing characters with cat

   cat  -v -t -e

##### scp a good script from host A which has no public access to host C, but with a hop by host B

   cat  nicescript |ssh middlehost "cat | ssh -a root@securehost 'cat > nicescript'"

##### Create a self-extracting archive for win32 using 7-zip

   cat  /path/to/7z.sfx /path/to/archive > archive.exe

##### List your MACs address

   cat  /sys/class/net/*/address

##### Merge AVI-files without recoding

   cat  part1.avi part2.avi part3.avi > tmp.avi && mencoder -forceidx -oac copy -ovc copy tmp.avi -o output.avi && rm -f tmp.avi

##### Copy your ssh public key to a server from a machine that doesn't have ssh-copy-id

   cat  ~/.ssh/id_rsa.pub | ssh <REMOTE> "(cat > tmp.pubkey ; mkdir -p .ssh ; touch .ssh/authorized_keys ; sed -i.bak -e '/$(awk '{print $NF}' ~/.ssh/id_rsa.pub)/d' .ssh/authorized_keys;  cat tmp.pubkey >> .ssh/authorized_keys; rm tmp.pubkey)"

##### prints line numbers

   cat  -n

##### Generate White Noise

   cat  /dev/urandom > /dev/dsp

##### convert a line to a space

   cat  file | tr '\n' ''

##### check remote port  without telnet

   cat  < /dev/tcp/74.125.224.40/80

##### Combining text files into one file

   cat  *.txt >output.txt

##### useless load

   cat  /dev/urandom | gzip -9 > /dev/null &

##### Show the command line of a process that use a specific port (ubuntu)

   cat  /proc/$(lsof -ti:8888)/cmdline | tr "\0" " "

##### Put split files back together, without a for loop

   cat  file{0..5} > mainfile

##### Quick notepad

   cat  > list -

##### Remove newlines from output

   cat  filename | grep .

##### Produces a list of when your domains expire

   cat  domainlist.txt  | while read line; do echo -ne $line; whois $line | grep Expiration ; done | sed 's:Expiration Date::'

##### Displaying system temperature

   cat  /proc/acpi/thermal_zone/THRM/temperature

##### Using awk to sum/count a column of numbers.

   cat  count.txt | awk '{ sum+=$1} END {print sum}'

##### Find Out My Linux Distribution Name and Version

   cat  /etc/*-release

##### Count all conections estabilished on gateway

   cat  /proc/net/ip_conntrack | grep ESTABLISHED | grep -c -v ^#

##### Export log to html file

   cat  /var/log/auth.log | logtool -o HTML > auth.html

##### Quickly Encrypt a file with gnupg and email it with mailx

   cat  private-file | gpg2 encrypt armor recipient "Disposable Key" | mailx -s "Email Subject" user@email.com

##### Compare two CSV files, discarding any repeated lines

   cat  foo.csv bar.csv | sort -t "," -k 2 | uniq

##### Multi line grep using sed and specifying open/close tags

   cat  file.txt | sed -e /<opening tag>/d -e /<closing tag>/G | sed -e '/./{H;$!d;}' -e 'x;/<string to search>/!d;'

##### Complex string encoding with sed

   cat  index.html | sed 's|"index.html%3Ffeed=rss2"|"http://dynamic-blog.hemca.com/?feed=rss2.html"|g'

##### Generate random password on Mac OS X

   cat  /dev/urandom | env LC_CTYPE=C tr -dc a-zA-Z0-9 | head -c 16; echo

##### Show me a histogram of the busiest minutes in a log file:

   cat  /var/log/secure.log | awk '{print substr($0,0,12)}' | uniq -c | sort -nr | awk '{printf("\n%s ",$0) ; for (i = 0; i<$1 ; i++) {printf("*")};}'

##### cat stdout of multiple commands

   cat  <( command1 arg arg ) <( command2 arg ) ...

##### Copy ssh keys to user@host to enable password-less ssh logins.

   cat  ~/.ssh/id_rsa.pub | ssh user@host 'cat >> ~/.ssh/authorized_keys'

##### Limit the transfer rate and size of data over a pipe

   cat  /dev/zero | pv -L 3m -Ss 100m > /dev/null

##### Copy text to the clipboard

   cat  SomeFile.txt | pbcopy

##### Both view and pipe the file without saving to disk

   cat  /path/to/some/file.txt | tee /dev/pts/0 | wc -l

##### Check whether laptop is running on battery or cable

   cat  /proc/acpi/ac_adapter/AC0/state

##### Combine all .mpeg files in current directory into one big one.

   cat  *.mpg > all.mpg

##### Get Unique Hostnames from Apache Config Files

   cat  /etc/apache2/sites-enabled/* | egrep 'ServerAlias|ServerName' | tr -s ' ' | sed 's/^\s//' | cut -d ' ' -f 2 | sed 's/www.//' | sort | uniq

##### format txt as table

   cat  /etc/passwd | column -nts:

##### listen to ram

   cat  /dev/mem > /dev/audio

##### Trim linebreaks

   cat  myfile.txt | tr -d '\n'

##### Send a local file via email

   cat  filename | mail -s "Email subject" user@example.com

##### umount rbind mount with submounts

   cat  /proc/mounts | awk '{print $2}' | grep "^$MOUNTPOINT" | sort -r | xargs umount

##### Uncompress a CSS file

   cat  somefile.css | awk '{gsub(/{|}|;/,"&\n"); print}' >> uncompressed.css

##### Display duplicated lines in a file

   cat  file.txt | sort | uniq -dc

##### multiline data block parse and CSV data extraction with perl

   cat  z.log |  perl -ne 'BEGIN{ print "DATE;RATE\n"; } /\[(\d.*)\]/ && print $1; /CURRENT RATE: +(\S+) msg.*/ && print ";" .$1 . "\n"; '

##### Print out your hard drive to a jet-direct compatible printer.

   cat  /dev/hda|netcat -q 0 192.168.1.2 9100

##### Given process ID print its environment variables

   cat  /proc/PID/environ | tr '\0' '\n'

##### Display which distro is installed

   cat  /etc/issue

##### Copy your ssh public key to a server from a machine that doesn't have ssh-copy-id

   cat  ~/.ssh/id_rsa.pub | ssh user@machine "mkdir ~/.ssh; cat >> ~/.ssh/authorized_keys"

##### show how many regex you use in your vim today

   cat  ~/.viminfo  | sed -n '/^:[0-9]\+,\([0-9]\+\|\$\)s/p'

##### generate random password

   cat  /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 10 | sed 1q

##### shell equivalent of a boss button

   cat  /dev/urandom | hexdump -C | highlight ca fe 3d 42 e1 b3 ae f8 | perl -MTime::HiRes -pne "Time::HiRes::usleep(rand()*1000000)"

##### Check if *hardware* is 32bit or 64bit

   cat  /proc/cpuinfo | grep " lm " > /dev/null && echo 64 bits || echo 32 bits

##### extracts 64 bytes of random digits from random lines out of /dev/random sent to stdio

   cat  /dev/urandom|od -t x1|awk 'NR > line { pos=int(rand()*15)+2;printf("%s",$pos);line=NR+(rand()*1000);digits = digits+2 } digits == 64 { print("\n");exit }'

##### Filter IP's in apache access logs based on use

   cat  /var/log/apache2/access_logs | cut -d ' ' -f 1 | uniq -c | sort -n

##### Add your public SSH key to a server in one command

   cat  .ssh/id_rsa.pub | ssh hostname 'cat >> .ssh/authorized_keys'

##### most changed files in domains by rdiff-backup output

   cat  /backup/hd7/rdiff-log.txt |grep Processing | awk '{ print $4 }' | sed -e 's/\// /g' | awk '{ print $1 }' |uniq -c |sort -n

##### Convert JSON to YAML

   cat mandu convert JSON to YAML < file.json > file.yaml

##### Filter IP's in apache access logs based on use

   cat  /var/log/apache2/access_logs | cut -d' ' -f1 | sort | uniq -c | sort -n

##### Convert JSON to YAML

   cat mandu convert JSON multiline 1 to YAML < file.json > file.yaml

##### calculate how much bogomips one cpu core has (assuming you have 4 cores).

   cat  /proc/cpuinfo | grep BogoMIPS | uniq | sed 's/^.*://g' | awk '{print($1 / 4) }'

##### Type strait into a file from the terminal.

   cat  /dev/tty > FILE

##### Use Cygwin to talk to the Windows clipboard

   cat  /dev/clipboard; $(somecommand) > /dev/clipboard

##### Fetch the requested virtual domains and their hits from log file

   cat  /etc/httpd/logs/access.log | awk '{ print $6}' | sed -e 's/\[//' | awk -F'/' '{print $1}' | sort | uniq -c

##### Skype conversation logs to IRC-format logs

   cat  skype_log | sed -s 's/\(\[.*\]\) \(.*\): \(.*\)/<\2> \3/'

##### Basic sed usage with xargs to refactor a node.js depdendency

   cat  matching_files.txt | xargs sed -i '' "s/require('global-module')/require('..\/some-folder\/relative-module')/"

##### Find out my Linux distribution name and version

   cat  /etc/*-release

##### 'Fix' a typescript file created by the 'script' program to remove control characters

   cat  typescript | perl -pe 's/\e([^\[\]]|\[.*?[a-zA-Z]|\].*?\a)//g' | col -b > typescript-processed

##### First file editor for newbies

   cat  > file.txt << EOF

##### Combine two mp3's or more into 1 long mp3

   cat  1.mp3 2.mp3 > combined.mp3

##### Count the frequency of every word for a given file

   cat  YOUR_FILE|tr -d '[:punct:]'|tr '[:upper:]' '[:lower:]'|tr -s ' ' '\n'|sort|uniq -c|sort -rn

##### Generate a 18 character password, print the password and sha512 salted hash

   cat  /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 18 | head -1 | python -c "import sys,crypt; stdin=sys.stdin.readline().rstrip('\n'); print stdin;print crypt.crypt(stdin)"

##### change microdvd subtitles framerate

   cat   subtitles.txt | perl -pe 's/} /}/g; s/{(\d+)}/=1=/; $f1=(24/25*$1); s/{(\d+)}/=2=/; $f2=(24/25*$1); $f1=~s/\..*//; $f2=~s/\..*//; s/=1=/{$f1}/;  s/=2=/{$f2}/; ' > subtitles_newfps.txt

##### download a list of urls

   cat  urls.txt | wget -i- -T 10 -t 3 waitretry 1

##### sort a JSON blob

   cat  foo.json | python -mjson.tool

##### Get MD5 checksum from a pipe stream and do not alter it

   cat  somefile | tee >(openssl md5 > sum.md5) | bzip2 > somefile.bz2

##### Find Out My Linux Distribution Name and Version

   cat  /etc/issue

##### print all paragraphs containing string

   cat  file1 file2| sed -e /^$/d -e /paragraph delimiter/G | sed -e '/./{H;$!d;}' -e 'x;/'."string to search".'/!d;''

##### Query VirusTotal Hash DB using a Public APIKEY

   cat  h.txt| while read line; do curl -s -X POST 'https://www.virustotal.com/vtapi/v2/file/report' form apikey="APIKEY" form resource="$line"|awk -F'positives\":' '{print "VTHits"$2}'|awk -F' ' '{print $1" "$2$5$6}'|sed 's/["}]//g' && sleep 15; done

##### Change the default Catfish file manager and search method

   cat fish fileman=nautilus path=/home/<username> hidden method=find

##### Create SSH key exchange from one host to the other

   cat  ~/.ssh/id_rsa.pub | ssh <remote_host> "xargs null echo >> ~/.ssh/authorized_keys"

##### You can access some-image.html where you include a image any other file than you can access it through http using a browser (e.g. http://xxx.xxx.xxx.xxx:12345 )

   cat  some-image.html | nc -v -l -p 12345

##### number the line of  a file

   cat  -n file  or cat -b file

##### check squid logs for time value greater than 9000ms

   cat  squid.log| awk -v x=9000 '$2 >=x' | sort -hs| tail -n 100

##### Bruteforce dm-crypt using dictionary

   cat  dictionary.txt|while read a; do echo $a|cryptsetup luksOpen /dev/sda5 sda5 $a && echo KEY FOUND: $a; done

##### send files via ssh-xfer

   cat  somefilehere.txt | ssh-xfer nametocallfile.txt -

##### Find ulimit values of currently running process

   cat  /proc/PID/limits

##### Put files back together after encrypted with tar and ccrypt

   cat  file.gz.cpt *[a-z] | ccdecrypt -k yoursecretpassword | tar -xzf -

##### Randomize lines (opposite of | sort)

   cat  ~/SortedFile.txt | perl -wnl -e '@f=<>; END{ foreach $i (reverse 0 .. $#f) { $r=int rand ($i+1); @f[$i, $r]=@f[$r,$i] unless ($i==$r); }  chomp @f; foreach $line (@f){ print $line; }}'

##### convert unixtime to human-readable

   cat  log | perl -ne 'use POSIX; s/([\d.]+)/strftime "%y-%m-%d %H:%M:%S", localtime $1/e,print if /./'

##### Produces a list of when your domains expire

   cat  domainlist.txt  | while read line; do echo -ne $line; whois $line | grep Expiration ; done | sed 's:Expiration Date::'

##### Reconstruct a malformed authorizated_keys for ssh

   cat  authorized_keys_with_broken_lines | sed 's,^ssh,%ssh,' | tr '\n' '\0'  | tr '%' '\n' | sed '1d' | sed "/^$/d"  > authorized_keys

##### computes the most frequent used words of a text file

   cat  WAR_AND_PEACE_By_LeoTolstoi.txt | tr -cs "[:alnum:]" "\n"| tr "[:lower:]" "[:upper:]" | awk '{h[$1]++}END{for (i in h){print h[i]" "i}}'|sort -nr | cat -n | head -n 30

##### List all username for accounts using bash shell

   cat  /etc/passwd | grep "bash" | cut -d: -f1

##### cat file.txt | pv -qL 15

   cat  File.txt | pv -qL 15

##### Hexadecimal dump of a file, pipe, or anything

   cat  testfile | hexdump -C

##### Copy a file content to clipboard on Cygwin

   cat  file.txt | putclip

##### Find running binary executables that were not installed using dpkg

   cat  /var/lib/dpkg/info/*.list > /tmp/listin ; ls /proc/*/exe |xargs -l readlink | grep -xvFf /tmp/listin; rm /tmp/listin

##### Have a list of directories in a file, ending with newlines and need to run du on it?

   cat  filename | tr '\n' '\0' | du -hsc ?files0-from=-

##### Change your exported xml love list from last.fm, into Song: songname Artist: artistname

   cat  username_lovedtracks.xspf |perl -pe "s/.*<title>(.*)<\/title><creator>(.*)<\/creator>.*/Song: \1 Artist: \2/gi"> titles

##### output your mp3 file over SSH on a remote computer's speaker

   cat  /home/user/file.mp3 | ssh -C user@host mpg123 -

##### merge ogg file into a new one according to their download time

   cat   $(ls -c | grep  ogg | tac ) > directory/test.ogg

##### Remove color codes (special characters) with sed

   cat  $* | sed -e "s,\x1B\[[0-9;]*[H],+++NEWLINE+++,g" -e "s,\x1B\[[0-9;]*[a-zA-Z],,g" -e "s,+++NEWLINE+++,\x0A,g" -e "s,\x07,,g" -e "s,\x08,,g" | sed -e "s, *$,,g" -e "s,[^ -~],,g" | uniq

##### Join avi files

   cat  b1.avi b2.avi b3.avi b4.avi b5.avi b6.avi b7.avi > output.avi; mencoder -forceidx -oac copy -ovc copy output.avi -o output_final.avi; rm output.avi

##### Convert Kubernetes ConfigMaps to Secrets

   cat  configmap.json | jq 'with_entries(if .key == "data" then .value=(.value | to_entries | map( { (.key): (.value|@base64) } ) | add  ) elif .key == "kind" then .value="Secret" else . end)'

##### Show thermal info

   cat  /proc/acpi/thermal_zone/*/temperature

##### Copy file to multiple destinations

   cat  myfile | tee dest1 dest2 > /dev/null 2>&1

##### Find distro name and/or version/release

   cat  /etc/*-release

##### find out about a process

   cat  /proc/<PID>/environ

##### Play local mp3 file on remote machine's speakers

   cat  myfile.mp3 | ssh user@remotemachine "mplayer -cache 8912 -"

##### Watch number of lines being processed on a clear screen

   cat  /dev/urandom|awk 'BEGIN{"tput cuu1" | getline CursorUp; "tput clear" | getline Clear; printf Clear}{num+=1;printf CursorUp; print num}'

##### Extract URLs from all anchors inside an HTML document with sed and grep

   cat  index.html | grep -o '<a .*href=.*>' | sed -e 's/<a /\n<a /g' | sed -e 's/<a .*href=['"'"'"]//' -e 's/["'"'"'].*$//' -e '/^$/ d'

##### ssh copy

   cat  ~/.ssh/id_rsa.pub | ssh deployer@xxxxx -p 52201 'cat >> ~/.ssh/authorized_keys'

##### cpuinfo

   cat  /proc/cpuinfo

##### MySQL: Strip a my.cnf file from comments, remove blank lines, normalize spaces:

   cat  my.cnf | sed '/^#/d' | sed '/^$/d' | sed -e 's/[ \t]\+//g'

##### List your MACs address

   cat  /sys/class/net/eth0/address

##### search system log for spamassassin score and list only 15th column

   cat  /var/log/syslog | grep score= | awk '{print $15}' | more

##### MySQL: normalize parameter names on my.cnf configuration file

   cat  my.sandbox.cnf | awk -F "=" 'NF < 2 {print} sub("=", "=~placeholder~=") {print}' | awk -F "=~placeholder~=" 'NF < 2 {gsub("-", "_", $0); print} NF==2 {gsub("-", "_", $1); print $1 "=" $2}'

##### Report summary of string occurrence by time period (hour)

   cat  z.log | grep Timeout | cut -d ':' -f1 | sort | uniq -c

##### Report summary of string occurrence by time period (hour) - alternate

   cat  z.log | cut -d ':' -f1 | sort | uniq  | xargs -l1 -iFF echo 'echo FF $(cat z.log | grep -e "^FF" | grep -e Timeout | wc -l )' | bash

##### Count loglines by time (minute)

   cat  z.log  | cut -d ':' -f1,2  | uniq -c

##### Transfer 1 file with ssh

   cat  filein | ssh destination.com -c arcfour,blowfish-cbc -C -p 50005 "cat - > /tmp/fileout"

##### List LVM Volume Groups as an unprivileged user

   cat  /sys/block/{*,*/*}/holders/dm*/dm/name | awk -F- '{print $1}' | sort -u

##### Find LVM Volume Group name for a block device

   cat  /sys/block/md1/holders/dm*/dm/name | awk -F- '{print $1}' | sort -u

##### Copy files from list with hierarchy

   cat  files.txt | xargs tar -cv | tar -x -c $DIR/

##### Get a list of IP Addresses that have failed to login via SSH

   cat  /var/log/auth.log | grep -i "pam_unix(sshd:auth): authentication failure;" | cut -d' ' -f14,15 | cut -d= -f2 | sort | uniq

##### sends a postscript file to a postscript printer using netcat

   cat  my.ps | nc -q 1 hp4550.mynet.xx 9100

##### Display which distro is installed

   cat  /etc/*release

##### sorta apache logs by ip frequency

   cat  access.log | awk '{print $1}' | sort -n | uniq -c | sort -nr | head -20

##### find git commits by description

   cat  /tmp/commit_list | { while read old_commit ; do msg="`git log pretty=oneline $old_commit'^'..$old_commit | sed 's/[0-9a-f]* //' | sed 's/[^A-Za-z0-9]/./g'`"; git log pretty=oneline HEAD@'{100}'..HEAD | grep "$msg" ; done ; }

##### Combine DVD Studio Pro DDP layers back into a DVD disc image for testing

   cat  dvd_output/Layer0/IMAGE.DAT dvd_output/Layer1/IMAGE.DAT > dvd.iso

##### Convert input to a line of quote protected CSV

   cat  file | paste -s -d'%' - | sed 's/\(^\|$\)/"/g;s/%/","/g'

##### Copy a file over SSH without SCP

   cat  LOCALFILE | ssh HOST "cat > REMOTEFILE"

##### Send data securly over the net.

   cat  /etc/passwd | openssl aes-256-cbc -a -e -pass pass:password | netcat -l -p 8080

##### Cat(print) and sort all IPs from file

   cat  /file/way/somelogforexample | grep -o "[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}" | sort -n | uniq -c | sort -n

##### add line number for each line

   cat  -n file.txt

##### remove comments from xml

   cat  <filename> | perl -e '$/ = ""; $_ = <>; s/<!.*?>//gs; print;'

##### Combining video file part downloaded separately using cat command

   cat  video.avi.001 video.avi.002 video.avi.003 >> video.avi

##### Copy a file over the network with 3 bounces

   cat  file.orig | ssh user1@host1 "ssh user2@host2 \"ssh user3@server3 'cat >file.dest'\""

##### Bashbuiltin printf

   cat  file.txt | while read line; do printf "%7.2f -> %7.2f\n" $line; done

##### set text file into background

   cat  foo.txt | aha black line-fix |  wkhtmltoimage -q minimum-font-size 18 - - |  feh bg-max -

##### Determine configure options used for MySQL binary builds

   cat  `whereis mysqlbug | awk '{print $2}'` | grep 'CONFIGURE_LINE='

##### Convert metasploit cachedump files to Hashcat format for cracking

   cat  cachedump.txt | awk -F : '{print $2":"$1}'

##### Generate a random password 30 characters long

   cat  /dev/urandom | tr -dc A-Za-z0-9 | head -c 32

##### Strip out Hungarian notation from a PHP file

   cat  file.php | perl -p -e 's/(\$|->)(str|arr|obj|int|flt|boo|bool|mix|res)([A-Z])/$1\L$3/g'

##### check for hanging postgres process (postmaster.pid)

   cat  /usr/local/var/postgres/postmaster.pid

##### check open network port with cat

   cat  < /dev/null > /dev/tcp/<hostname or ip>/<port>; echo $?

##### Suppress standard output using > /dev/null

   cat  file.txt > /dev/null

##### [MySQL] Get which table were dumped in [mysql_dump_file]

   cat  [mysql_dump_file] | grep "Table structure" | cut -c 30- | tr '\n' ' ' | rev | cut -c 2- | rev | tr -d '`'

##### Get purescript externs

   cat  externs.json  | jq ".efExports | .[] | (keys|.[0]) as \$kind | {kind:\$kind,value:(.[\$kind] |.Ident?)}"

##### Load file into RAM (cache) for faster accessing for repeated usage

   cat  <file> > /dev/null
