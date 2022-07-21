# mdadm

##### Determine status of a RAID write-intent bitmap

   mdadm  -X /tmp1/md2bitmap

##### Assemble version 0.90 metadata RAID autodetect like in boot

   mdadm  assemble scan config /proc/partitions

##### Creates an old version raid1 with 3 mirror and 3 spares, from partitions of the same disk

   mdadm  create /dev/md0 metadata=0.90 level=1 raid-devices=3 spare-devices=3 /dev/sdb[5-9] /dev/sdb10

##### Determine status of a RAID write-intent bitmap

   mdadm  -X /tmp1/md2bitmap

##### Assemble version 0.90 metadata RAID autodetect like in boot

   mdadm  assemble scan config /proc/partitions

##### Creates an old version raid1 with 3 mirror and 3 spares, from partitions of the same disk

   mdadm  create /dev/md0 metadata=0.90 level=1 raid-devices=3 spare-devices=3 /dev/sdb[5-9] /dev/sdb10
