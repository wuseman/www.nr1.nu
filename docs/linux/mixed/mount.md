# mount

##### currently mounted filesystems in nice layout

   mount  | column -t

##### Mount a temporary ram partition

   mount  -t tmpfs tmpfs /mnt -o size=1024m

##### currently mounted filesystems in nice layout

   mount  | column -t

##### Mount a temporary ram partition

   mount  -t tmpfs tmpfs /mnt -o size=1024m

##### currently mounted filesystems in nice layout

   mount  | column -t

##### Mount a temporary ram partition

   mount  -t tmpfs tmpfs /mnt -o size=1024m

##### currently mounted filesystems in nice layout

   mount  | column -t

##### Mount a temporary ram partition

   mount  -t tmpfs tmpfs /mnt -o size=1024m

##### Mount a temporary ram partition

   mount  -t tmpfs tmpfs /mnt -o size=1024m

##### find the device when you only know the mount point

   mount  | grep "mount point"

##### Mount a temporary ram partition

   mount  -t tmpfs tmpfs /mnt -o size=1024m

##### Loopback mount .iso on FreeBSD

   mount  -t cd9660 /dev/`mdconfig -a -t vnode -f discimg.iso` /cdrom

##### umount all nfs mounts on machine

   mount  | grep : | tr -s ' ' -d 3 | xargs umount -v

##### umount all nfs mounts on machine

   mount  | awk '/:/ { print $3 } ' | xargs sudo umount

##### mount a msdos formated floppy disk

   mount  -t msdos /dev/fd0 /mnt/floppy

##### Mount a temporary ram partition

   mount  -t tmpfs tmpfs /mnt -o size=1024m

##### Mount a windows partition in a dual boot linux installation...[Read Only Mounting]

   mount  -o auto -t ntfs /dev/hda1  /windows

##### last mounted device

   mount  |tail -1 | less -p "/dev/[^ ]*"

##### Creates and Mounts the PSP partition to the folder /media/psp/

   mount  -t vfat /dev/sdx1 /media/psp/

##### Mount a temporary ram partition

   mount  -t tmpfs tmpfs /mnt -o size=1024m

##### Mount a temporary ram partition

   mount  -t tmpfs tmpfs /mnt -o size=1024m

##### mount an iso

   mount  -o loop -t iso9660 my.iso /mnt/something

##### currently mounted filesystems in nice layout

   mount  | column -t

##### Mount a temporary ram partition

   mount  -t tmpfs tmpfs /mnt -o size=1024m

##### Mount proc

   mount  -t proc{,,}

##### Use a Gmail virtual disk (GmailFS) on Ubuntu

   mount .gmailfs none /mount/path/ [-o username=USERNAME[,password=PASSWORD][,fsname=VOLUME]] [-p]

##### Mount a partition from dd disk image

   mount  -o loop,offset=$((512*x)) /path/to/dd/image /mount/path

##### Mount directories in different locations

   mount  bind /old/directory/path /new/directory/path

##### Make a ready-only filesystem ?writeable? by unionfs

   mount  -t unionfs -o dirs=/tmp/unioncache=rw:/mnt/readonly=ro unionfs /mnt/unionfs

##### currently mounted filesystems in nice layout

   mount  | column -t

##### Mount a temporary ram partition

   mount  -t tmpfs tmpfs /mnt -o size=1024m

##### Mount the first NTFS partition inside a VDI file (VirtualBox Disk Image)

   mount  -t ntfs-3g -o ro,loop,uid=user,gid=group,umask=0007,fmask=0117,offset=0x$(hd -n 1000000  image.vdi | grep "eb 52 90 4e 54 46 53" | cut -c 1-8) image.vdi /mnt/vdi-ntfs

##### mount a cdrom

   mount  -t iso9660 /dev/cdrom /media/cdrom

##### currently mounted filesystems in nice layout

   mount  | column -t

##### Mount a temporary ram partition

   mount  -t tmpfs tmpfs /mnt -o size=1024m

##### Mount iso to /mnt on Solaris

   mount  -F hsfs -o ro `lofiadm -a /sol-10-u7-ga-sparc-dvd.iso` /mnt

##### Remount an already-mounted filesystem without unmounting it

   mount  -o remount,ro /dev/foo /

##### Mount SMB share with password containing special characters

   mount _smbfs '//user:p%40ss@server/share' /Volumes/share

##### currently mounted filesystems in nice layout

   mount  | column -t

##### Mount a temporary ram partition

   mount  -t tmpfs tmpfs /mnt -o size=1024m

##### Mount an smb share on linux

   mount  -t smbfs //$server/share /local/mount -o rw,username=$USER

##### Mount windows share to the specified location including credentials

   mount .cifs //10.0.0.1/d/share /mnt/winshare/ -o username=administrator,password=password

##### copy root to new device

   mount  /dev/root /mnt/root; rsync -avHX /mnt/root/ /mnt/target/

##### Mount file system using back-up superblock

   mount  -o sb=98304 /dev/sda5 /mnt/data5

##### currently mounted filesystems in nice layout

   mount  | column -t

##### Mount a temporary ram partition

   mount  -t tmpfs tmpfs /mnt -o size=1024m

##### Mount a windows partition in a dual boot linux installation with write permission...[Read and Write]

   mount  -o -t ntfs-3g /dev/sda1 /mnt/windows/c force

##### Mount Windows fileshare on a domain from bash

   mount  -t cifs -o username=SlackerMojo,domain=BIGGREEDY,rw //192.168.4.24/f /mnt/storage

##### Mount a temporary ram partition

   mount  -t tmpfs tmpfs /mnt -o size=1024m

##### Mount a .iso file in UNIX/Linux

   mount  /path/to/file.iso /mnt/cdrom -oloop

