# genisoimage

##### generate iso

   genisoimage  -o bastion-602-jpa.iso -b boot/syslinux/isolinux.bin -c boot/syslinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -r -R .

##### Create an ISO

   genisoimage  -o ../squeeze.iso -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -J -R -V disks .

##### generate iso

   genisoimage  -o bastion-602-jpa.iso -b boot/syslinux/isolinux.bin -c boot/syslinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -r -R .
