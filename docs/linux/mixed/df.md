# df

##### find the device when you only know the mount point

   df  /media/mountpoint |egrep -o '^[/a-z0-9]*'

##### show physical disk using

   df  -x tmpfs | grep -vE "(gvfs|procbususb|rootfs)"

##### Useful to check if the disks as of same size or not. Helpful in checking Raid configs

   df  | awk '{if ($2!=dspace) print "different"; dspace=$2;}'

##### find the device when you only know the mount point

   df  | grep -w '/media/mountpoint' | cut -d " " -f 1

##### find the device when you only know the mount point

   df  | grep -w '/media/armadillo' | cut -d " " -f 1

##### find the device when you only know the mount point

   df  | grep -w /media/KINGSTON | awk {'print $1'}

##### Show the amount of space left on mounted harddrives

   df  -h

##### Listing the Size and usage of the connected Hard Disks

   df  -H

##### df without line wrap on long FS name

   df  -P | column -t

##### Convert df command to posix; uber GREPable

   df  -P

##### Report full partitions from a cron

   df  -l | grep -e "9.%" -e "100%"

##### df without line wrap on long FS name

   df  -PH|column -t

##### View the current number of free/used inodes in a file system

   df  -i  <partition>

##### Show total disk space on all partitions

   df  -h total | awk 'NR==1; END{print}'

##### find the device when you only know the mount point

   df  -P | awk '$6=="/media/KINGSTON" {print $1}'

##### Show all local disk and UFS mounts on Solaris

   df  -kFufs

##### Remaining Disk space for important mounted drives

   df  -H | grep -vE '^Filesystem|tmpfs|cdrom|none' | awk '{ print $5 " " $1 }'

##### df output, sorted by Use% and correctly maintaining header row

   df  -h | sort -r -k 5 -i

##### check hardisk volume

   df  -h

##### Disk Free with column and Fs and Size human readble

   df  -PhT

##### Check the age of the filesystem

   df  / | awk '{print $1}' | grep dev | xargs tune2fs -l | grep create

##### Display the space used for all your mounted logical volume (LV)

   df  -kh /dev/vg0*/lv*

##### df output, sorted by Use% and correctly maintaining header row

   df  -h | grep -v ^none | ( read header ; echo "$header" ; sort -rn -k 5)

##### df without line wrap on long FS name

   df  -P | column -t

##### Convert df command to posix; uber GREPable

   df  -P

##### Report full partitions from a cron

   df  -l | grep -e "9.%" -e "100%"

##### df without line wrap on long FS name

   df  -PH|column -t

##### View the current number of free/used inodes in a file system

   df  -i  <partition>

##### Show total disk space on all partitions

   df  -h total | awk 'NR==1; END{print}'

##### find the device when you only know the mount point

   df  -P | awk '$6=="/media/KINGSTON" {print $1}'

##### Show all local disk and UFS mounts on Solaris

   df  -kFufs

##### Remaining Disk space for important mounted drives

   df  -H | grep -vE '^Filesystem|tmpfs|cdrom|none' | awk '{ print $5 " " $1 }'

##### df output, sorted by Use% and correctly maintaining header row

   df  -h | sort -r -k 5 -i

##### check hardisk volume

   df  -h

##### Disk Free with column and Fs and Size human readble

   df  -PhT

##### Check the age of the filesystem

   df  / | awk '{print $1}' | grep dev | xargs tune2fs -l | grep create
