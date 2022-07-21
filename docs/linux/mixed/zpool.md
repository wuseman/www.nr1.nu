# zpool

##### Creating a RAID-Z Storage Pool

   zpool  create tank raidz c0t0d0 c0t1d0 c0t2d0 c0t3d0 c0t4d0 c0t5d0

##### Creating a Mirrored Storage Pool using Zpool

   zpool  create tank mirror c0t0d0 c0t1d0 mirror c0t2d0 c0t3d0

##### Creating a ZFS Storage Pool by Using Files

   zpool  create tank /path/to/file/a /path/to/file/b
