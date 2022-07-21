# ls

##### List only the directories

   ls  -d */

##### List only the directories

   ls  -d */

##### dynamically list open files for a given process name

   ls of -i -n -P | grep -e "$(ps aux | grep node | grep -v grep | awk -F' ' '{print $2}' | xargs | awk -F' ' '{str = $1; for(i = 2; i < NF; i++) {str = str "\\|" $i} print str}')"

##### Show top-level subdirectories (zsh)

   ls  -ld *(/)

##### Get the dir listing of an executable without knowing its location

   ls  -l `whereis gcc`

##### List all files fred* unless in a junk directory

   ls  **/fred*~*junk*/*

##### Find latest file in a directory

   ls  -rt | tail -n 1

##### Files modified today

   ls  *(m-1)

##### List all symbolic links in current directory

   ls  -1F | grep @$ | sed 's/@//' | column

##### Two command output

   ls of -i :80 | tee /dev/stderr | wc -l

##### This will kill all ssh connections from a given host it does give some errors but it does work

   ls of -i tcp:22 | grep 192.168.10.10 | awk "{print $2}" |xargs kill

##### Determines latest pdf file downloaded by firefox in ~/Downloads directory

   ls  -tr ~/Downloads/*.pdf|tail -1

##### Tail the most recently modified file

   ls  -t1 | head -n1 | xargs tail -f

##### For finding out if something is listening on a port and if so what the daemon is.

   ls of -i :[port number]

##### List only files in long format.

   ls  -l | grep ^-

##### A bash function to show the files most recently modified in the named (or current) directory

   ls  -t1 $* | head -1 ;

##### Count files and folder

   ls  /var/log/ |wc -l

##### List file/directories in order of last accessed, in human readable terms

   ls  -lth podcasts/

##### Keep a copy of the raw Youtube FLV,MP4,etc stored in /tmp/

   ls of -n -P|grep FlashXX|awk '{ print "/proc/" $2 "/fd/" substr($4, 1, length($4)-1) }'|while read f;do newname=$(exiftool -FileModifyDate -FileType -t -d %Y%m%d%H%M%S $f|cut -f2|tr '\n' '.'|sed 's/\.$//');echo "$f -> $newname";cp $f ~/Vids/$newname;done

##### list each file/directory size in a directory

   ls  | xargs -I{} du -sh {}

##### Randomize lines (opposite of | sort)

   ls  -1 | xargs ruby -e'puts ARGV.shuffle'

##### Find iPod's fwguid

   ls usb -v | grep -o "[0-9A-Z]{16}"

##### The program listening on port 8080 through IPv6

   ls of -Pnl +M -i6 | grep 8080

##### List files that DO NOT match a pattern

   ls  | grep -vi pattern

##### Hunt for the newest file.

   ls  -trF | grep -v \/ | tail -n 1

##### Replace all the spaces in all the filenames of the current directory and including directories with underscores.

   ls  -1 | while read file; do new_file=$(echo $file | sed s/\ /_/g); mv "$file" "$new_file"; done

##### Find out the permissions of the current directory

   ls  -lad

##### Delete all but latest file in a directory

   ls  -t1 | sed 1d | parallel -X rm

##### get newest file in current directory

   ls  -lart

##### lspci | grep -i pci

   ls pci | grep -i pci

##### pid list by httpd listen port

   ls of | awk '/*:https?/{print $2}' | sort -u

##### delete a file and links based on inode number.

   ls  -ai | grep filename | find . -inum `awk '{print $1}'` -exec rm {} \;

##### Remove everything except that file

   ls  | egrep -v "[REGULAR EXPRESSION]" | xargs rm -v

##### calculate the total size of files in specified directory (in Megabytes)

   ls  -l directory | awk 'BEGIN { SUM=0 } { SUM+=$5 } END { print SUM/1024/1024"M" }'

##### list directories only

   ls  -d */

##### Move itens from subdirectories to current directory

   ls  -d */* | sed -e 's/^/\"/g' -e 's/$/\"/g' | xargs mv -t $(pwd)

##### View open file descriptors for a process.

   ls of -p <process_id> | wc -l

##### List only the directories

   ls  -F|grep /

##### find all references to a server in web.config files with powershell

   ls  \\someserver\c$\inetpub\wwwroot -r -i web.config | Select-String "SomeMachineName"

##### SAR - List top CPU usage spikes over the last month using sar.

   ls  /var/log/sa/sa[0-9]*|xargs -I '{}' sar -u -f {}|awk '/^[0-9]/&&!/^12:00:01|RESTART|CPU/{print "%user: "$4" %system: "$6" %iowait: "$7" %nice: "$5" %idle: "$9}'|sort -nk10|head

##### Calculate foldersize for each website on an ISPConfig environment

   ls  -d1a /var/www/*/web | xargs du -hs

##### check open ports (both ipv4 and ipv6)

   ls of -i

##### bulk rename files with sed, one-liner

   ls  | sed 'p;s/foo/bar/' | xargs -n2 mv

##### List only directory names

   ls  -d */

##### For finding out if something is listening on a port and if so what the daemon is.

   ls fo -i :[port number]

##### Find all symlinks that link to directories

   ls  -l $(find ./ -type l | perl -ne 'chomp; if (-d) { print "$_\n" }')

##### Give information about your graphic chipset

   ls hw -C display

##### ls

   ls 

##### Sort files in $PWD by year embedded anywhere in filename

   ls  color=never -1| grep -E "[0-9]{4}"|sed -re "s/^(.*)([0-9]{4})(.*)$/\2 \1\2\3/" | sort -r

##### printing barcodes

   ls  /home | head -64 | barcode -t 4x16 | lpr

##### Show the single most recently modified item in a directory

   ls  -ltp | sed '1 d' | head -n1

##### Show the single most recently modified file in a directory

   ls  -lFart |tail -n1

##### List all symbolic links in current directory

   ls  -F | sed -n 's/@$//p'

##### ls output - octal

   ls  -l | sed -e 's/x/1/g' -e 's/-w-/2/g' -e 's/-wx/3/g' -e 's/r/4/g' -e 's/r-x/5/g' -e 's/rw-/6/g' -e 's/rwx/7/g' -e 's/-/0/g'

##### make soft links from a downloaded bin folder

   ls  | while read line; do ln -s "$(pwd)/$line" "/usr/bin/$line"; done

##### Find files and list them sorted by modification time

   ls  -rl time-style=+%s * | sed '/^$/,/^total [0-9]*$/d' | sort -nk6

##### Identify files uniquly in a FS with inode numer

   ls  -i1 filename

##### Individually compress each file in a directory

   ls  | while read filename; do tar -czvf "$filename".tar.gz "$filename"; rm "$filename"; done

##### grep files by date and delete

   ls  -ltr |grep 'May 12'|awk '{print $9;}'|xargs rm -v

##### get newest file in current directory

   ls  -t1 | head -n1

##### Show the UUID of a filesystem or partition

   ls  /dev/disk/by-uuid/ -alh

##### paged 'ls' in color

   ls  -lah color=always | most

##### &#38283;&#12356;&#12390;&#12427;&#12509;&#12540;&#12488;&#12434;&#35519;&#12409;&#12427;

   ls of -i -n -P

##### Find out my Linux distribution name and version

   ls b_release -a

##### direct a single stream of input (ls) to multiple readers (grep & wc) without using temporary files

   ls  |tee >(grep xxx |wc >xxx.count) >(grep yyy |wc >yyy.count) |grep zzz |wc >zzz.count

##### Easy Regex based mass renaming

   ls  /some/directory | sed -rn -e 's/input_file_regex/mv -v & output_file_name/p' | sh

##### Rename files in a directory in an edited list fashion

   ls  > ls; paste ls ls > ren; nano ren; sed 's/^/mv /' ren|bash; rm ren ls

##### Delete all but the latest 5 files

   ls  -t | awk 'NR>5 {system("rm \"" $0 "\"")}'

##### check open ports (both ipv4 and ipv6)

   ls of -Pi | grep LISTEN

##### Show files and subdirectories in Terminal and copy output into a file

   ls  -la | tee ~/log.txt

##### Get the /dev/disk/by-id fragment for a physical drive

   ls  -l /dev/disk/by-id | egrep ata-.*`hdparm -i /dev/sda | grep SerialNo | sed 's/.*SerialNo=//' | tr -d "\n"`.*sda$ | sed -e 's/.*ata-/ata-/' -e 's|[ ].*||' | tr -d "\n"

##### Arguments too long

   ls  | grep ".txt$" | xargs -i WHATEVER_COMMAND {}

##### List files with quotes around each filename

   ls  | sed 's,\(.*\),"\1",'

##### Edit all "text" files (exclude binary and directories) in the current directory

   ls  . | xargs file | grep text | sed "s/\(.*\):.*/\1/" | xargs gedit

##### Find all dot files and directories

   ls  -a | egrep "^\.\w"

##### Find everything updated in the last minute recursively within the current directory and sort by time, newest at the bottom.

   ls  -lF -darth `find . -mmin -3`

##### To display the number of hard disks on your system

   ls pv

##### Count all files in a directory

   ls  | wc -l

##### get debian version number

   ls b_release -a

##### List all symbolic links in current directory

   ls  -l `ls -l |awk '/^l/ {print $8}'`

##### LIST FILENAMES OF FILES CREATED TODAY IN CURRENT DIRECTORY

   ls  -la | grep $(date +%Y-%m-%d) | egrep -v -e '\.{1,2}' | sed "s/.*\:[0-9]\{2\} \(.\+\)$/\\1/g"

##### Convert all .wav to .mp3

   ls  *.wav | while read f; do lame "$f" -o "$(echo $f | cut -d'.' -f1)".mp3; done;

##### List files that DO NOT match a pattern

   ls  *[^p][^a][^t]* ; # or shopt -s extglob; ls !(*pattern*)

##### List dot-files and dirs, but not "." and ".."

   ls  .[!.]*

##### Show the processes that use old libs and need a restart

   ls of | grep 'DEL.*lib' | cut -f 1 -d ' ' | sort -u

##### Display directory hierarchy listing as a tree

   ls  -R | grep : | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\///g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\''

##### Selecting a random file/folder of a folder

   ls  -1 | awk 'BEGIN{srand()} {x[NR] = $0} END{print "Selected", x[1 + int(rand() * NR)]}'

##### LSD: List directory files in current directory

   ls  -l !* | /usr/bin/grep '^d'

##### list all file extensions in a directory

   ls  | perl -lne '++$x{lc $1} if /[.](.+)$/ }{ print for keys %x'

