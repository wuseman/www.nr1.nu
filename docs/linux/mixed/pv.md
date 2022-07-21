# pv

##### decompress to new file with gzip and progress

   pv  file.gz | gzip -d -c > file.out

##### Quickly check a device in a LVM volume group against multipath

   pv scan | awk '/name_of_vg/ {print $2}' | sed 's/[-|/|]/ /g' | cut -d " " -f7

##### Copy with progress

   pv  file1 > file2

##### gzip compression with progress bar and remaining time displayed

   pv  file | gzip > file.gz

##### cat large file to clipboard with speed-o-meter

   pv  large.xml | xclip

##### Progress bar for MySQL import

   pv  -i 1 -p -t -e /path/to/sql/dump | mysql -u USERNAME -p DATABASE_NAME

##### Play online music videos in terminal

   pv l() { (for i in "$@"; do youtube-dl -q max-downloads 1 no-playlist "$i" -o - | mplayer -vo null /dev/fd/3 3<&0 </dev/tty; sleep .5; done); }

##### check the status of 'dd' in progress (OS X)

   pv  -tpreb /dev/sda | dd of=/dev/sdb bs=1M

##### MySQL dump restore with progress bar and ETA

   pv  bigdump.sql.gz | gunzip | mysql

##### See multiple progress bars at once for multiple pipes with pv

   pv  -cN orig < foo.tar.bz2 | bzcat | pv -cN bzcat | gzip -9 | pv -cN gzip > foo.tar.gz

##### Limit the transfer rate of a pipe with pv

   pv  /dev/urandom -L 3m -i 0.3 > /dev/null

##### Copy a file using pv and watch its progress

   pv  sourcefile > destfile

##### Copy a file using pv and watch its progress

   pv  sourcefile > destfile

##### Command to import Mysql database with a progress bar.

   pv  -t -p /path/to/sqlfile.sql | mysql -uUSERNAME -pPASSWORD -D DATABASE_NAME

##### live ssh network throughput test

   pv  /dev/zero|ssh $host 'cat > /dev/null'

##### Monitor progress of a command

   pv  access.log | gzip > access.log.gz

##### Monitor progress of a command

   pv  access.log | gzip > access.log.gz

##### Watch the progress of 'dd'

   pv  -tpreb /dev/urandom | dd of=file.img

##### Easy Python Virtual Environments

   pv e () { source ~/Documents/venvs/$1/bin/activate }

##### 1 pass wipe of a complete disk with status

   pv  -s `fdisk -l /dev/sdX|grep "Disk /"|cut -d' ' -f5` /dev/zero >/dev/sdX

##### copy one partition to another with progress

   pv  -tpreb /dev/sdc2 | dd of=/dev/sdb2 bs=64K conv=noerror,sync

##### copy hybrid iso images to USB key for booting from it, progress bar and remaining time are displayed while copying

   pv  -petrs $(stat -c %s file.iso) file.iso | dd bs=1M oflag=sync of=/dev/sdX

##### copy hybrid iso images to USB key for booting from it, progress bar and remaining time are displayed while copying

   pv  file.iso >/dev/sdX

##### Meter your entropy

   pv  /dev/random > /dev/null

##### gzip compression with progress bar and remaining time displayed

   pv  file | gzip > file.gz

##### cat large file to clipboard with speed-o-meter

   pv  large.xml | xclip

##### Progress bar for MySQL import

   pv  -i 1 -p -t -e /path/to/sql/dump | mysql -u USERNAME -p DATABASE_NAME

##### Play online music videos in terminal

   pv l() { (for i in "$@"; do youtube-dl -q max-downloads 1 no-playlist "$i" -o - | mplayer -vo null /dev/fd/3 3<&0 </dev/tty; sleep .5; done); }

##### check the status of 'dd' in progress (OS X)

   pv  -tpreb /dev/sda | dd of=/dev/sdb bs=1M

##### MySQL dump restore with progress bar and ETA

   pv  bigdump.sql.gz | gunzip | mysql

##### See multiple progress bars at once for multiple pipes with pv

   pv  -cN orig < foo.tar.bz2 | bzcat | pv -cN bzcat | gzip -9 | pv -cN gzip > foo.tar.gz

##### Limit the transfer rate of a pipe with pv

   pv  /dev/urandom -L 3m -i 0.3 > /dev/null

##### Copy a file using pv and watch its progress

   pv  sourcefile > destfile

##### Command to import Mysql database with a progress bar.

   pv  -t -p /path/to/sqlfile.sql | mysql -uUSERNAME -pPASSWORD -D DATABASE_NAME

##### live ssh network throughput test

   pv  /dev/zero|ssh $host 'cat > /dev/null'

##### Monitor progress of a command

   pv  access.log | gzip > access.log.gz

##### Watch the progress of 'dd'

   pv  -tpreb /dev/urandom | dd of=file.img

##### Easy Python Virtual Environments

   pv e () { source ~/Documents/venvs/$1/bin/activate }

##### 1 pass wipe of a complete disk with status

   pv  -s `fdisk -l /dev/sdX|grep "Disk /"|cut -d' ' -f5` /dev/zero >/dev/sdX

##### copy one partition to another with progress

   pv  -tpreb /dev/sdc2 | dd of=/dev/sdb2 bs=64K conv=noerror,sync

##### copy hybrid iso images to USB key for booting from it, progress bar and remaining time are displayed while copying

   pv  -petrs $(stat -c %s file.iso) file.iso | dd bs=1M oflag=sync of=/dev/sdX

##### copy hybrid iso images to USB key for booting from it, progress bar and remaining time are displayed while copying

   pv  file.iso >/dev/sdX
