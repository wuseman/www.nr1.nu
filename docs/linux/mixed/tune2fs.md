# tune2fs

##### Check default block size on ext2/ext3 filesystems

   tune2fs  -l /dev/XXXX | grep -w ^"Block size:"

##### show system installation date

   tune2fs  -l $(df -P / | tail -n1 | cut -d' ' -f1 ) | grep 'Filesystem created:'

##### Unlock more space form your hard drive

   tune2fs  -m 1 /dev/sda6

##### Migrate existing Ext3 filesystems to Ext4

   tune2fs  -O extents,uninit_bg,dir_index /dev/yourpartition

##### turn off auto hard disc boot scanning for ext3

   tune2fs  -c -1 -i 0 /dev/VG0/data

##### Find out the installation time of a linux system (when installed in a ext2/3/4 file system)

   tune2fs  -l $(df -P / | awk 'NR==2 {print $1}') | sed -n 's/^.*created: *//p'

##### Converts ext2 to ext3

   tune2fs  -j /dev/sdX

##### Unlock more space form your hard drive

   tune2fs  -m 1 /dev/sda6

##### Migrate existing Ext3 filesystems to Ext4

   tune2fs  -O extents,uninit_bg,dir_index /dev/yourpartition

##### turn off auto hard disc boot scanning for ext3

   tune2fs  -c -1 -i 0 /dev/VG0/data

##### Find out the installation time of a linux system (when installed in a ext2/3/4 file system)

   tune2fs  -l $(df -P / | awk 'NR==2 {print $1}') | sed -n 's/^.*created: *//p'

##### Converts ext2 to ext3

   tune2fs  -j /dev/sdX