##### List only hidden files

   ls  -ad .*

##### Replace spaces in filename

   ls  | while read -r FILE; do mv -v "$FILE" `echo $FILE | tr -d ' '`; done

##### Sort files by size

   ls  -lS

##### Convert *.mp3 files to *.wav for recording audio cd's

   ls  |while read line ; do mpg321 -w "$line.wav" "$line" ; done

##### Ultimate current directory usage command

   ls  -shF color

##### get basic information out of your computer

   ls pci

##### Print last modified time in 'date  file' format

   ls  -alt /directory/ | awk '{ print $6 " " $7 "  " $9 }'

##### list connected usb devices

   ls usb

##### Find which version of Linux You are Running

   ls b_release -d

##### convert permissions in ls to octal

   ls  -l | sed -e 's/x/1/g' -e 's/-w-/2/g' -e 's/-wx/3/g' -e 's/r/4/g'  -e 's/r-x/5/g' -e 's/rw-/6/g' -e 's/rwx/7/g' -e 's/-/0/g'

##### which program is this port belongs to ?

   ls of -i tcp:80

##### Draw kernel module dependancy graph.

   ls mod | perl -e 'print "digraph \"lsmod\" {";<>;while(<>){@_=split/\s+/; print "\"$_[0]\" -> \"$_\"\n" for split/,/,$_[3]}print "}"' | dot -Tpng | display -

##### ls not pattern

   ls  -I "*.gz"

##### Prepend string to filename

   ls  | while read -r FILE; do mv -v "$FILE" `echo "prependtext$FILE"  `; done

##### Arguments too long

   ls  | xargs WHATEVER_COMMAND

##### display most recently modified files

   ls  -l|awk '{print $6,$8}'|sort -d

##### List all executable files in the current directory

   ls  -F | grep '\''\*'\'' | sed '\''s/\*$//'\

##### Print the ten largest files

   ls  -Sl * | head

##### List the size (in human readable form) of all sub folders from the current location

   ls  | xargs du -sh

##### Recursively grep a subdirectory for a list of files

   ls  -1 static/images/ | while read line; do echo -n $line' '[; grep -rc $line *|grep -v ".svn"|cut -d":" -f2|grep -vc 0| tr "\n" -d; echo -n ]; echo ; done

##### remove all spaces from all files in current folder

   ls  -1 | while read a; do mv "$a" `echo $a | sed -e 's/\ //g'`; done

##### Find files and format them in detailed list

   ls  -l `locate your_search_here`

##### Get the 10 biggest files/folders for the current direcotry

   ls  -1rSA | tail

##### List dot-files and dirs, but not . or ..

   ls  .??*

##### Selecting a random file/folder of a folder

   ls  -1 | sort -R | sed -n 's/^/Selected /;1p'

##### Read directory contents recursively

   ls  -R .

##### Output all Files in Directory w/ Details to Filelist

   ls  -laR > /path/to/filelist

##### List files with quotes around each filename

   ls  | sed 's/.*/"&"/'

##### Check your running Ubuntu version

   ls b_release -a

##### Show All Symbolic (Soft) Links

   ls  -l | grep ^l

##### List dot-files and dirs, but not . or ..

   ls  -A

##### which process has a port open

   ls of -i :80

##### Salty detailed directory listing...

   ls  -saltS [dirname]

##### Show the last movie/ebook that you have saw/read

   ls  -lAhutr

##### Complete Distro information

   ls b_release -a

##### Compile all C files in a directory

   ls  *.c | while read F; do gcc -Wall -o `echo $F | cut -d . -f 1 - ` $F; done

##### Copy all images to external hard-drive

   ls  *.jpg | xargs -n1 -i cp {} /external-hard-drive/directory

##### Recursively remove .svn directories

   ls  -RAx | grep "svn:$" | sed -e "s/svn:/svn/" | xargs rm -fr

##### Remove all zero size files from current directory (not recursive)

   ls  -s|grep -E "^ *0"|sed "s/^ *0 //g"|xargs -i rm "{}"

##### List all file and directory on user's home with details

   ls  /home/user | xargs ls -lhR | less

##### list with full path

   ls  -a | sed "s#^#${PWD}/#"

##### List only directories, one per line

   ls  -l | grep ^d  | sed 's:.*\ ::g'

##### gunzip all .gz file in current dir

   ls  | grep .gz >> list.txt && cat list.txt | while read x ; do gunzip -d $x ; done && rm -rf list.txt

##### Delete all files and folders except one file/dir

   ls  -R | grep -v skipme | xargs rm -Rf

##### show the last modified date on directory and file

   ls  -al

##### Watch Network Service Activity in Real-time

   ls of -i

##### Combining text files into one file

   ls  | grep *.txt | while read file; do cat $file >> ./output.txt; done;

##### To display a listing of files and directory

   ls  -l

##### To list all files in your home directory

   ls  ~

##### listar arquivos com permiss?o de acesso

   ls  -l

##### To list all files in your home directory

   ls  -l ~

##### To list all files in your home directory

   ls  -l $HOME

##### List all files & directories in the current directory

   ls  -la

##### ls -qaltr   # list directory in chronological order, most recent files at end of list

   ls  -qaltr   # list directory in chronological order, most recent files at end of list

##### List just the executable files (or directories) in current directory

   ls  *(.x)

##### find the 10 latest (modified) files

   ls  -1t | head -n10

##### Find the dates your debian/ubuntu packages were installed.

   ls  /var/lib/dpkg/info/*.list -lht |less

##### CPU architecture details

   ls cpu

##### Watch Network Service Activity in Real-time

   ls of -i

##### Show 'Hardware path'-style tree of all devices in Linux

   ls hw -short

##### Display which distro is installed

   ls b_release -a

##### Watch Network Service Activity in Real-time

   ls of -i

##### ls not pattern

   ls  !(*.gz)

##### Show apps that use internet connection at the moment.

   ls of -P -i -n | cut -f 1 -d " "| uniq | tail -n +2

##### Huh? Where did all my precious space go ?

   ls  -la | sort -k 5bn

##### List open IPv4 connections

   ls of -Pnl +M -i4

##### Lists installed kernels

   ls  -1 /lib/modules

##### List files opened by a PID

   ls of -p 15857

##### Watch Network Service Activity in Real-time

   ls of -i

##### Show apps that use internet connection at the moment. (Multi-Language)

   ls of -P -i -n

##### List .log files open by a pid

   ls of -p 1234 | grep -E "\.log$" | awk '{print $NF}'

##### Octal ls

   ls  -l | awk '{k=0;for(i=0;i<=8;i++)k+=((substr($1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf("%0o ",k);print}'

##### get a random command

   ls  /usr/bin | shuf -n 1

##### Smart renaming

   ls  | sed -n -r 's/banana_(.*)_([0-9]*).asc/mv & banana_\2_\1.asc/gp' | sh

##### Watch Network Service Activity in Real-time

   ls of -i

##### Show apps that use internet connection at the moment. (Multi-Language)

   ls of -P -i -n

##### Delete all but latest file in a directory

   ls  -pt1 | sed '/.*\//d' | sed 1d | xargs rm

##### When was your OS installed?

   ls  -lct /etc/ | tail -1 | awk '{print $6, $7, $8}'

##### Sort files by size

   ls  -l | sort -nk5

##### Create a nifty overview of the hardware in your computer

   ls hw -html > hardware.html

##### Lists all listening ports together with the PID of the associated process

   ls of -Pan -i tcp -i udp

##### Watch Network Service Activity in Real-time

   ls of -i

##### Show apps that use internet connection at the moment. (Multi-Language)

   ls of -P -i -n

##### list your device drivers

   ls pci -vv

##### View details of network activity, malicious or otherwise within a port range.

   ls of -i :555-7000

##### list processes with established tcp connections (without netstat)

   ls of -i -n | grep ESTABLISHED

##### Watch Network Service Activity in Real-time

   ls of -i

##### Show apps that use internet connection at the moment. (Multi-Language)

   ls of -P -i -n

##### Insert a comment on command line for reminder

   ls  -alh #mycomment

##### determine if tcp port is open

   ls of -i :22

##### Follow the most recently updated log files

   ls  -drt /var/log/* | tail -n5 | xargs sudo tail -n0 -f

##### Watch Network Service Activity in Real-time

   ls of -i

##### Show apps that use internet connection at the moment. (Multi-Language)

   ls of -P -i -n

##### List all files opened by a particular command

   ls of -c dhcpd

##### vim read stdin

   ls  | vim +'set bt=nowrite' -

##### Find size in kilobyte of files that are deleted but still in use and therefore consumes diskspace

   ls of -ns | grep REG | grep deleted | awk '{s+=$7/1024} END {print s}'

##### gawk gets fixed width field

   ls  -l | gawk -v FIELDWIDTHS='1 3 3 3' '{print $2}'

##### Watch Network Service Activity in Real-time

   ls of -i

##### Show apps that use internet connection at the moment. (Multi-Language)

   ls of -P -i -n

##### List processes playing sound

   ls of | grep pcm

##### List directories recursively showing its sizes using only ls and grep

   ls  -lhR | grep -e "total\|:$"

##### Show top running processes by the number of open filehandles they have

   ls of | awk '{print $1}' | sort | uniq -c | sort -rn | head

##### Watch Network Service Activity in Real-time

   ls of -i

##### Show apps that use internet connection at the moment. (Multi-Language)

   ls of -P -i -n

##### List files with quotes around each filename

   ls  -Q

##### Show established network connections

   ls of -i | grep -i estab

##### Watch Network Service Activity in Real-time

   ls of -i

##### Show apps that use internet connection at the moment. (Multi-Language)

   ls of -P -i -n

##### Show latest changed files

   ls  -ltcrh

##### show all established tcp connections on os x

   ls of -iTCP -sTCP:ESTABLISHED | awk '{print $1}' | sort -u

##### for newbies, how to get one line info about all /bin programs

   ls  -1 /bin | xargs -l1 whatis 2>/dev/null | grep -v "nothing appropriate"

##### Watch Network Service Activity in Real-time

   ls of -i

##### Show apps that use internet connection at the moment. (Multi-Language)

   ls of -P -i -n

##### list all executables in your path

   ls  `echo $PATH | sed 's/:/ /g'`

##### check open ports (both ipv4 and ipv6)

   ls of -Pn | grep LISTEN

##### Monitoring file handles used by a particular process

   ls of -c <process name> -r

##### Customize time format of 'ls -l'

   ls  -l time-style=+"%Y-%m-%d %H:%M:%S"

##### list all file extensions in a directory

   ls  -Xp | grep -Eo "\.[^/]+$" | sort | uniq

##### bulk rename files with sed, one-liner

   ls  * | sed -e 'p;s/foo/bar/' | xargs -n2 mv

##### Watch Network Service Activity in Real-time

   ls of -i

##### Show apps that use internet connection at the moment. (Multi-Language)

   ls of -P -i -n

##### Watch Network Service Activity in Real-time

   ls of -i

##### Show apps that use internet connection at the moment. (Multi-Language)

   ls of -P -i -n

##### Watch Network Service Activity in Real-time

   ls of -i

##### Show apps that use internet connection at the moment. (Multi-Language)

   ls of -P -i -n

##### kill all processes using a directory/file/etc

   ls of|grep /somemount/| awk '{print $2}'|xargs kill

##### Slow down the screen output of a command

   ls  -lart|lolcat -a

##### List files by quoting or escaping special characters.

   ls  quoting-style={escape,shell,c}

##### list and sort files by size in reverse order (file size in human readable output)

   ls  -S -lhr

##### Substitute spaces in filename with underscore

   ls  -1 | rename 's/\ /_/'

##### distribution specific information

   ls b_release -a

##### detect partitions

   ls blk -o NAME,TYPE,FSTYPE,LABEL,SIZE,MODEL,MOUNTPOINT

##### rename all jpg files with a prefix and a counter

   ls  *.jpg | grep -n ""  | sed 's,.*,0000&,' | sed 's,0*\(...\):\(.*\).jpg,mv "\2.jpg" "image-\1.jpg",' | sh

##### which process is accessing the CDROM

   ls of -n | grep /media/cdrom

##### ls -hog > a more compact ls -l

   ls  -hog

##### When was your OS installed?

   ls  -ldct /lost+found |awk '{print $6, $7}'

##### list files in mtime order

   ls  -lt | more

##### access to last touched or created file with arrow_up_key immediately after displaying  the file list

   ls a() { ls -lart; history -s "joe \"$(\ls -apt|grep -v /|head -1)\""  ; }

##### Show number of NIC's, ports per nic and PCI address

   ls pci | grep Ether | awk '{ VAR=$1; split(VAR,ARR,"."); count[ARR[1]]++; LINE=$0; split(LINE,LINEARR,":"); LINECOUNT[ARR[1]]=LINEARR[3]; } END { for(i in count) { printf("PCI address: %s\nPorts: %d\nCard Type: %s\n", i, count[i], LINECOUNT[i]) } }'

##### List only the directories

   ls  -l | egrep ^d

##### Show what a given user has open using lsof

   ls of -u www-data

##### ls only directories

   ls  -ad */

