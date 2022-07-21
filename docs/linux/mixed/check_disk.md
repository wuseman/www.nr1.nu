# check_disk

##### checking space availabe on all /proc/mounts points (using Nagios check_disk)

   check_disk  -w 15% -c 10% $(for x in $(cat /proc/mounts |awk '{print $2}')\; do echo -n " -p $x "\; done)

##### checking space availabe on all /proc/mounts points (using Nagios check_disk)

   check_disk  -w 15% -c 10% $(for x in $(cat /proc/mounts |awk '{print $2}')\; do echo -n " -p $x "\; done)
