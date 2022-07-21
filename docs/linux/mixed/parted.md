# parted

##### Create a new gpt disk as all one partition, with a lvm using parted

   parted  -s /dev/sdb mklabel gpt mkpart -a optimal primary 1 100% set 1 lvm on

##### See size of partitions as human readable

   parted  /dev/sda print

##### See size of partitions as human readable

   parted  /dev/sda print