##### Show UDID of iPhone

   ls usb -s :`lsusb | grep iPhone | cut -d ' ' -f 4 | sed 's/://'` -v | grep iSerial | awk '{print $3}'

##### List pr. command in megabytes sum of deleted files that are still in use and therefore consumes diskspace

   ls of -ns | grep REG | grep deleted | awk '{a[$1]+=$7;}END{for(i in a){printf("%s %.2f MB\n", i, a[i]/1048576);}}'

##### Delete all but the latest 5 files

   ls  -t | tail +6 | xargs rm

##### Shows physically connected drives (SCSI or SATA)

   ls  /sys/bus/scsi/devices

##### Numeric zero padding file rename

   ls  *.jpg | awk -F'.' '{ printf "%s %04d.%s\n", $0, $1, $2; }' | xargs -n2 mv

##### Show most common words in filenames

   ls  | tr '[[:punct:][:space:]]' '\n' | grep -v "^\s*$" | sort | uniq -c | sort -bn

##### List all open ports and their owning executables

   ls of -i -P | grep -i "listen"

##### check open ports

   ls of -Pni4 | grep LISTEN

##### find listening ports by pid

   ls of -nP +p 24073 | grep -i listen | awk '{print $1,$2,$7,$8,$9}'

##### Batch File Rename with awk and sed

   ls  foo*.jpg | awk '{print("mv "$1" "$1)}' | sed 's/foo/bar/2' | /bin/sh

##### List all active access_logs for currently running Apache or Lighttpd process

   ls of -p $(netstat -ltpn|awk '$4 ~ /:80$/ {print substr($7,1,index($7,"/")-1)}')| awk '$9 ~ /access.log$/ {print $9| "sort -u"}'

##### give me back my sound card

   ls of /dev/snd/pcm*p /dev/dsp | awk ' { print $2 }' | xargs kill

##### List only directories, one per line

   ls  -1d */

##### Show drive names next to their full serial number (and disk info)

   ls blk -do name,model,serial

##### The program listening on port 8080 through IPv6

   ls of -Pnl +M -i6:8080

##### Find all dot files and directories

   ls  -d .*

##### Create a html of information about you harddisk

   ls hw -C disk -html > /tmp/diskinfo.html