##### Mount a .iso file in UNIX/Linux

   mount  /path/to/file.iso /mnt/cdrom -oloop

##### Unmount all mounted SAMBA/Windows shares

   mount |grep -e '//'|cut -d ' ' -f3| xargs -I {} umount {}

##### mount virtualbox share

   mount  -t vboxfs share /mnt/mount-point

##### Mount a temporary ram partition

   mount  -t tmpfs tmpfs /mnt -o size=1024m

##### Mount a temporary ram partition

   mount  -t tmpfs tmpfs /mnt -o size=1024m

##### mount iso file

   mount  -o loop centos.iso /nmt/dir

##### mount starting sector of the partition we want to mount

   mount  -o loop,offset=$((512*x)) /path/to/dd/image /mount/path

##### currently mounted filesystems in nice layout

   mount  | column -t

##### Mount a temporary ram partition

   mount  -t tmpfs tmpfs /mnt -o size=1024m

##### currently mounted filesystems in nice layout

   mount  | column -t

##### Mount a temporary ram partition

   mount  -t tmpfs tmpfs /mnt -o size=1024m

##### currently mounted filesystems in nice layout

   mount  | column -t

##### Mount a temporary ram partition

   mount  -t tmpfs tmpfs /mnt -o size=1024m

##### Mount a temporary ram partition

   mount  -t tmpfs tmpfs /mnt -o size=1024m

##### Mount a temporary ram partition

   mount  -t tmpfs tmpfs /mnt -o size=1024m

##### Mount a temporary ram partition

   mount  -t tmpfs tmpfs /mnt -o size=1024m

##### Mount a temporary ram partition

   mount  -t tmpfs tmpfs /mnt -o size=1024m

##### Mount a temporary ram partition

   mount  -t tmpfs tmpfs /mnt -o size=1024m

##### mount an iso

   mount  -o loop -t iso9660 my.iso /mnt/something

##### currently mounted filesystems in nice layout

   mount  | column -t

##### Mount a temporary ram partition

   mount  -t tmpfs tmpfs /mnt -o size=1024m

##### Mount proc

   mount  -t proc{,,}

##### Use a Gmail virtual disk (GmailFS) on Ubuntu

   mount .gmailfs none /mount/path/ [-o username=USERNAME[,password=PASSWORD][,fsname=VOLUME]] [-p]

##### Mount a partition from dd disk image

   mount  -o loop,offset=$((512*x)) /path/to/dd/image /mount/path

##### Mount directories in different locations

   mount  bind /old/directory/path /new/directory/path

##### Make a ready-only filesystem ?writeable? by unionfs

   mount  -t unionfs -o dirs=/tmp/unioncache=rw:/mnt/readonly=ro unionfs /mnt/unionfs

##### currently mounted filesystems in nice layout

   mount  | column -t

##### Mount a temporary ram partition

   mount  -t tmpfs tmpfs /mnt -o size=1024m

##### Mount the first NTFS partition inside a VDI file (VirtualBox Disk Image)

   mount  -t ntfs-3g -o ro,loop,uid=user,gid=group,umask=0007,fmask=0117,offset=0x$(hd -n 1000000  image.vdi | grep "eb 52 90 4e 54 46 53" | cut -c 1-8) image.vdi /mnt/vdi-ntfs

##### mount a cdrom

   mount  -t iso9660 /dev/cdrom /media/cdrom

##### currently mounted filesystems in nice layout

   mount  | column -t

##### Mount a temporary ram partition

   mount  -t tmpfs tmpfs /mnt -o size=1024m

##### Mount iso to /mnt on Solaris

   mount  -F hsfs -o ro `lofiadm -a /sol-10-u7-ga-sparc-dvd.iso` /mnt

##### Remount an already-mounted filesystem without unmounting it

   mount  -o remount,ro /dev/foo /

##### Mount SMB share with password containing special characters

   mount _smbfs '//user:p%40ss@server/share' /Volumes/share

##### currently mounted filesystems in nice layout

   mount  | column -t

##### Mount a temporary ram partition

   mount  -t tmpfs tmpfs /mnt -o size=1024m

##### Mount an smb share on linux

   mount  -t smbfs //$server/share /local/mount -o rw,username=$USER

##### Mount windows share to the specified location including credentials

   mount .cifs //10.0.0.1/d/share /mnt/winshare/ -o username=administrator,password=password

##### copy root to new device

   mount  /dev/root /mnt/root; rsync -avHX /mnt/root/ /mnt/target/

##### Mount file system using back-up superblock

   mount  -o sb=98304 /dev/sda5 /mnt/data5

##### currently mounted filesystems in nice layout

   mount  | column -t

##### Mount a temporary ram partition

   mount  -t tmpfs tmpfs /mnt -o size=1024m

##### Mount a windows partition in a dual boot linux installation with write permission...[Read and Write]

   mount  -o -t ntfs-3g /dev/sda1 /mnt/windows/c force

##### Mount Windows fileshare on a domain from bash

   mount  -t cifs -o username=SlackerMojo,domain=BIGGREEDY,rw //192.168.4.24/f /mnt/storage

##### Mount a temporary ram partition

   mount  -t tmpfs tmpfs /mnt -o size=1024m

##### Mount a .iso file in UNIX/Linux

   mount  /path/to/file.iso /mnt/cdrom -oloop

##### Unmount all mounted SAMBA/Windows shares

   mount |grep -e '//'|cut -d ' ' -f3| xargs -I {} umount {}

##### mount virtualbox share

   mount  -t vboxfs share /mnt/mount-point

##### Mount a temporary ram partition

   mount  -t tmpfs tmpfs /mnt -o size=1024m

##### Mount a temporary ram partition

   mount  -t tmpfs tmpfs /mnt -o size=1024m
