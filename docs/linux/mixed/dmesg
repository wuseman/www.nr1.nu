# dmesg

##### Btrfs: Find file names with checksum errors

   dmesg  | grep -Po 'csum failed ino\S* \d+' | sort | uniq | xargs -n 3 find / -inum 2> /dev/null

##### get cpu info from dmesg

   dmesg  | grep cpu

##### Show errors in the kernel ring buffer

   dmesg  -xT -l err,crit,emerg

##### dmesg with colored human-readable dates

   dmesg  -T|sed -e 's|\(^.*'`date +%Y`']\)\(.*\)|\x1b[0;34m\1\x1b[0m - \2|g'

##### Check SATA link speed.

   dmesg  | grep -i sata | grep 'link up'

##### Btrfs: Find file names with checksum errors

   dmesg  | grep -Po 'csum failed ino\S* \d+' | awk '{print $4}' | sort -u | xargs -n 1 find / -inum 2> /dev/null

##### dmesg pipe less with color

   dmesg  -L=always | less -r

##### easiest way to get kernel version without uname

   dmesg 

##### Show errors in the kernel ring buffer

   dmesg  -xT -l err,crit,emerg

##### dmesg with colored human-readable dates

   dmesg  -T|sed -e 's|\(^.*'`date +%Y`']\)\(.*\)|\x1b[0;34m\1\x1b[0m - \2|g'

##### Check SATA link speed.

   dmesg  | grep -i sata | grep 'link up'

##### Btrfs: Find file names with checksum errors

   dmesg  | grep -Po 'csum failed ino\S* \d+' | awk '{print $4}' | sort -u | xargs -n 1 find / -inum 2> /dev/null

##### dmesg pipe less with color

   dmesg  -L=always | less -r