##### Show Directories in the PATH Which does NOT Exist

   ls  -d $(echo ${PATH//:/ }) > /dev/null

##### Keep track of diff progress

   ls of -c diff -o -r1 | grep $file

##### show where symlinks are pointing

   ls li() { ls -l color "$@" | awk '{ for(i=9;i<NF;i++){ printf("%s ",$i) } printf("%s\n",$NF) }'; }

##### Sorted, recursive long file listing

   ls r() { find "${@:-.}" -print0 |sort -z |xargs -0 ls $LS_OPTIONS -dla; }

##### Make a playlistfile for mpg321 or other CLI player

   ls  -w 1 > list.m3u

##### Use default value if unassigned

   ls  ${my_dir:=/home}

##### Get names of files in /dev, a USB device is attached to

   ls  -la /dev/disk/by-id/usb-*

##### List all information about all files (in current dir)

   ls  -all

##### find out which directories in /home have the most files currently open

   ls of |awk ' {if ( $0 ~ /home/) print substr($0, index($0,"/home") ) }'|cut -d / -f 1-4|sort|uniq -c|sort -bgr

##### Find partition name using mount point

   ls blk | grep <mountpoint>

##### Show last changed files in a directory

   ls  -t | head

##### find established tcp connections without using netstat!!

   ls of -i -n | grep ESTABLISHED

##### Calculate files' size

   ls  -l | head -n 65535 | awk '{if (NR > 1) total += $5} END {print total/(1024*1024*1024)}'

##### Count number of files in a directory

   ls |wc -l

##### List files with full path

   ls  | sed s#^#$(pwd)/#

##### Sort files by date

   ls  -lrt

##### List open TCP/UDP ports

   ls of -i tcp -i udp

##### prints line numbers

   ls  | sed "/^/=" | sed "N;s/\n/. /"

##### Which processes are listening on a specific port (e.g. port 80)

   ls of -iTCP:80 -sTCP:LISTEN

##### List open files that have no links to them on the filesystem

   ls of +L1

##### Selecting a random file/folder of a folder

   ls  -1 | shuf -n 1

##### show the working directories of running processes

   ls of -bw -d cwd -a -c java

##### list only directories in reverse order

   ls  -ltrhd */

##### List just the executable files (or directories) in current directory

   ls  -F | grep '*$'

##### Show drive names next to their full serial number (and disk info)

   ls  -l /dev/disk/by-id |gawk 'match($11, /[a-z]{3}$/) && match($9, /^ata-/) { gsub("../", ""); print $11,"\t",$9 }' |sort

##### find your release version of your ubuntu / debian distro

   ls b_release -a

##### Generate map of your hardware

   ls topo -p -v whole-system whole-io output.svg

##### List all the files that have been deleted while they were still open.

   ls of | egrep "^COMMAND|deleted"

##### list block level layout

   ls blk

##### Print the last modified file

   ls  -t1 | head -n1

##### Run a command, store the output in a pastebin on the internet and place the URL on the xclipboard

   ls  | curl -F 'sprunge=<-' http://sprunge.us | xclip

##### List the files any process is using

   ls of +p xxxx

##### List only hidden files

   ls  -d .??*

##### Convert embedded spaces in filenames to "_" (underscore)

   ls  -1 | grep " " | awk '{printf("mv \"%s\" ",$0); gsub(/ /,"_",$0); printf("%s\n",$0)}' | sh # rename filenames: spaces to "_"

##### Insert a line for each n lines

   ls  -l | sed "$(while (( ++i < 5 )); do echo "N;"; done) a  COMMIT "

##### Get the dir listing of an executable without knowing its location

   ls  -l `which gcc`

##### Insert a line for each n lines

   ls  -l | awk '{if (NR % 5 == 0) print " COMMIT "; print}'

##### Check if filesystem hangs

   ls  /mnt/badfs &

##### Show every subdirectory (zsh)

   ls  -ld **/*(/)

##### View internet connection activity in a browser

   ls of -nPi | txt2html  > ~/lsof.html

##### Replace "space" char with "dot" char in current directory file names

   ls  -1 | while read a; do mv "$a" `echo $a | sed -e 's/\ /\./g'`; done

##### Short Information about loaded kernel modules

   ls mod | cut -d' ' -f1 | xargs modinfo | egrep '^file|^desc|^dep' | sed -e'/^dep/s/$/\n/g'

##### Find Out My Linux Distribution Name and Version

   ls b_release -ri

##### Get version of loaded kernel module

   ls mod | grep -io MODULENAME| xargs modinfo | grep -iw version

##### find the path of the java called from the command line

   ls  -l $(type -path -all java)

##### Draw kernel module dependancy graph.

   ls mod | awk 'BEGIN{print "digraph{"}{split($4, a, ","); for (i in a) print $1, "->", a[i]}END{print "}"}'|display

##### View network activity of any application or user in realtime

   ls of -r 2 -p PID -i -a

##### Show sorted list of files with sizes more than 1MB in the current dir

   ls  -l | awk '$5 > 1000000' | sort -k5n

##### List only executables installed by a debian package

   ls t=`dpkg -L iptables` ; for f in $lst; do if [ -x $f ] && [ !  -d $f ] ;  then echo $f; fi; done;

##### Show display adapter, available drivers, and driver in use

   ls pci -v | perl -ne '/VGA/../^$/  and /VGA|Kern/ and print'

##### List only directories, one per line

   ls  -1d */

##### Open Port Check

   ls of -ni TCP

##### Find top 5 big files

   ls  -Sh **/*(.Lm+100) | tail -5

##### Top 15 processes with the largest number of open files

   ls of +c 15 | awk '{print $1}' | sort | uniq -c | sort -rn | head

##### LIST FILENAMES OF FILES CREATED TODAY IN CURRENT DIRECTORY

   ls  -l time-style=+%Y-%m-%d | awk "/$(date +'%Y-%m-%d')/ {print \$7}"

##### Show what PID is listening on port 80 on Linux

   ls of -nPi tcp:80

##### ls not pattern

   ls  *[^.gz]

##### Adding Prefix to File name

   ls  *.pdf | while read file; do newfile="CS749__${file}"; mv "${file}" "${newfile}"; done;

##### get the oldest file in a directory

   ls  -1t group-directories-first /path/to/dir/ | tail -n 1

##### Removing Prefix from File name

   ls  *.pdf | while read file; do newfile="${file##CS749__}"; mv "${file}" "${newfile}"; done;

##### count files by type

   ls  | tr [:upper:] [:lower:] | grep -oP '\.[^\.]+$'  | sort | uniq -c | sort

##### List all symbolic links in current directory

   ls  -la | grep ^l

##### find all open files by named process

   ls of -c $processname | egrep 'w.+REG' | awk '{print $9}' | sort | uniq

##### delete multiple files with spaces in filenames (with confirmation)

   ls  -Q * | xargs -p rm

##### Execute a command with the last parameter of a previous command

   ls  !$

##### Graphical tree of sub-directories

   ls  -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\///g' -e 's/^/   /' -e 's/-/|/'

##### Graphical tree of sub-directories

   ls  -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\///g' -e 's/^/   /' -e 's/-/|/'

##### list file descriptors opened by a process

   ls  -al /proc/<PID>/fd

##### Show the UUID of a filesystem or partition

   ls  /dev/disk* | xargs -n 1 -t sudo zdb -l | grep GPTE_

##### Get a list of the erroring cifs entries in fstab

   ls  $(grep cifs /etc/fstab | grep -v ^# |awk ' { print $2 } ') 1>/dev/null

##### unrar all part1 files in a directory

   ls  -1 *.part1.rar | xargs -d '\n' -L 1 unrar e

##### List files with full path

   ls  -d $PWD/*

##### list all files in a directory, sorted in reverse order by modification time, use file descriptors.

   ls  -Fart

##### Generate SHA1 hash for each file in a list

   ls  [FILENAME] | xargs openssl sha1

##### list files in 'hitlar' mode

   ls  -Fhitlar

##### Find files with the same names in several directories.

   ls  -1 . dir2 dir3|sort|uniq -d

##### Find out which process uses an old lib and needs a restart after a system update

   ls of | grep 'DEL.*lib' | sort -k1,1 -u

##### List just the executable files (or directories) in current directory

   ls  -dF `find . -maxdepth 1 \( -perm -1 -o \( -perm -10 -o -perm -100 \) \) -print`

##### find large files

   ls  -s | sort -nr | more

##### Discovering all open files/dirs underneath a directory

   ls of +D <dirname>

##### Tells you where a command is in your $PATH, but also wether it's a link and to what.

   ls  -l `which foo`

##### find the delete file ,which is in use

   ls of -n |grep delete

##### Zip each file in a directory individually with the original file name

   ls  -1 | awk ' { print "zip "$1".zip " $1 } ' | sh

##### Shuffle mp3 files in current folder and play them.

   ls  | grep -i mp3 | sort -R | sed -e 's/.*/"&"/' | xargs mpg123

##### List programs with open ports and connections

   ls of -i

##### Delete all but the latest 5 files, ignoring directories

   ls  -lt|grep ^-|awk 'NR>5 { print $8 }'|xargs -r rm

##### auto complete arguments

   ls  [TAB][TAB]

##### list with full path

   ls  -d $PWD/*

##### list txt files order by time

   ls  -lt time=atime *.txt

##### list with full path

   ls  -d1 $PWD/{.*,*}

##### truncate deleted files from lsof

   ls of|gawk '$4~/txt/{next};/REG.*\(deleted\)$/{printf ">/proc/%s/fd/%d\n", $2,$4}'

##### list all file extensions in a directory

   ls  | grep -Eo "\..+" | sort -u

##### GZip all files in a directory separately

   ls  | xargs -n1 gzip

##### export iPad App list to txt file

   ls  "~/Music/iTunes/iTunes Media/Mobile Applications" > filepath

##### Show directories

   ls  -l | grep ^d

##### export iPad, iPhone App list to txt file

   ls  "`defaults read com.apple.itunes NSNavLastRootDirectory`/iTunes/iTunes Music/Mobile Applications/" > filepath

##### Find your graphics chipset

   ls pci |grep VGA

##### List empty any directories

   ls  -ld **/*(/^F)

##### Count all the files in the directory and child directories

   ls  -d */* | wc -l

##### View internet connection activity in a browser

   ls of -nPi | txt2html  > ~/lsof.html | gnome-open lsof.html

##### ls -qahlSr    # list all files in size order - largest last

   ls  -qahlSr    # list all files in size order - largest last

##### Get information on your graphics card on linux (such as graphics memory size)

   ls pci -v -s `lspci | awk '/VGA/{print $1}'`

##### Short Information about loaded kernel modules

   ls mod | sed -e '1d' -e 's/\(\([^ ]*\) \)\{1\}.*/\2/' | xargs modinfo | sed -e '/^dep/s/$/\n/g' -e '/^file/b' -e '/^desc/b' -e '/^dep/b' -e d

##### find the biggest file in current folder

   ls  -S|head -1find

##### pngcrush all .png files in the directory

   ls  *.png | while read line; do pngcrush -brute $line compressed/$line; done

##### list with full path

   ls  -d1 $PWD/*

##### Get the /dev/disk/by-id fragment for a physical drive

   ls  -l /dev/disk/by-id/ | grep '/sda$' | grep -o 'ata[^ ]*'

##### Show a listing of open mailbox files (or whatever you want to modify it to show)

   ls of | grep "/var/spool/mail/"

##### check to see what is running on a specific port number

   ls of -iTCP:8080 -sTCP:LISTEN

##### Show seconds since modified of newest modified file in directory

   ls  -atr /home/reports/*.csv -o time-sty=+%s | tail -1 | awk '{print systime()-$5}'

##### Know your distro

   ls b-release -a

##### Find removed files still in use via /proc

   ls  -l /proc/*/fd/* | grep 'deleted'| grep "\/proc.*\file-name-part"

##### vim read stdin

   ls  | view -

##### List all symbolic links in the current directory

   ls  -l `find . -maxdepth 1 -type l -print`

##### List information about a specific physical volume (eg-hdisk1)

   ls pv hdisk1

##### To show which desktop environment I have installed

   ls  -l /usr/share/xsessions/

##### Tracklist reaplace backspace to '-'

   ls |grep .mp3 >list.txt; while read line; do newname=`echo $line|sed 's/\ /-/g'|sort`; newname=`echo $newname|tr -s '-' `; echo $newname; echo $newname>> tracklist.txt;mv "$line" "$newname"; done <list.txt; rm list.txt

##### List open file descriptor count by PID

   ls of | cut -f 1 -d ' ' | uniq -c | sort -rn | head -n 10

##### Do some learning...

   ls  /usr/bin | xargs whatis | grep -v nothing | less

##### Get the total length of all video / audio in the current dir (and below) in H:m:s

   ls |grep ".wav"|parallel -j$(nproc) soxi -D {}|awk '{SUM += $1} END { printf "%d:%d:%d\n",SUM/3600,SUM%3600/60,SUM%60}'

##### identify active network connections

   ls of -i -P +c 0 +M | grep -i "$1"

##### Keep the last 10 moodle backups

   ls  -t /mcdata/archive/learn/backup-moodle2-course-* | tail -n +11 | xargs -I {} rm {}

##### Memorable recursive directory listing

   ls  -ltrapR

##### List only directories, one per line

   ls  -l | grep ^d  | sed 's:.*\ ::g'

##### lsof - cleaned up for just open listening ports, the process, and the owner of the process

   ls of -iTCP -sTCP:LISTEN

##### Get ls to only show directories under .

   ls  -al | grep ^d

##### urldecoding

   ls  * | while read fin;do fout=$(echo -n $fin | sed -e's/%\([0-9A-F][0-9A-F]\)/\\\\\x\1/g' | xargs echo -e);if [ "$fout" != "$fin" ];then echo "mv '$fin' '$fout'";fi;done | bash -x

##### Grabs Open Files and Then Greps Them

   ls of | grep "stuff"

##### Get the file name having biggest size in directory.

   ls  -l| sort +4n|tail -1| awk '{print $NF}'

##### ls output with mode in octal

   ls o(){ jot -w '%04d' 7778 0000 7777 |sed '/[89]/d;s,.*,printf '"'"'& '"'"';chmod & '"$1"';ls -l '"$1"'|sed s/-/./,' \ |sh \ |{ echo "lso(){";echo "ls \$@ \\";echo " |sed '";sed 's, ,@,2;s,@.*,,;s,\(.* \)\(.*\),s/\2/\1/,;s, ,,';echo \';echo };};}

##### Read recursive directory listings at leisure

   ls  -lR | less

##### Batch rename of files (names from file)

   ls  | paste delimiters='*' - ./zzz | awk ' BEGIN{FS="*";} { system("mv " $1 " \"" $2 "\"") }'

##### Nicer ls, directories first and colorized (MacOS)

   ls  -g almost-all group-directories-first color no-group human-readable classify

##### Display any udp/tcp connections by process name or by process id

   ls of -nP -c COMMAND | egrep -o '(TCP|UDP).*$' | sort -u

##### List your MACs address

   ls mac() { ifconfig -a | sed '/eth\|wl/!d;s/   Link.*HWaddr//' ; }

##### List all symbolic links in current directory

   ls  -l | grep "\->"

##### extract all tgz in current dir

   ls  *tgz | xargs -n1 tar xzf

##### List latest 5 modified files recursively

   ls  -laht `find / -name "*.*" -type f -newermt "2016-04-05" ! -newermt "2016-04-10"`|head -5

##### show 20 last modified files in current directory including subdirectories

   ls  -tl **/*(om[1,20])

##### file sizes of current directory

   ls  -la | awk '{print $5, " " ,$9}' | sort -rn

##### Simulate a tree command

   ls  -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\///g' -e 's/^/   /' -e 's/-/|/'

##### list files by testing the ownership

   ls  -la | awk '$3 == "oracle" || $3 == "root" {print $9}'

##### lsb_release -a

   ls b_release -a

##### find the process that is using a certain port e.g. port 3000

   ls of -P | grep ':3000'

##### Remove / delete file with ? or special characters in filename

   ls  -il; find * \( -type d -prune \) -o -inum <NUM> -exec rm -i {} \;

##### ls -altr | grep ^d

   ls  -altr | grep ^d

##### Using Grep & Xargs to clean folders

   ls  | grep -Ze ".*rar" | xargs -d '\n' -I {} mv {} backup-folder

##### List just the executable files (or directories) in current directory

   ls  -l|awk ''/-x./' && !'/drw/' {print}'

##### Show all listening and established ports TCP and UDP together with the PID of the associated process

   ls of -ni

##### Display IP addresses Pidgin IM Client is connected to

   ls of -p `pidof pidgin` | awk '{ print $9 }'|egrep `hostname` | grep -o ">[^:]\+:" | tr -d ":>" | while read line; do host $line; done;

##### Graphically display directory structure

   ls  -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\///g' -e 's/^/   /' -e 's/-/|/'

##### total number of files inside current directory

   ls  -R | wc -l

##### Print all open regular files sorted by the number of file handles open to each.

   ls of -a -d 1-99 -Fn / | grep ^n | cut -b2- | sort | uniq -c | sort -n

##### Display "ls -l" output with color in less

   ls  -l color | less -R

##### Shows size of dirs and files, hidden or not, sorted.

   ls  -a | du max-depth=1 -h 2>/dev/null |sort -h

##### Across an entire subtree, list not-empty directories that have no child-directories, globally sorted by their respective mtime

   ls  -ltr directory $(find . -regex "./.*[^/]*\'" -type f | xargs -n 1 dirname | sort | uniq)

##### list files other than, those, where you know, part of the name (e.g. file extension)

   ls  -l !(*.part)

##### Check which files are opened by Firefox then sort by largest size.

   ls of -p $(pidof firefox) | awk '/.mozilla/ { s = int($7/(2^20)); if(s>0) print (s)" MB  "$9 | "sort -rn" }'

##### When was your OS installed?

   ls  -lct /etc | tail -1 | awk '{print $6, $7}'

##### Replace spaces in filenames with underscorees

   ls  | while read f; do mv "$f" "${f// /_}";done

##### what?s running on a given port on your machine?

   ls of -i -n -P | grep :80

##### Quick and dirty recursive directory comparison

   ls  -Rl dir1/ > /tmp/dir1.ls; ls -Rl dir2/ > /tmp/dir2.ls; meld /tmp/dir1.ls /tmp/dir2.ls

##### loop over a set of items that contain spaces

   ls  | while read ITEM; do echo "$ITEM"; done

##### Count total number of subdirectories in current directory starting with specific name.

   ls  -d1 pattern*/ | wc -l

##### ls sort by human readable size (redhat)

   ls  -lSr

##### Picture Renamer

   ls  -1 *.jpg | while read fn; do export pa=`exiv2 "$fn" | grep timestamp | awk '{ print $4 " " $5 ".jpg"}' | tr ":" "-"`; mv "$fn" "$pa"; done

##### list executed files current dir

   ls  -al | awk '/^-rwx/ {print $9}'

##### turn lines in columns in csv format

   ls  | sed -n '1h;2,$H;${g;s/\n/,/g;p}'

##### use sed to simulate rpad and lpad

   ls  / | sed -e :a -e 's/^.\{1,15\}$/&_/;ta'

##### delete the files from the given directory except the PDF file

   ls  -1 $PATH*/* | xargs file | awk -F":" '!($2~/PDF document/){print $1}' |xargs rm -rf

##### Indent all the files in a project using emacs

   ls t=`find . -iname \*.c -or -iname \*.h`; for i in $lst; do emacs -nw -q $i eval "(mark-whole-buffer)" eval "(indent-region (point-min) (point-max) nil)" eval "(save-buffer)" kill; done

##### Order all files oldest to newest then get the last one touched

   ls  -lT -rt | grep "^-" | awk 'BEGIN {START=2002} (START <= $9){ print $10 ;START=$9 }' | tail -1

##### SAR - Get the monthly queue length average using sar -q for both the runq-sz and plist-sz.

   ls  /var/log/sa/sa[0-9]*|xargs -I '{}' sar -q -f {}| awk '/Average/'|awk '{runq+=$2;plist+=$3}END{print "average runq-sz:",runq/NR; print "average plist-sz: "plist/NR}'

##### list all the files and hidden files

   ls  -a

##### Sort files by size

   ls  -al | sort +4n

##### Remap Nic aliases from PCI location

   ls pci -vv | grep 'Ethernet\|Serial' | awk 'NR == 1{ printf $1 }  NR == 2 { print " mac " $7 }' | sed ?e 's/-/:/g' -e 's/:f[ef]:f[ef]//g' -e 's/01:00.0/eth0/g' -e 's/01:00.1/eth1/g' -e 's/01:00.2/eth2/g' -e 's/01:00.3/eth3/g' > /etc/iftab && ifrename

##### display directory

   ls  -d .*"/" *"/"

##### Sort files by size

   ls  -al | sort +4n

##### Remap Nic aliases from PCI location

   ls pci -vv | grep 'Ethernet\|Serial' | awk 'NR == 1{ printf $1 }  NR == 2 { print " mac " $7 }' | sed ?e 's/-/:/g' -e 's/:f[ef]:f[ef]//g' -e 's/01:00.0/eth0/g' -e 's/01:00.1/eth1/g' -e 's/01:00.2/eth2/g' -e 's/01:00.3/eth3/g' > /etc/iftab && ifrename

##### display directory

   ls  -d .*"/" *"/"

##### list all file extensions in a directory

   ls  -Xp /path/to/dir | grep -Eo "\.[^/]+$" | uniq

##### find all c and cpp files except the ones in the unit-test and android subdirectories

   ls  **/*.c(|pp)~(unit-test|android)/*

##### list all files are greater than 10mb

   ls  -lahS $(find / -type f -size +10000k)

##### resize all JPG images in folder and create new images (w/o overwriting)

   ls  *.JPG | cut -d . -f 1 | xargs -L1 -i convert -resize 684 {}.JPG {}.jpg

##### Show which process is blocking umount (Device or resource is busy)

   ls of /folder

##### Space used by files listed by ls -lt

   ls  -lt | awk '{sum+=$5} END {print sum}'

##### Show drive names next to their full serial number (and disk info)

   ls  -l /dev/disk/by-id |grep -v "wwn-" |egrep "[a-zA-Z]{3}$" |sed 's/\.\.\/\.\.\///' |sed -E 's/.*[0-9]{2}:[0-9]{2}\s//' |sed -E 's/->\ //' |sort -k2 |awk '{print $2,$1}' |sed 's/\s/\t/'

##### Resume incomplete youtube-dl video files

   ls  *.part | sed 's/^.*-\(.\{11,11\}\)\.mp4\.part$/\1/g' - | youtube-dl -i -f mp4 -a -

##### get size of a file

   ls  -lh file-name | awk '{ print $5}'

##### List only those files that has all uppercase letters in their names (e.g. README)

   ls  | grep  '^[A-Z0-9]*$'

##### List directory sorted by last modified date. Tail of it.

   ls  -ls -tr | tail

##### Sort files by size

   ls  -l | sort +4n for ascending order or ls -l | sort +4nr for descending order

##### Recursively list all of the files in a directory, group them by extension and calculate the average of the file sizes in each group

   ls  -r | ?{-not $_.psiscontainer} | group extension | select name, count, @{n='average'; e={($_.group | measure -a length).average}} | ft -a @{n='Extension'; e={$_.name}}, count, @{n='Average Size (KB)'; e={$_.average/1kb}; f='{0:N2}'}

##### List all commands present on system

   ls  ${PATH//:/ }

##### truncate deleted files from lsof

   ls of | grep -i deleted | grep REG | grep -v txt | ruby -r 'pp' -e 'STDIN.each do |v| a =  v.split(/ +/); puts `:> /proc/#{a[1]}/fd/#{a[3].chop}`; end'

##### ls to show hidden file, but not . or ..

   ls  -A

##### ls /EMRCV5/

   ls  /EMRCV5/

##### List users in a group

   ls grp() { read GID USERS <<< "$(grep "^$1:" /etc/group | cut -d: -f3,4 | tr ':,' ' ')" ; echo -e "${USERS// /\n}" | egrep -v "^($1)?$" ; egrep :[0-9]+:$GID: /etc/passwd | cut -d: -f1 ; }

##### List visible files ordered by modification date and shows date in full iso format

   ls  -tl time-style=full-iso

##### find builtin in bash v4+

   ls  -l /etc/**/*killall

##### list directories only

   ls  -l | grep ^d

##### Updates file in all the zips

   ls  *.zip|awk '{$a="zip -fo "$1" FILENAME"; system($a);}'

##### Short Information about loaded kernel modules

   ls mod | tail -n +2 | cut -d' ' -f1 | xargs modinfo | egrep '^file|^desc|^dep' | sed -e'/^dep/s/$/\n/g'

##### Let your computer read ls for you instead of reading it on your own

   ls  | espeak

##### convert png images to jpg and optimize them

   ls  *.png | cut -d . -f 1 | xargs -L1 -i convert -strip -interlace Plane -quality 80 {}.png {}.jpg

##### Get the dir listing of an executable without knowing its location

   ls  -l =gcc

##### List only the directories

   ls  -d */

##### Keep a copy of the raw Youtube FLV,MP4,etc stored in /tmp/

   ls of -n -P|grep FlashXX|awk '{ print "/proc/" $2 "/fd/" substr($4, 1, length($4)-1) }'|while read f;do newname=$(exiftool -FileModifyDate -FileType -t -d %Y%m%d%H%M%S $f|cut -f2|tr '\n' '.'|sed 's/\.$//');echo "$f -> $newname";cp $f ~/Vids/$newname;done

##### list directories only

   ls  -d */

##### List only directory names

   ls  -d */

##### printing barcodes

   ls  /home | head -64 | barcode -t 4x16 | lpr

##### Find out my Linux distribution name and version

   ls b_release -a

##### direct a single stream of input (ls) to multiple readers (grep & wc) without using temporary files

   ls  |tee >(grep xxx |wc >xxx.count) >(grep yyy |wc >yyy.count) |grep zzz |wc >zzz.count

##### which program is this port belongs to ?

   ls of -i tcp:80

##### Draw kernel module dependancy graph.

   ls mod | perl -e 'print "digraph \"lsmod\" {";<>;while(<>){@_=split/\s+/; print "\"$_[0]\" -> \"$_\"\n" for split/,/,$_[3]}print "}"' | dot -Tpng | display -

##### ls not pattern

   ls  -I "*.gz"

##### List dot-files and dirs, but not . or ..

   ls  -A

##### which process has a port open

   ls of -i :80

##### Watch Network Service Activity in Real-time

   ls of -i

##### ls -qaltr   # list directory in chronological order, most recent files at end of list

   ls  -qaltr   # list directory in chronological order, most recent files at end of list

##### List just the executable files (or directories) in current directory

   ls  *(.x)

##### find the 10 latest (modified) files

   ls  -1t | head -n10

##### Find the dates your debian/ubuntu packages were installed.

   ls  /var/lib/dpkg/info/*.list -lht |less

##### CPU architecture details

   ls cpu

##### Watch Network Service Activity in Real-time

   ls of -i

##### Show 'Hardware path'-style tree of all devices in Linux

   ls hw -short

##### Display which distro is installed

   ls b_release -a

##### Watch Network Service Activity in Real-time

   ls of -i

##### ls not pattern

   ls  !(*.gz)

##### Show apps that use internet connection at the moment.

   ls of -P -i -n | cut -f 1 -d " "| uniq | tail -n +2

##### Huh? Where did all my precious space go ?

   ls  -la | sort -k 5bn

##### List open IPv4 connections

   ls of -Pnl +M -i4

##### Lists installed kernels

   ls  -1 /lib/modules

##### List files opened by a PID

   ls of -p 15857

##### Watch Network Service Activity in Real-time

   ls of -i

##### Show apps that use internet connection at the moment. (Multi-Language)

   ls of -P -i -n

##### List .log files open by a pid

   ls of -p 1234 | grep -E "\.log$" | awk '{print $NF}'

##### Octal ls

   ls  -l | awk '{k=0;for(i=0;i<=8;i++)k+=((substr($1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf("%0o ",k);print}'

##### get a random command

   ls  /usr/bin | shuf -n 1

##### Smart renaming

   ls  | sed -n -r 's/banana_(.*)_([0-9]*).asc/mv & banana_\2_\1.asc/gp' | sh

##### Watch Network Service Activity in Real-time

   ls of -i

##### Show apps that use internet connection at the moment. (Multi-Language)

   ls of -P -i -n

##### Delete all but latest file in a directory

   ls  -pt1 | sed '/.*\//d' | sed 1d | xargs rm

##### When was your OS installed?

   ls  -lct /etc/ | tail -1 | awk '{print $6, $7, $8}'

##### Sort files by size

   ls  -l | sort -nk5

##### Create a nifty overview of the hardware in your computer

   ls hw -html > hardware.html

##### Lists all listening ports together with the PID of the associated process

   ls of -Pan -i tcp -i udp

##### Watch Network Service Activity in Real-time

   ls of -i

##### Show apps that use internet connection at the moment. (Multi-Language)

   ls of -P -i -n

##### list your device drivers

   ls pci -vv

##### View details of network activity, malicious or otherwise within a port range.

   ls of -i :555-7000

##### list processes with established tcp connections (without netstat)

   ls of -i -n | grep ESTABLISHED

##### Watch Network Service Activity in Real-time

   ls of -i

##### Show apps that use internet connection at the moment. (Multi-Language)

   ls of -P -i -n

##### Insert a comment on command line for reminder

   ls  -alh #mycomment

##### determine if tcp port is open

   ls of -i :22

##### Follow the most recently updated log files

   ls  -drt /var/log/* | tail -n5 | xargs sudo tail -n0 -f

##### Watch Network Service Activity in Real-time

   ls of -i

##### Show apps that use internet connection at the moment. (Multi-Language)

   ls of -P -i -n

##### List all files opened by a particular command

   ls of -c dhcpd

##### vim read stdin

   ls  | vim +'set bt=nowrite' -

##### Find size in kilobyte of files that are deleted but still in use and therefore consumes diskspace

   ls of -ns | grep REG | grep deleted | awk '{s+=$7/1024} END {print s}'

##### gawk gets fixed width field

   ls  -l | gawk -v FIELDWIDTHS='1 3 3 3' '{print $2}'

##### Watch Network Service Activity in Real-time

   ls of -i

##### Show apps that use internet connection at the moment. (Multi-Language)

   ls of -P -i -n

##### List processes playing sound

   ls of | grep pcm

##### List directories recursively showing its sizes using only ls and grep

   ls  -lhR | grep -e "total\|:$"

##### Show top running processes by the number of open filehandles they have

   ls of | awk '{print $1}' | sort | uniq -c | sort -rn | head

##### Watch Network Service Activity in Real-time

   ls of -i

##### Show apps that use internet connection at the moment. (Multi-Language)

   ls of -P -i -n

##### List files with quotes around each filename

   ls  -Q

##### Show established network connections

   ls of -i | grep -i estab

##### Watch Network Service Activity in Real-time

   ls of -i

##### Show apps that use internet connection at the moment. (Multi-Language)

   ls of -P -i -n

##### Show latest changed files

   ls  -ltcrh

##### show all established tcp connections on os x

   ls of -iTCP -sTCP:ESTABLISHED | awk '{print $1}' | sort -u

##### for newbies, how to get one line info about all /bin programs

   ls  -1 /bin | xargs -l1 whatis 2>/dev/null | grep -v "nothing appropriate"

##### Watch Network Service Activity in Real-time

   ls of -i

##### Show apps that use internet connection at the moment. (Multi-Language)

   ls of -P -i -n

##### list all executables in your path

   ls  `echo $PATH | sed 's/:/ /g'`

##### check open ports (both ipv4 and ipv6)

   ls of -Pn | grep LISTEN

##### Monitoring file handles used by a particular process

   ls of -c <process name> -r

##### Customize time format of 'ls -l'

   ls  -l time-style=+"%Y-%m-%d %H:%M:%S"

##### list all file extensions in a directory

   ls  -Xp | grep -Eo "\.[^/]+$" | sort | uniq

##### bulk rename files with sed, one-liner

   ls  * | sed -e 'p;s/foo/bar/' | xargs -n2 mv

##### Watch Network Service Activity in Real-time

   ls of -i

##### Show apps that use internet connection at the moment. (Multi-Language)

   ls of -P -i -n

##### kill all processes using a directory/file/etc

   ls of|grep /somemount/| awk '{print $2}'|xargs kill

##### Watch Network Service Activity in Real-time

   ls of -i

##### Show apps that use internet connection at the moment. (Multi-Language)

   ls of -P -i -n

##### Slow down the screen output of a command

   ls  -lart|lolcat -a

##### List files by quoting or escaping special characters.

   ls  quoting-style={escape,shell,c}

##### list and sort files by size in reverse order (file size in human readable output)

   ls  -S -lhr

##### Substitute spaces in filename with underscore

   ls  -1 | rename 's/\ /_/'

##### distribution specific information

   ls b_release -a

##### detect partitions

   ls blk -o NAME,TYPE,FSTYPE,LABEL,SIZE,MODEL,MOUNTPOINT

##### rename all jpg files with a prefix and a counter

   ls  *.jpg | grep -n ""  | sed 's,.*,0000&,' | sed 's,0*\(...\):\(.*\).jpg,mv "\2.jpg" "image-\1.jpg",' | sh

##### which process is accessing the CDROM

   ls of -n | grep /media/cdrom

##### ls -hog > a more compact ls -l

   ls  -hog

##### When was your OS installed?

   ls  -ldct /lost+found |awk '{print $6, $7}'

##### list files in mtime order

   ls  -lt | more

##### access to last touched or created file with arrow_up_key immediately after displaying  the file list

   ls a() { ls -lart; history -s "joe \"$(\ls -apt|grep -v /|head -1)\""  ; }

##### Show number of NIC's, ports per nic and PCI address

   ls pci | grep Ether | awk '{ VAR=$1; split(VAR,ARR,"."); count[ARR[1]]++; LINE=$0; split(LINE,LINEARR,":"); LINECOUNT[ARR[1]]=LINEARR[3]; } END { for(i in count) { printf("PCI address: %s\nPorts: %d\nCard Type: %s\n", i, count[i], LINECOUNT[i]) } }'

##### List only the directories

   ls  -l | egrep ^d

##### Show what a given user has open using lsof

   ls of -u www-data

##### ls only directories

   ls  -ad */

##### Show UDID of iPhone

   ls usb -s :`lsusb | grep iPhone | cut -d ' ' -f 4 | sed 's/://'` -v | grep iSerial | awk '{print $3}'

##### List pr. command in megabytes sum of deleted files that are still in use and therefore consumes diskspace

   ls of -ns | grep REG | grep deleted | awk '{a[$1]+=$7;}END{for(i in a){printf("%s %.2f MB\n", i, a[i]/1048576);}}'

##### Delete all but the latest 5 files

   ls  -t | tail +6 | xargs rm

##### Shows physically connected drives (SCSI or SATA)

   ls  /sys/bus/scsi/devices

##### Numeric zero padding file rename

   ls  *.jpg | awk -F'.' '{ printf "%s %04d.%s\n", $0, $1, $2; }' | xargs -n2 mv

##### Show most common words in filenames

   ls  | tr '[[:punct:][:space:]]' '\n' | grep -v "^\s*$" | sort | uniq -c | sort -bn

##### List all open ports and their owning executables

   ls of -i -P | grep -i "listen"

##### check open ports

   ls of -Pni4 | grep LISTEN

##### find listening ports by pid

   ls of -nP +p 24073 | grep -i listen | awk '{print $1,$2,$7,$8,$9}'

##### Batch File Rename with awk and sed

   ls  foo*.jpg | awk '{print("mv "$1" "$1)}' | sed 's/foo/bar/2' | /bin/sh

##### List all active access_logs for currently running Apache or Lighttpd process

   ls of -p $(netstat -ltpn|awk '$4 ~ /:80$/ {print substr($7,1,index($7,"/")-1)}')| awk '$9 ~ /access.log$/ {print $9| "sort -u"}'

##### give me back my sound card

   ls of /dev/snd/pcm*p /dev/dsp | awk ' { print $2 }' | xargs kill

##### List only directories, one per line

   ls  -1d */

##### Show drive names next to their full serial number (and disk info)

   ls blk -do name,model,serial

##### The program listening on port 8080 through IPv6

   ls of -Pnl +M -i6:8080

##### Find all dot files and directories

   ls  -d .*

##### Create a html of information about you harddisk

   ls hw -C disk -html > /tmp/diskinfo.html

##### Show Directories in the PATH Which does NOT Exist

   ls  -d $(echo ${PATH//:/ }) > /dev/null

##### Keep track of diff progress

   ls of -c diff -o -r1 | grep $file

##### show where symlinks are pointing

   ls li() { ls -l color "$@" | awk '{ for(i=9;i<NF;i++){ printf("%s ",$i) } printf("%s\n",$NF) }'; }

##### Sorted, recursive long file listing

   ls r() { find "${@:-.}" -print0 |sort -z |xargs -0 ls $LS_OPTIONS -dla; }

##### Make a playlistfile for mpg321 or other CLI player

   ls  -w 1 > list.m3u

##### Use default value if unassigned

   ls  ${my_dir:=/home}

##### Get names of files in /dev, a USB device is attached to

   ls  -la /dev/disk/by-id/usb-*

##### List all information about all files (in current dir)

   ls  -all

##### find out which directories in /home have the most files currently open

   ls of |awk ' {if ( $0 ~ /home/) print substr($0, index($0,"/home") ) }'|cut -d / -f 1-4|sort|uniq -c|sort -bgr

##### Find partition name using mount point

   ls blk | grep <mountpoint>

##### Show last changed files in a directory

   ls  -t | head

##### find established tcp connections without using netstat!!

   ls of -i -n | grep ESTABLISHED

##### Calculate files' size

   ls  -l | head -n 65535 | awk '{if (NR > 1) total += $5} END {print total/(1024*1024*1024)}'

##### Count number of files in a directory

   ls |wc -l

##### List files with full path

   ls  | sed s#^#$(pwd)/#

##### Sort files by date

   ls  -lrt

##### List open TCP/UDP ports

   ls of -i tcp -i udp

##### prints line numbers

   ls  | sed "/^/=" | sed "N;s/\n/. /"

##### Which processes are listening on a specific port (e.g. port 80)

   ls of -iTCP:80 -sTCP:LISTEN

##### List open files that have no links to them on the filesystem

   ls of +L1

##### Selecting a random file/folder of a folder

   ls  -1 | shuf -n 1

##### show the working directories of running processes

   ls of -bw -d cwd -a -c java

##### list only directories in reverse order

   ls  -ltrhd */

##### List just the executable files (or directories) in current directory

   ls  -F | grep '*$'

##### Show drive names next to their full serial number (and disk info)

   ls  -l /dev/disk/by-id |gawk 'match($11, /[a-z]{3}$/) && match($9, /^ata-/) { gsub("../", ""); print $11,"\t",$9 }' |sort

##### find your release version of your ubuntu / debian distro

   ls b_release -a

##### Generate map of your hardware

   ls topo -p -v whole-system whole-io output.svg

##### List all the files that have been deleted while they were still open.

   ls of | egrep "^COMMAND|deleted"

##### list block level layout

   ls blk

##### Print the last modified file

   ls  -t1 | head -n1

##### Run a command, store the output in a pastebin on the internet and place the URL on the xclipboard

   ls  | curl -F 'sprunge=<-' http://sprunge.us | xclip

##### List the files any process is using

   ls of +p xxxx

##### List only hidden files

   ls  -d .??*

##### Convert embedded spaces in filenames to "_" (underscore)

   ls  -1 | grep " " | awk '{printf("mv \"%s\" ",$0); gsub(/ /,"_",$0); printf("%s\n",$0)}' | sh # rename filenames: spaces to "_"

##### Insert a line for each n lines

   ls  -l | sed "$(while (( ++i < 5 )); do echo "N;"; done) a  COMMIT "

##### Get the dir listing of an executable without knowing its location

   ls  -l `which gcc`

##### Insert a line for each n lines

   ls  -l | awk '{if (NR % 5 == 0) print " COMMIT "; print}'

##### Check if filesystem hangs

   ls  /mnt/badfs &

##### Show every subdirectory (zsh)

   ls  -ld **/*(/)

##### View internet connection activity in a browser

   ls of -nPi | txt2html  > ~/lsof.html

##### Replace "space" char with "dot" char in current directory file names

   ls  -1 | while read a; do mv "$a" `echo $a | sed -e 's/\ /\./g'`; done

##### Short Information about loaded kernel modules

   ls mod | cut -d' ' -f1 | xargs modinfo | egrep '^file|^desc|^dep' | sed -e'/^dep/s/$/\n/g'

##### Find Out My Linux Distribution Name and Version

   ls b_release -ri

##### Get version of loaded kernel module

   ls mod | grep -io MODULENAME| xargs modinfo | grep -iw version

##### find the path of the java called from the command line

   ls  -l $(type -path -all java)

##### Draw kernel module dependancy graph.

   ls mod | awk 'BEGIN{print "digraph{"}{split($4, a, ","); for (i in a) print $1, "->", a[i]}END{print "}"}'|display

##### View network activity of any application or user in realtime

   ls of -r 2 -p PID -i -a

##### Show sorted list of files with sizes more than 1MB in the current dir

   ls  -l | awk '$5 > 1000000' | sort -k5n

##### List only executables installed by a debian package

   ls t=`dpkg -L iptables` ; for f in $lst; do if [ -x $f ] && [ !  -d $f ] ;  then echo $f; fi; done;

##### Show display adapter, available drivers, and driver in use

   ls pci -v | perl -ne '/VGA/../^$/  and /VGA|Kern/ and print'

##### List only directories, one per line

   ls  -1d */

##### Open Port Check

   ls of -ni TCP

##### Find top 5 big files

   ls  -Sh **/*(.Lm+100) | tail -5

##### Top 15 processes with the largest number of open files

   ls of +c 15 | awk '{print $1}' | sort | uniq -c | sort -rn | head

##### LIST FILENAMES OF FILES CREATED TODAY IN CURRENT DIRECTORY

   ls  -l time-style=+%Y-%m-%d | awk "/$(date +'%Y-%m-%d')/ {print \$7}"

##### Show what PID is listening on port 80 on Linux

   ls of -nPi tcp:80

##### ls not pattern

   ls  *[^.gz]

##### Adding Prefix to File name

   ls  *.pdf | while read file; do newfile="CS749__${file}"; mv "${file}" "${newfile}"; done;

##### get the oldest file in a directory

   ls  -1t group-directories-first /path/to/dir/ | tail -n 1

##### Removing Prefix from File name

   ls  *.pdf | while read file; do newfile="${file##CS749__}"; mv "${file}" "${newfile}"; done;

##### count files by type

   ls  | tr [:upper:] [:lower:] | grep -oP '\.[^\.]+$'  | sort | uniq -c | sort

##### List all symbolic links in current directory

   ls  -la | grep ^l

##### find all open files by named process

   ls of -c $processname | egrep 'w.+REG' | awk '{print $9}' | sort | uniq

##### delete multiple files with spaces in filenames (with confirmation)

   ls  -Q * | xargs -p rm

##### Execute a command with the last parameter of a previous command

   ls  !$

##### Graphical tree of sub-directories

   ls  -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\///g' -e 's/^/   /' -e 's/-/|/'

##### list file descriptors opened by a process

   ls  -al /proc/<PID>/fd

##### Show the UUID of a filesystem or partition

   ls  /dev/disk* | xargs -n 1 -t sudo zdb -l | grep GPTE_

##### Get a list of the erroring cifs entries in fstab

   ls  $(grep cifs /etc/fstab | grep -v ^# |awk ' { print $2 } ') 1>/dev/null

##### unrar all part1 files in a directory

   ls  -1 *.part1.rar | xargs -d '\n' -L 1 unrar e

##### List files with full path

   ls  -d $PWD/*

##### list all files in a directory, sorted in reverse order by modification time, use file descriptors.

   ls  -Fart

##### Generate SHA1 hash for each file in a list

   ls  [FILENAME] | xargs openssl sha1

##### list files in 'hitlar' mode

   ls  -Fhitlar

##### Find files with the same names in several directories.

   ls  -1 . dir2 dir3|sort|uniq -d

##### Find out which process uses an old lib and needs a restart after a system update

   ls of | grep 'DEL.*lib' | sort -k1,1 -u

##### List just the executable files (or directories) in current directory

   ls  -dF `find . -maxdepth 1 \( -perm -1 -o \( -perm -10 -o -perm -100 \) \) -print`

##### find large files

   ls  -s | sort -nr | more

##### Discovering all open files/dirs underneath a directory

   ls of +D <dirname>

##### Tells you where a command is in your $PATH, but also wether it's a link and to what.

   ls  -l `which foo`

##### find the delete file ,which is in use

   ls of -n |grep delete

##### Zip each file in a directory individually with the original file name

   ls  -1 | awk ' { print "zip "$1".zip " $1 } ' | sh

##### Shuffle mp3 files in current folder and play them.

   ls  | grep -i mp3 | sort -R | sed -e 's/.*/"&"/' | xargs mpg123

##### List programs with open ports and connections

   ls of -i

##### Delete all but the latest 5 files, ignoring directories

   ls  -lt|grep ^-|awk 'NR>5 { print $8 }'|xargs -r rm

##### auto complete arguments

   ls  [TAB][TAB]

##### list with full path

   ls  -d $PWD/*

##### list txt files order by time

   ls  -lt time=atime *.txt

##### list with full path

   ls  -d1 $PWD/{.*,*}

##### truncate deleted files from lsof

   ls of|gawk '$4~/txt/{next};/REG.*\(deleted\)$/{printf ">/proc/%s/fd/%d\n", $2,$4}'

##### list all file extensions in a directory

   ls  | grep -Eo "\..+" | sort -u

##### GZip all files in a directory separately

   ls  | xargs -n1 gzip

##### export iPad App list to txt file

   ls  "~/Music/iTunes/iTunes Media/Mobile Applications" > filepath

##### Show directories

   ls  -l | grep ^d

##### export iPad, iPhone App list to txt file

   ls  "`defaults read com.apple.itunes NSNavLastRootDirectory`/iTunes/iTunes Music/Mobile Applications/" > filepath

##### Find your graphics chipset

   ls pci |grep VGA

##### List empty any directories

   ls  -ld **/*(/^F)

##### Count all the files in the directory and child directories

   ls  -d */* | wc -l

##### View internet connection activity in a browser

   ls of -nPi | txt2html  > ~/lsof.html | gnome-open lsof.html

##### ls -qahlSr    # list all files in size order - largest last

   ls  -qahlSr    # list all files in size order - largest last

##### Get information on your graphics card on linux (such as graphics memory size)

   ls pci -v -s `lspci | awk '/VGA/{print $1}'`

##### Short Information about loaded kernel modules

   ls mod | sed -e '1d' -e 's/\(\([^ ]*\) \)\{1\}.*/\2/' | xargs modinfo | sed -e '/^dep/s/$/\n/g' -e '/^file/b' -e '/^desc/b' -e '/^dep/b' -e d

##### find the biggest file in current folder

   ls  -S|head -1find

##### pngcrush all .png files in the directory

   ls  *.png | while read line; do pngcrush -brute $line compressed/$line; done

##### list with full path

   ls  -d1 $PWD/*

##### Get the /dev/disk/by-id fragment for a physical drive

   ls  -l /dev/disk/by-id/ | grep '/sda$' | grep -o 'ata[^ ]*'

##### Show a listing of open mailbox files (or whatever you want to modify it to show)

   ls of | grep "/var/spool/mail/"

##### check to see what is running on a specific port number

   ls of -iTCP:8080 -sTCP:LISTEN

##### Show seconds since modified of newest modified file in directory

   ls  -atr /home/reports/*.csv -o time-sty=+%s | tail -1 | awk '{print systime()-$5}'

##### Know your distro

   ls b-release -a

##### Find removed files still in use via /proc

   ls  -l /proc/*/fd/* | grep 'deleted'| grep "\/proc.*\file-name-part"

##### vim read stdin

   ls  | view -

##### List all symbolic links in the current directory

   ls  -l `find . -maxdepth 1 -type l -print`

##### List information about a specific physical volume (eg-hdisk1)

   ls pv hdisk1

##### To show which desktop environment I have installed

   ls  -l /usr/share/xsessions/

##### Tracklist reaplace backspace to '-'

   ls |grep .mp3 >list.txt; while read line; do newname=`echo $line|sed 's/\ /-/g'|sort`; newname=`echo $newname|tr -s '-' `; echo $newname; echo $newname>> tracklist.txt;mv "$line" "$newname"; done <list.txt; rm list.txt

##### List open file descriptor count by PID

   ls of | cut -f 1 -d ' ' | uniq -c | sort -rn | head -n 10

##### Do some learning...

   ls  /usr/bin | xargs whatis | grep -v nothing | less

##### Get the total length of all video / audio in the current dir (and below) in H:m:s

   ls |grep ".wav"|parallel -j$(nproc) soxi -D {}|awk '{SUM += $1} END { printf "%d:%d:%d\n",SUM/3600,SUM%3600/60,SUM%60}'

##### identify active network connections

   ls of -i -P +c 0 +M | grep -i "$1"

##### Keep the last 10 moodle backups

   ls  -t /mcdata/archive/learn/backup-moodle2-course-* | tail -n +11 | xargs -I {} rm {}

##### Memorable recursive directory listing

   ls  -ltrapR

##### List only directories, one per line

   ls  -l | grep ^d  | sed 's:.*\ ::g'

##### lsof - cleaned up for just open listening ports, the process, and the owner of the process

   ls of -iTCP -sTCP:LISTEN

##### Get ls to only show directories under .

   ls  -al | grep ^d

##### urldecoding

   ls  * | while read fin;do fout=$(echo -n $fin | sed -e's/%\([0-9A-F][0-9A-F]\)/\\\\\x\1/g' | xargs echo -e);if [ "$fout" != "$fin" ];then echo "mv '$fin' '$fout'";fi;done | bash -x

##### Grabs Open Files and Then Greps Them

   ls of | grep "stuff"

##### Get the file name having biggest size in directory.

   ls  -l| sort +4n|tail -1| awk '{print $NF}'

##### ls output with mode in octal

   ls o(){ jot -w '%04d' 7778 0000 7777 |sed '/[89]/d;s,.*,printf '"'"'& '"'"';chmod & '"$1"';ls -l '"$1"'|sed s/-/./,' \ |sh \ |{ echo "lso(){";echo "ls \$@ \\";echo " |sed '";sed 's, ,@,2;s,@.*,,;s,\(.* \)\(.*\),s/\2/\1/,;s, ,,';echo \';echo };};}

##### Read recursive directory listings at leisure

   ls  -lR | less

##### Batch rename of files (names from file)

   ls  | paste delimiters='*' - ./zzz | awk ' BEGIN{FS="*";} { system("mv " $1 " \"" $2 "\"") }'

##### Nicer ls, directories first and colorized (MacOS)

   ls  -g almost-all group-directories-first color no-group human-readable classify

##### Display any udp/tcp connections by process name or by process id

   ls of -nP -c COMMAND | egrep -o '(TCP|UDP).*$' | sort -u

##### List your MACs address

   ls mac() { ifconfig -a | sed '/eth\|wl/!d;s/   Link.*HWaddr//' ; }

##### List all symbolic links in current directory

   ls  -l | grep "\->"

##### extract all tgz in current dir

   ls  *tgz | xargs -n1 tar xzf

##### List latest 5 modified files recursively

   ls  -laht `find / -name "*.*" -type f -newermt "2016-04-05" ! -newermt "2016-04-10"`|head -5

##### show 20 last modified files in current directory including subdirectories

   ls  -tl **/*(om[1,20])

##### file sizes of current directory

   ls  -la | awk '{print $5, " " ,$9}' | sort -rn

##### Simulate a tree command

   ls  -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\///g' -e 's/^/   /' -e 's/-/|/'

##### list files by testing the ownership

   ls  -la | awk '$3 == "oracle" || $3 == "root" {print $9}'

##### lsb_release -a

   ls b_release -a

##### find the process that is using a certain port e.g. port 3000

   ls of -P | grep ':3000'

##### Remove / delete file with ? or special characters in filename

   ls  -il; find * \( -type d -prune \) -o -inum <NUM> -exec rm -i {} \;

##### ls -altr | grep ^d

   ls  -altr | grep ^d

##### Using Grep & Xargs to clean folders

   ls  | grep -Ze ".*rar" | xargs -d '\n' -I {} mv {} backup-folder

##### List just the executable files (or directories) in current directory

   ls  -l|awk ''/-x./' && !'/drw/' {print}'

##### Show all listening and established ports TCP and UDP together with the PID of the associated process

   ls of -ni

##### Display IP addresses Pidgin IM Client is connected to

   ls of -p `pidof pidgin` | awk '{ print $9 }'|egrep `hostname` | grep -o ">[^:]\+:" | tr -d ":>" | while read line; do host $line; done;

##### Graphically display directory structure

   ls  -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\///g' -e 's/^/   /' -e 's/-/|/'

##### total number of files inside current directory

   ls  -R | wc -l

##### Print all open regular files sorted by the number of file handles open to each.

   ls of -a -d 1-99 -Fn / | grep ^n | cut -b2- | sort | uniq -c | sort -n

##### Display "ls -l" output with color in less

   ls  -l color | less -R

##### Shows size of dirs and files, hidden or not, sorted.

   ls  -a | du max-depth=1 -h 2>/dev/null |sort -h

##### Across an entire subtree, list not-empty directories that have no child-directories, globally sorted by their respective mtime

   ls  -ltr directory $(find . -regex "./.*[^/]*\'" -type f | xargs -n 1 dirname | sort | uniq)

##### list files other than, those, where you know, part of the name (e.g. file extension)

   ls  -l !(*.part)

##### Check which files are opened by Firefox then sort by largest size.

   ls of -p $(pidof firefox) | awk '/.mozilla/ { s = int($7/(2^20)); if(s>0) print (s)" MB  "$9 | "sort -rn" }'

##### When was your OS installed?

   ls  -lct /etc | tail -1 | awk '{print $6, $7}'

##### Replace spaces in filenames with underscorees

   ls  | while read f; do mv "$f" "${f// /_}";done

##### what?s running on a given port on your machine?

   ls of -i -n -P | grep :80

##### Quick and dirty recursive directory comparison

   ls  -Rl dir1/ > /tmp/dir1.ls; ls -Rl dir2/ > /tmp/dir2.ls; meld /tmp/dir1.ls /tmp/dir2.ls

##### loop over a set of items that contain spaces

   ls  | while read ITEM; do echo "$ITEM"; done

##### Count total number of subdirectories in current directory starting with specific name.

   ls  -d1 pattern*/ | wc -l

##### ls sort by human readable size (redhat)

   ls  -lSr

##### Picture Renamer

   ls  -1 *.jpg | while read fn; do export pa=`exiv2 "$fn" | grep timestamp | awk '{ print $4 " " $5 ".jpg"}' | tr ":" "-"`; mv "$fn" "$pa"; done

##### list executed files current dir

   ls  -al | awk '/^-rwx/ {print $9}'

##### turn lines in columns in csv format

   ls  | sed -n '1h;2,$H;${g;s/\n/,/g;p}'

##### use sed to simulate rpad and lpad

   ls  / | sed -e :a -e 's/^.\{1,15\}$/&_/;ta'

##### delete the files from the given directory except the PDF file

   ls  -1 $PATH*/* | xargs file | awk -F":" '!($2~/PDF document/){print $1}' |xargs rm -rf

##### Indent all the files in a project using emacs

   ls t=`find . -iname \*.c -or -iname \*.h`; for i in $lst; do emacs -nw -q $i eval "(mark-whole-buffer)" eval "(indent-region (point-min) (point-max) nil)" eval "(save-buffer)" kill; done

##### Order all files oldest to newest then get the last one touched

   ls  -lT -rt | grep "^-" | awk 'BEGIN {START=2002} (START <= $9){ print $10 ;START=$9 }' | tail -1

##### SAR - Get the monthly queue length average using sar -q for both the runq-sz and plist-sz.

   ls  /var/log/sa/sa[0-9]*|xargs -I '{}' sar -q -f {}| awk '/Average/'|awk '{runq+=$2;plist+=$3}END{print "average runq-sz:",runq/NR; print "average plist-sz: "plist/NR}'

##### list all the files and hidden files

   ls  -a

##### Sort files by size

   ls  -al | sort +4n

##### Remap Nic aliases from PCI location

   ls pci -vv | grep 'Ethernet\|Serial' | awk 'NR == 1{ printf $1 }  NR == 2 { print " mac " $7 }' | sed ?e 's/-/:/g' -e 's/:f[ef]:f[ef]//g' -e 's/01:00.0/eth0/g' -e 's/01:00.1/eth1/g' -e 's/01:00.2/eth2/g' -e 's/01:00.3/eth3/g' > /etc/iftab && ifrename

##### display directory

   ls  -d .*"/" *"/"

##### Show which process is blocking umount (Device or resource is busy)

   ls of /folder

##### List all commands present on system

   ls  ${PATH//:/ }

##### find builtin in bash v4+

   ls  -l /etc/**/*killall
