# buf

##### Backup a file with a date-time stamp

   buf  () {oldname=$1; if [ "$oldname" != "" ]; then datepart=$(date +%Y-%m-%d); firstpart=`echo $oldname | cut -d "." -f 1`; newname=`echo $oldname | sed s/$firstpart/$firstpart.$datepart/`; cp -i ${oldname} ${newname}; fi }

##### Backup a file with a date-time stamp

   buf  () { cp $1{,$(date +%Y%m%d_%H%M%S)}; }

##### Buffer in order to avoir mistakes with redirections that empty your files

   buf fer () { tty -s && return; tmp=$(mktemp); cat > "${tmp}"; if [ -n "$1" ] && ( ( [ -f "$1" ] && [ -w "$1" ] ) || ( ! [ -a "$1" ] && [ -w "$(dirname "$1")" ] ) ); then mv -f "${tmp}" "$1"; else echo "Can't write in \"$1\""; rm -f "${tmp}"; fi }

##### Backup a file with a date-time stamp

   buf  () { filename=$1; filetime=$(date +%Y%m%d_%H%M%S); cp ${filename} ${filename}_${filetime}; }

##### Backup a file with a date-time stamp

   buf  () { oldname=$1; if [ "$oldname" != "" ]; then datepart="$(date +%Y-%m-%d).bak"; firstpart=`echo $oldname | cut -d "." -f 1`; newname=`echo $oldname | sed s/$firstpart/$firstpart.$datepart/`; cp -iv ${oldname} ${newname}; fi }

##### Backup a file with a date-time stamp

   buf () { f=${1%%.*};e=${1/$f/};cp -v $1 $f-$(date +"%Y%m%d_%H%M%S")$e;}

##### Backup a file with a date-time stamp

   buf () { cp -v $1 ${1/${1%%.*}/$f-$(date +"%Y%m%d_%H%M%S")};}

##### Backup a file with a date-time stamp

   buf  () { cp $1{,$(date +%Y%m%d_%H%M%S)}; }

##### Buffer in order to avoir mistakes with redirections that empty your files

   buf fer () { tty -s && return; tmp=$(mktemp); cat > "${tmp}"; if [ -n "$1" ] && ( ( [ -f "$1" ] && [ -w "$1" ] ) || ( ! [ -a "$1" ] && [ -w "$(dirname "$1")" ] ) ); then mv -f "${tmp}" "$1"; else echo "Can't write in \"$1\""; rm -f "${tmp}"; fi }

##### Backup a file with a date-time stamp

   buf  () { filename=$1; filetime=$(date +%Y%m%d_%H%M%S); cp ${filename} ${filename}_${filetime}; }

##### Backup a file with a date-time stamp

   buf  () { oldname=$1; if [ "$oldname" != "" ]; then datepart="$(date +%Y-%m-%d).bak"; firstpart=`echo $oldname | cut -d "." -f 1`; newname=`echo $oldname | sed s/$firstpart/$firstpart.$datepart/`; cp -iv ${oldname} ${newname}; fi }

##### Backup a file with a date-time stamp

   buf () { f=${1%%.*};e=${1/$f/};cp -v $1 $f-$(date +"%Y%m%d_%H%M%S")$e;}

##### Backup a file with a date-time stamp

   buf () { cp -v $1 ${1/${1%%.*}/$f-$(date +"%Y%m%d_%H%M%S")};}
