# eject

##### Decreasing the cdrom device speed

   eject  -x 4

##### Remount a usb disk in Gnome without physically removing and reinserting

   eject  /dev/sdb; sleep 1; eject -t /dev/sdb

##### Lock the hardware eject button of the cdrom

   eject  -i 1

##### limit the cdrom driver to a specified speed

   eject  -x 8 /dev/cdrom

##### Toggle cdrom device

   eject  -T [cdrom_device]

##### Decreasing the cdrom device speed

   eject  -x 4

##### Remount a usb disk in Gnome without physically removing and reinserting

   eject  /dev/sdb; sleep 1; eject -t /dev/sdb

##### Lock the hardware eject button of the cdrom

   eject  -i 1

##### limit the cdrom driver to a specified speed

   eject  -x 8 /dev/cdrom
