# losetup

##### Mount partition from image (without offset mount)

   losetup  /dev/loop0 harddrive.img; kpartx -a -v /dev/loop0; mount /dev/mapper/loop0p1 /mountpoint/

##### Mount partition from image (without offset mount)

   losetup  /dev/loop0 harddrive.img; kpartx -a -v /dev/loop0; mount /dev/mapper/loop0p1 /mountpoint/
