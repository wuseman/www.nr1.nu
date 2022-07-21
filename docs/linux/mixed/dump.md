# dump

##### Check the reserved block percentage of an Ext2/3 filesystem

   dump e2fs -h /dev/sdX

##### Show when filesystem was created

   dump e2fs -h /dev/DEVICE | grep 'created'

##### Dump root ext3 fs over ssh

   dump  0f - / | bzip -c9 | ssh user@host "cat > /home/user/root.dump.bz2"

##### Dump snapshot of UFS2 filesystem, then gzip it

   dump  -0Lauf - /dev/adXsYz | gzip > /path/to/adXsYz.dump.gz

##### Dump the root directory to an external hard drive

   dump  -0 -M -B 4000000 -f /media/My\ Passport/Fedora10bckup/root_dump_fedora -z2 /

##### Check the reserved block percentage of an Ext2/3 filesystem

   dump e2fs -h /dev/sda1 2> /dev/null | awk -F ':' '{ if($1 == "Reserved block count") { rescnt=$2 } } { if($1 == "Block count") { blkcnt=$2 } } END { print "Reserved blocks: "(rescnt/blkcnt)*100"%" }'

##### Dumpe2fs, FSck running

   dump e2fs -h /dev/xvda1 | egrep -i 'mount count|check'

##### Show when filesystem was created

   dump e2fs -h /dev/DEVICE | grep 'created'

##### Dump root ext3 fs over ssh

   dump  0f - / | bzip -c9 | ssh user@host "cat > /home/user/root.dump.bz2"

##### Dump snapshot of UFS2 filesystem, then gzip it

   dump  -0Lauf - /dev/adXsYz | gzip > /path/to/adXsYz.dump.gz

##### Dump the root directory to an external hard drive

   dump  -0 -M -B 4000000 -f /media/My\ Passport/Fedora10bckup/root_dump_fedora -z2 /

##### Check the reserved block percentage of an Ext2/3 filesystem

   dump e2fs -h /dev/sda1 2> /dev/null | awk -F ':' '{ if($1 == "Reserved block count") { rescnt=$2 } } { if($1 == "Block count") { blkcnt=$2 } } END { print "Reserved blocks: "(rescnt/blkcnt)*100"%" }'
