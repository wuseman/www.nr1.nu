# dumpe2fs

##### Check the reserved block percentage of an Ext2/3 filesystem

   dumpe2fs  -h /dev/sdX

##### Show when filesystem was created

   dumpe2fs  -h /dev/DEVICE | grep 'created'

##### Check the reserved block percentage of an Ext2/3 filesystem

   dumpe2fs  -h /dev/sda1 2> /dev/null | awk -F ':' '{ if($1 == "Reserved block count") { rescnt=$2 } } { if($1 == "Block count") { blkcnt=$2 } } END { print "Reserved blocks: "(rescnt/blkcnt)*100"%" }'

##### Dumpe2fs, FSck running

   dumpe2fs  -h /dev/xvda1 | egrep -i 'mount count|check'

##### Show when filesystem was created

   dumpe2fs  -h /dev/DEVICE | grep 'created'

##### Check the reserved block percentage of an Ext2/3 filesystem

   dumpe2fs  -h /dev/sda1 2> /dev/null | awk -F ':' '{ if($1 == "Reserved block count") { rescnt=$2 } } { if($1 == "Block count") { blkcnt=$2 } } END { print "Reserved blocks: "(rescnt/blkcnt)*100"%" }'
