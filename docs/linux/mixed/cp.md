# cp

##### Create a quick back-up copy of a file

   cp  file.txt{,.bak}

##### Create a quick back-up copy of a file

   cp  file.txt{,.bak}

##### backup file. (for bash)

   cp  -p file-you-want-backup{,_`date +%Y%m%d`} # for bash

##### copy root to new device

   cp  -dpRx /* /mnt/target/

##### Copy without overwriting

   cp  -n <src> <dst>

##### Copies files from a directory to another, overwriting only existing files with same name

   cp  -rf srcdir/* destdir

##### transfer files locally to be sure that file permissions are kept correctly showing progress

   cp  -av source dest

##### Deleting / Ignoring tailer record from the file

   cp  foo.txt foo.txt.tmp; sed '$ d' foo.txt.tmp > foo.txt; rm -f foo.txt.tmp

##### backs up at the date today

   cp  -i FILENAME{,.`date +%Y%m%d`}

##### Real full backup copy of /etc folder

   cp  -a /etc /destination

##### using `!#$' to referance backward-word

   cp  /work/host/phone/ui/main.cpp !#$:s/host/target

##### copy/mkdir and automatically create parent directories

   cp  parents /source/file /target-dir

##### Copy all files, including hidden files, recursively without traversing backward

   cp  -r * .??* /dest

##### quickly backup or copy a file with bash

   cp  -bfS.bak filename filename

##### Fast file backup

   cp  filename{,.`date +%Y%m%d`}

##### Copy via tar pipe while preserving file permissions (cp does not!; run this command with root!)

   cp  -pr olddirectory newdirectory

##### bash shell expansion

   cp  /really/long/path/and/file/name{,-`date -I`}

##### display typedefs, structs, unions and functions provided by a header file

   cp p /usr/include/stdio.h | grep -v '^#' | grep -v '^$' | less

##### Copy sparse files

   cp  sparse=always <SRC> <DST>

##### backup directory. (for bash)

   cp  -pr directory-you-want-to-backup{,_`date +%Y%m%d`} # for bash

##### Never rewrites a file while copying (or moving)

   cp  backup=t source.file target.file

##### Check if you need to run LaTeX to update the TOC

   cp  texfile.toc texfile.toc.bak; latex texfile.tex; cmp -s texfile.toc texfile.toc.bak; if [ $? -ne 0 ]; then latex texfile.tex; fi

##### Short and elegant way to backup a single file before you change it.

   cp  httpd.conf{,.bk}

##### clone directory structure

   cp  -Rs dir1 dir2

##### Copy the currently playing song in MPD to somewhere else

   cp  "/var/lib/mpd/music/`mpc format '%file%' | head -n1`" /some/where/else

##### cp the file

   cp  /some/path/to/myfile{,.back}

##### Create a backup of the file.

   cp  path/filename{,-$(date +%Y-%m-%d)}

##### Perl Command Line Interpreter

   cp an Devel::REPL; re.pl

##### Create a CD/DVD ISO image from disk.

   cp  /dev/cdrom file.iso

##### Copy files for backup storage

   cp  -auv /SorceDirectory/ /ParentDestination/

##### get newest jpg picture in a folder

   cp  `ls -x1tr *.jpg | tail -n 1` newest.jpg

##### Check if a remote port is up using dnstools.com (i.e. from behind a firewall/proxy)

   cp o(){ [[ $# -lt 2 ]] && echo 'need IP and port' && return 2; [[ `wget -q "http://dnstools.com/?count=3&checkp=on&portNum=$2&target=$1&submit=Go\!" -O - |grep -ic "Connected successfully to port $2"` -gt 0 ]] && return 0 || return 1; }

##### Copy all files. All normal files, all hidden files and all files starting with - (minus).

   cp  ./* .[!.]* ..?* /path/to/dir

##### Regex expand filenames to execute certain commands

   cp  -a file_to_backup{,-$(date +%F)}

##### quick copy

   cp  foo{,bak}

##### Upgrade all perl modules via CPAN

   cp an -r

##### Copy the most recent wav file from /media/ to the current folder

   cp  $(find /media/ -type f -name "*.wav" -printf "%T@ %h/%f\n" | sort | tail -1 | awk '{ print $2 }') .

##### Create backup copy of file and keep modified date and time

   cp  -p file.txt{,.bak}

##### Copy the directory you want to specify a comma separated list of directories to copy.

   cp  -arv ~/Documents/{foo,bar} target-directory=~/buzz/

##### quickly backup or copy a file with bash

   cp  filename{,.`date +%Y%m%d-%H%M%S`}

##### CPU Frequency/Speed/Clock Information

   cp upower frequency-info

##### Find a file with a certail date stamp

   cp  -p `ls -l | awk '/Apr 14/ {print $NF}'` /usr/users/backup_dir

##### Copy a file to a new directory created on the fly

   cp  -r path/to/file/tree $(mkdir -p new/path/here; echo new/path/here)

##### function for copy files with progress bar (using pv - pipe viewer)

   cp _p() { if [ `echo "$2" | grep ".*\/$"` ]; then pv "$1" > "$2""$1"; else pv "$1" > "$2"/"$1"; fi; }

##### Create a quick back-up copy of a file

   cp  file.txt{,.bak}

##### Copy without overwriting

   cp  -n <src> <dst>

##### backs up at the date today

   cp  -i FILENAME{,.`date +%Y%m%d`}

##### using `!#$' to referance backward-word

   cp  /work/host/phone/ui/main.cpp !#$:s/host/target

##### copy/mkdir and automatically create parent directories

   cp  parents /source/file /target-dir

##### Copy all files, including hidden files, recursively without traversing backward

   cp  -r * .??* /dest

##### quickly backup or copy a file with bash

   cp  -bfS.bak filename filename

##### Fast file backup

   cp  filename{,.`date +%Y%m%d`}

##### Copy via tar pipe while preserving file permissions (cp does not!; run this command with root!)

   cp  -pr olddirectory newdirectory

##### bash shell expansion

   cp  /really/long/path/and/file/name{,-`date -I`}

##### display typedefs, structs, unions and functions provided by a header file

   cp p /usr/include/stdio.h | grep -v '^#' | grep -v '^$' | less

##### Copy sparse files

   cp  sparse=always <SRC> <DST>

##### backup directory. (for bash)

   cp  -pr directory-you-want-to-backup{,_`date +%Y%m%d`} # for bash

##### Never rewrites a file while copying (or moving)

   cp  backup=t source.file target.file

##### Check if you need to run LaTeX to update the TOC

   cp  texfile.toc texfile.toc.bak; latex texfile.tex; cmp -s texfile.toc texfile.toc.bak; if [ $? -ne 0 ]; then latex texfile.tex; fi

##### Short and elegant way to backup a single file before you change it.

   cp  httpd.conf{,.bk}

##### clone directory structure

   cp  -Rs dir1 dir2

##### Copy the currently playing song in MPD to somewhere else

   cp  "/var/lib/mpd/music/`mpc format '%file%' | head -n1`" /some/where/else

##### cp the file

   cp  /some/path/to/myfile{,.back}

##### Create a backup of the file.

   cp  path/filename{,-$(date +%Y-%m-%d)}

##### Perl Command Line Interpreter

   cp an Devel::REPL; re.pl

##### Create a CD/DVD ISO image from disk.

   cp  /dev/cdrom file.iso

##### Copy files for backup storage

   cp  -auv /SorceDirectory/ /ParentDestination/

##### get newest jpg picture in a folder

   cp  `ls -x1tr *.jpg | tail -n 1` newest.jpg

##### Check if a remote port is up using dnstools.com (i.e. from behind a firewall/proxy)

   cp o(){ [[ $# -lt 2 ]] && echo 'need IP and port' && return 2; [[ `wget -q "http://dnstools.com/?count=3&checkp=on&portNum=$2&target=$1&submit=Go\!" -O - |grep -ic "Connected successfully to port $2"` -gt 0 ]] && return 0 || return 1; }

##### Copy all files. All normal files, all hidden files and all files starting with - (minus).

   cp  ./* .[!.]* ..?* /path/to/dir

##### Regex expand filenames to execute certain commands

   cp  -a file_to_backup{,-$(date +%F)}

##### quick copy

   cp  foo{,bak}

##### Upgrade all perl modules via CPAN

   cp an -r

##### Copy the most recent wav file from /media/ to the current folder

   cp  $(find /media/ -type f -name "*.wav" -printf "%T@ %h/%f\n" | sort | tail -1 | awk '{ print $2 }') .

##### Create backup copy of file and keep modified date and time

   cp  -p file.txt{,.bak}

##### Copy the directory you want to specify a comma separated list of directories to copy.

   cp  -arv ~/Documents/{foo,bar} target-directory=~/buzz/

##### quickly backup or copy a file with bash

   cp  filename{,.`date +%Y%m%d-%H%M%S`}

##### CPU Frequency/Speed/Clock Information

   cp upower frequency-info
