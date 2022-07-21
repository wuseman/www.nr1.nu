# cd

##### Grabs a random image from "~/wallpapers" and sets it as background

   cd  ~/wallpapers;arr=( * );num_wallpapers=${#arr[@]};wallpaper=${arr[$(echo $RANDOM%$num_wallpapers|bc)]};feh bg-fill $wallpaper

##### Change directory by inode

   cd  $(find -inum inode_no)

##### Power cd - Add a couple of useful features to 'cd'

   cd () { if [ -n "$1" ]; then [ -f "$1" ] && set  "${1%/*}"; else [ -n "$CDDIR" ] && set  "$CDDIR"; fi; command cd "$@"; }

##### Spotlight Server Disabled

   cd  /System/Library/LaunchDaemons; sudo launchctl load -w com.apple.metadata.mds.plist

##### change dir to n-th dir that you listed

   cd  $(ls -ltr|grep ^d|head -1|sed 's:.*\ ::g'|tail -1)

##### Place the argument of the most recent command on the shell

   cd  !$

##### find unmaintained ports that are installed on your system

   cd  /usr/ports; grep -F "`for o in \`pkg_info -qao\` ; \ do echo "|/usr/ports/${o}|" ; done`" `make -V INDEXFILE` | \ grep -i \|ports@freebsd.org\| | cut -f 2 -d \|

##### Go to next dir

   cd  -

##### burn an iso to cd or dvd

   cd record -v path_to_iso_image.iso

##### Rip audio tracks from CD to wav files in current dir

   cd paranoia -B

##### Go back to the previous directory.

   cd  -

##### Go (cd) directly into a new temp folder

   cd  "$(mktemp -d)"

##### Group page count in pmwiki data base

   cd  /path/to/pmwiki/wiki.d;/bin/ls -1 | perl -ne 'my ($group,$name)=split(/\./);$counts{$group}++;' -e  'END { foreach $group (sort keys %counts) {printf("%d\t%s\n",$counts{$group},$group);} }'|sort -rn

##### change to the previous working directory

   cd  $OLDPWD

##### Directly change directory without having to specify drive letter change command

   cd  /d d:\Windows

##### Easiest way to navigate to home

   cd 

##### export iPad App list to txt file

   cd  "~/Music/iTunes/iTunes Media/Mobile Applications";ls > filepath

##### open the last folder created

   cd  $(ls -1t color=never | head -1)

##### Go to the last directory invoked on command line

   cd  !$

##### tar per directory

   cd  <YOUR_DIRECTORY>; for i in `ls ./`; do tar czvf "$i".tar.gz "$i" ; done

##### cd to (or operate on) a file across parallel directories

   cd  ${PWD/a/b}

##### unzip all .zip files in /example/directory

   cd  /example/directory && unzip \*.zip

##### change directory into '//'

   cd  //

##### cd(), do a ls (or whatever you can imagine) after a cd, func to long please refer to description

   cd (), do a ls (or whatever you can imagine) after a cd, func to long please refer to description

##### Flip from one directory to another

   cd  -

##### cd into the latest directory

   cd  -

##### apache , how to avoid bugs and start directly the server

   cd  /etc/init.d && sudo ./apache2 start

##### cd

   cd  -

##### Just take me to home directory

   cd 

##### annoy your sysadmin colleague

   cd  / && touch ./\-i

##### Hide files and folders on GNOME Desktop.

   cd  ~/Desktop && for FILES in $(ls); do mv $FILES .${FILES}; done

##### go to home directory

   cd 

##### cd

   cd 

##### Get back to the root directory of a Windows drive (like c:\)

   cd  \

##### Redefine the cd command's behavior

   cd () { builtin cd "${@:-$HOME}" && ls; }

##### Chage default shell for all users [FreeBSD]

   cd  /usr/home && for i in *;do chsh -s bash $i;done

##### Go to the previous sibling directory in alphabetical order

   cd  ../"$(ls -F ..|grep '/'|grep -B1 `basename $PWD`|head -n 1)"

##### Go to parent directory of filename edited in last command

   cd  `dirname $_`

##### Go to parent directory of filename edited in last command

   cd  !$:h

##### Find and list users who talk like "lolcats"

   cd  ~/.purple/logs/; egrep -ri "i can haz|pwn|l33t|w00|zomg" * | cut -d'/' -f 3 | sort | uniq | xargs -I {} echo "Note to self: ban user '{}'"

##### Go up multiple levels of directories quickly and easily.

   cd () { if [[ "$1" =~ ^\.\.+$ ]];then local a dir;a=${#1};while [ $a -ne 1 ];do dir=${dir}"../";((a));done;builtin cd $dir;else builtin cd "$@";fi ;}

##### Getting the last argument from the previous command

   cd  !$

##### Grabs a random image from "~/wallpapers" and sets as the background

   cd  ~/wallpapers; feh bg-fill "$( ls | sort -R | head -n 1 )"

##### Backup of a partition

   cd  /mnt/old && tar cvf - . | ( cd /mnt/new && tar xvf - )

##### burn a isofile to cd or dvd

   cd record -v dev=/dev/cdrom yourimage.iso

##### Go to the next sibling directory in alphabetical order, version 2

   cd  ../"$(ls -F ..|grep '/'|grep -A1 `basename $PWD`|tail -n 1)"

##### replace XX by YY in the the current directory and cd to it. ( in ZSH )

   cd  XX YY

##### List recorded formular fields of Firefox

   cd  ~/.mozilla/firefox/ && sqlite3 `cat profiles.ini | grep Path | awk -F= '{print $2}'`/formhistory.sqlite "select * from moz_formhistory" && cd - > /dev/null

##### Burn an ISO on the command line.

   cd record -v speed=4 driveropts=burnfree dev=/dev/scd0 cd.iso

##### Recursively move folders/files and preserve their permissions and ownership perfectly

   cd  /source/directory; tar cf - . | tar xf - -C /destination/directory

##### Burn CD/DVD from an iso, eject disc when finished.

   cd record dev=0,0,0 -v -eject yourimage.iso

##### change directory to actual path instead of symlink path

   cd  `pwd -P`

##### Email someone if a web page has been updated.

   cd  /some/empty/folder/website_diffs/sitename && wget -N http://domain.com/ 2>&1 |grep -q "o newer" || printf "Sites web page appears to have updated.\n\nSuggest you check it out.\n\n"|mail -s "Sites page updated." david@email.com

##### Protect directory from an overzealous rm -rf *

   cd  <directory>; touch ./-i

##### if you are working in two different directories; e.g. verifying files in your home directory; ls ~/ and you need to cd to  the /etc/directory. you can enter 'cd -' (no single quotes) to go back and forth between directories.

   cd  -

##### Ripping VCD in Linux

   cd rdao read-cd device ATA:1,1,0 driver generic-mmc-raw read-raw image.toc

##### Recall last argument of previous command

   cd  !$

##### Rips CDs (Playstation, etc.) and names the files the same as the volume name

   cd rdao read-cd read-raw datafile "`volname /dev/hdc | sed 's/[ ^t]*$//'`".bin device ATAPI:0,0,0 driver generic-mmc-raw "`volname /dev/hdc | sed 's/[ ^t]*$//'`".toc

##### Convert current symbolic directory into physical directory

   cd  -P .

##### Jump to a directory, execute a command and jump back to current dir

   cd  /path/to/dir && command_or_script; cd -;

##### erase content from a cdrw

   cd record -v -blank=all -force

##### Toggle between directories

   cd  -

##### Copy structure

   cd  $srcdir && find -type d -exec mkdir -p $dstdir/{} \;

##### View All Processess Cmdlines and Environments

   cd  /proc&&ps a -opid=|xargs -I+ sh -c '[[ $PPID -ne + ]]&&echo -e "\n[+]"&&tr -s "\000" " "<+/cmdline&&echo&&tr -s "\000\033" "\nE"<+/environ|sort'

##### BourneShell: Go to previous directory

   cd  -

##### Cd Deluxe - improved cd command for *nix and windows

   cd d [NAMED_OPTIONS] [FREEFORM_OPTIONS]

##### cd Nst subdir

   cd n() { cd $(ls -1d */ | sed -n $@p); }

##### Take Screenshot with Tizen SDK

   cd  ~; fn=$(date "+ screen-%H-%M-%S"); sdb shell xwd -root -out /tmp/"$fn".xwd;  sdb pull /tmp/"$fn".xwd ~/;  convert "$fn".xwd  "$fn".png

##### cd Nst subdir

   cd  $(ls -1 | sed -n '<N>p')

##### Convert metasploit cachedump files to Hashcat format for cracking

   cd  ~/.msf4/loot && cat *mscache* | cut -d '"' -f 2,4 | sed s/\"/\:/g | tr -cd '\11\12\40-\176' | grep -v Username | cut -d : -f 1,2 | awk -F':' '{print $2,$1}' | sed 's/ /:/g' > final.dcc.hash

##### move files without actually touching them

   cd  /some/directory \&\& tar cf - |  cd /some/directory \&\& tar xvf - */

##### cd to (or operate on) a file across parallel directories

   cd  () { cdop=""; while [ "$1" != "${1#-}" ]; do cdop="${cdop} ${1}"; shift; done; if [ $# -eq 2 ]; then newdir="${PWD/$1/$2}"; [ -d "${newdir}" ] || { echo "no ${newdir}"; return 1; }; builtin cd $cdop "${newdir}"; else builtin cd $cdop "$@"; fi }

##### Changes dir to $1 and executes ls. As simple as useful

   cd  () { command cd $1 && ls ; }

##### Optimize Google Chrome database speedup sqlite3

   cd  "/Users/$USER/Library/Application Support/Google" && find . -print|while read line;do (file "$line"|grep SQLite) && (sqlite3 "$line" "VACUUM;";echo "Compress");done;

##### Start Java Control Panel from Command line (Mac OSX Yosemite)

   cd  $JAVA_HOME && java -Xbootclasspath/a:jre/lib/deploy.jar -Djava.locale.providers=HOST,JRE,SPI -Xdock:name="Java Control Panel" com.sun.deploy.panel.ControlPanel

##### Link all the files in this directory to that directory

   cd  /this/directory; for f in *; do ln -s `pwd`/$f /that/directory; done

##### Install unrar on Linux box from sources

   cd  /usr/src ; wget http://www.rarlab.com/rar/unrarsrc-4.0.2.tar.gz ; tar xvfz unrarsrc-4.0.2.tar.gz ; cd unrar ; ln -s makefile.unix Makefile ; make clean ; make ; make install

##### SSH folder with progress bar and faster encryption with compression

   cd  /srcfolder;  tar -czf - . | pv -s `du -sb . | awk '{print $1}'` | ssh -c arcfour,blowfish-cbc -p 50005 root@destination.com "tar -xzvf - -C /dstfolder"

##### rip all tracks of the cd then convert all *wav files in *mp3

   cd paranoia -wB 1-; for i in *.wav; do lame -h -b 192 "$i" "`basename "$i" .wav`".mp3; done

##### cd out n directories (To move n level out of current directory)

   cd b() { for i in $(seq $1); do cd ..; done }

##### Add DuckDuckGo Search as search provider on gnome-shell

   cd  /usr/share/gnome-shell/search_providers/ && cat google.xml | sed "s/www.google.com\/search/duckduckgo.com\//; s/Google/DuckDuckGo/g" > duckduckgo.xml

##### for a particular file system, find all files > 10MBytes, sorted by size

   cd  <mntpoint>; find . -xdev -size +10000000c -exec ls -l {} \; | sort -n -k 5

##### generate an initrd file

   cd  tmp ; find . |cpio -o -H newc| gzip > ../initrd.gz

##### Search for a single file and go to it

   cd  $(dirname $(find ~ -name emails.txt))

##### Fast command-line directory browsing

   cd ls() { if [[ $1 != "" ]] ; then cd $1; ls; else ls; fi };

##### Backup entire system

   cd  / ; tar -cvpzf backup.tar.gz exclude=/backup.tar.gz exclude=/proc exclude=/lost+found exclude=/sys exclude=/mnt exclude=/media exclude=/dev /

##### Smart `cd`.. cd to the file directory if you try to cd to a file

   cd () { if [ -z "$1" ]; then command cd; else if [ -f "$1" ]; then command cd $(dirname "$1"); else command cd "$1"; fi; fi; }

##### Install a Minetest mod from GitHub

   cd  ~/.minetest/mods && git clone recursive https://github.com/$1/$2.git

##### Persistent saving of iptables rules

   cd  /etc/network/if-up.d && iptables-save > firewall.conf && echo -e '#!/bin/sh -e\niptables-restore < $(dirname $0)/firewall.conf' > iptables && chmod a+x iptables

##### change to the previous working directory

   cd  -

##### Copy files from one tree to another (say, project to project) while preserving their directory structure.

   cd  ~/ruby/project_a ; find . -name "*profile*" -exec pax -rw {} ~/ruby/project_b/ \;

##### Go (cd) directly into a new temp folder

   cd  "$(mktemp -d)"

##### cd to (or operate on) a file across parallel directories

   cd  ${PWD/a/b}

##### Redefine the cd command's behavior

   cd () { builtin cd "${@:-$HOME}" && ls; }

##### Chage default shell for all users [FreeBSD]

   cd  /usr/home && for i in *;do chsh -s bash $i;done

##### Go to the previous sibling directory in alphabetical order

   cd  ../"$(ls -F ..|grep '/'|grep -B1 `basename $PWD`|head -n 1)"

##### Go to parent directory of filename edited in last command

   cd  `dirname $_`

##### Go to parent directory of filename edited in last command

   cd  !$:h

##### Find and list users who talk like "lolcats"

   cd  ~/.purple/logs/; egrep -ri "i can haz|pwn|l33t|w00|zomg" * | cut -d'/' -f 3 | sort | uniq | xargs -I {} echo "Note to self: ban user '{}'"

##### Go up multiple levels of directories quickly and easily.

   cd () { if [[ "$1" =~ ^\.\.+$ ]];then local a dir;a=${#1};while [ $a -ne 1 ];do dir=${dir}"../";((a));done;builtin cd $dir;else builtin cd "$@";fi ;}

##### Getting the last argument from the previous command

   cd  !$

##### Grabs a random image from "~/wallpapers" and sets as the background

   cd  ~/wallpapers; feh bg-fill "$( ls | sort -R | head -n 1 )"

##### Backup of a partition

   cd  /mnt/old && tar cvf - . | ( cd /mnt/new && tar xvf - )

##### burn a isofile to cd or dvd

   cd record -v dev=/dev/cdrom yourimage.iso

##### Go to the next sibling directory in alphabetical order, version 2

   cd  ../"$(ls -F ..|grep '/'|grep -A1 `basename $PWD`|tail -n 1)"

##### replace XX by YY in the the current directory and cd to it. ( in ZSH )

   cd  XX YY

##### List recorded formular fields of Firefox

   cd  ~/.mozilla/firefox/ && sqlite3 `cat profiles.ini | grep Path | awk -F= '{print $2}'`/formhistory.sqlite "select * from moz_formhistory" && cd - > /dev/null

##### Burn an ISO on the command line.

   cd record -v speed=4 driveropts=burnfree dev=/dev/scd0 cd.iso

##### Recursively move folders/files and preserve their permissions and ownership perfectly

   cd  /source/directory; tar cf - . | tar xf - -C /destination/directory

##### Burn CD/DVD from an iso, eject disc when finished.

   cd record dev=0,0,0 -v -eject yourimage.iso

##### change directory to actual path instead of symlink path

   cd  `pwd -P`

##### Email someone if a web page has been updated.

   cd  /some/empty/folder/website_diffs/sitename && wget -N http://domain.com/ 2>&1 |grep -q "o newer" || printf "Sites web page appears to have updated.\n\nSuggest you check it out.\n\n"|mail -s "Sites page updated." david@email.com

##### Protect directory from an overzealous rm -rf *

   cd  <directory>; touch ./-i

##### if you are working in two different directories; e.g. verifying files in your home directory; ls ~/ and you need to cd to  the /etc/directory. you can enter 'cd -' (no single quotes) to go back and forth between directories.

   cd  -

##### Ripping VCD in Linux

   cd rdao read-cd device ATA:1,1,0 driver generic-mmc-raw read-raw image.toc

##### Recall last argument of previous command

   cd  !$

##### Rips CDs (Playstation, etc.) and names the files the same as the volume name

   cd rdao read-cd read-raw datafile "`volname /dev/hdc | sed 's/[ ^t]*$//'`".bin device ATAPI:0,0,0 driver generic-mmc-raw "`volname /dev/hdc | sed 's/[ ^t]*$//'`".toc

##### Convert current symbolic directory into physical directory

   cd  -P .

##### Jump to a directory, execute a command and jump back to current dir

   cd  /path/to/dir && command_or_script; cd -;

##### erase content from a cdrw

   cd record -v -blank=all -force

##### Toggle between directories

   cd  -

##### Copy structure

   cd  $srcdir && find -type d -exec mkdir -p $dstdir/{} \;

##### View All Processess Cmdlines and Environments

   cd  /proc&&ps a -opid=|xargs -I+ sh -c '[[ $PPID -ne + ]]&&echo -e "\n[+]"&&tr -s "\000" " "<+/cmdline&&echo&&tr -s "\000\033" "\nE"<+/environ|sort'

##### BourneShell: Go to previous directory

   cd  -

##### Cd Deluxe - improved cd command for *nix and windows

   cd d [NAMED_OPTIONS] [FREEFORM_OPTIONS]

##### cd Nst subdir

   cd n() { cd $(ls -1d */ | sed -n $@p); }

##### Take Screenshot with Tizen SDK

   cd  ~; fn=$(date "+ screen-%H-%M-%S"); sdb shell xwd -root -out /tmp/"$fn".xwd;  sdb pull /tmp/"$fn".xwd ~/;  convert "$fn".xwd  "$fn".png

##### cd Nst subdir

   cd  $(ls -1 | sed -n '<N>p')

##### Convert metasploit cachedump files to Hashcat format for cracking

   cd  ~/.msf4/loot && cat *mscache* | cut -d '"' -f 2,4 | sed s/\"/\:/g | tr -cd '\11\12\40-\176' | grep -v Username | cut -d : -f 1,2 | awk -F':' '{print $2,$1}' | sed 's/ /:/g' > final.dcc.hash

##### move files without actually touching them

   cd  /some/directory \&\& tar cf - |  cd /some/directory \&\& tar xvf - */

##### cd to (or operate on) a file across parallel directories

   cd  () { cdop=""; while [ "$1" != "${1#-}" ]; do cdop="${cdop} ${1}"; shift; done; if [ $# -eq 2 ]; then newdir="${PWD/$1/$2}"; [ -d "${newdir}" ] || { echo "no ${newdir}"; return 1; }; builtin cd $cdop "${newdir}"; else builtin cd $cdop "$@"; fi }

##### Changes dir to $1 and executes ls. As simple as useful

   cd  () { command cd $1 && ls ; }

##### Optimize Google Chrome database speedup sqlite3

   cd  "/Users/$USER/Library/Application Support/Google" && find . -print|while read line;do (file "$line"|grep SQLite) && (sqlite3 "$line" "VACUUM;";echo "Compress");done;

##### Start Java Control Panel from Command line (Mac OSX Yosemite)

   cd  $JAVA_HOME && java -Xbootclasspath/a:jre/lib/deploy.jar -Djava.locale.providers=HOST,JRE,SPI -Xdock:name="Java Control Panel" com.sun.deploy.panel.ControlPanel

##### Link all the files in this directory to that directory

   cd  /this/directory; for f in *; do ln -s `pwd`/$f /that/directory; done

##### Install unrar on Linux box from sources

   cd  /usr/src ; wget http://www.rarlab.com/rar/unrarsrc-4.0.2.tar.gz ; tar xvfz unrarsrc-4.0.2.tar.gz ; cd unrar ; ln -s makefile.unix Makefile ; make clean ; make ; make install

##### SSH folder with progress bar and faster encryption with compression

   cd  /srcfolder;  tar -czf - . | pv -s `du -sb . | awk '{print $1}'` | ssh -c arcfour,blowfish-cbc -p 50005 root@destination.com "tar -xzvf - -C /dstfolder"

##### rip all tracks of the cd then convert all *wav files in *mp3

   cd paranoia -wB 1-; for i in *.wav; do lame -h -b 192 "$i" "`basename "$i" .wav`".mp3; done

##### cd out n directories (To move n level out of current directory)

   cd b() { for i in $(seq $1); do cd ..; done }

##### Add DuckDuckGo Search as search provider on gnome-shell

   cd  /usr/share/gnome-shell/search_providers/ && cat google.xml | sed "s/www.google.com\/search/duckduckgo.com\//; s/Google/DuckDuckGo/g" > duckduckgo.xml

##### for a particular file system, find all files > 10MBytes, sorted by size

   cd  <mntpoint>; find . -xdev -size +10000000c -exec ls -l {} \; | sort -n -k 5

##### generate an initrd file

   cd  tmp ; find . |cpio -o -H newc| gzip > ../initrd.gz

##### Search for a single file and go to it

   cd  $(dirname $(find ~ -name emails.txt))

##### Fast command-line directory browsing

   cd ls() { if [[ $1 != "" ]] ; then cd $1; ls; else ls; fi };

##### Backup entire system

   cd  / ; tar -cvpzf backup.tar.gz exclude=/backup.tar.gz exclude=/proc exclude=/lost+found exclude=/sys exclude=/mnt exclude=/media exclude=/dev /

##### Smart `cd`.. cd to the file directory if you try to cd to a file

   cd () { if [ -z "$1" ]; then command cd; else if [ -f "$1" ]; then command cd $(dirname "$1"); else command cd "$1"; fi; fi; }
