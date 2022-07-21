# kpartx

##### Access partitions inside a LVM volume

   kpartx  -a /dev/mapper/space-foobar

##### Mount a VMware virtual disk (.vmdk) file on a Linux box

   kpartx  -av <image-flat.vmdk>; mount -o /dev/mapper/loop0p1 /mnt/vmdk

##### Access partitions inside a LVM volume

   kpartx  -a /dev/mapper/space-foobar

##### Mount a VMware virtual disk (.vmdk) file on a Linux box

   kpartx  -av <image-flat.vmdk>; mount -o /dev/mapper/loop0p1 /mnt/vmdk
