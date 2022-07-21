# iostat

##### Get info `iostat -En` for all disks with Hardware Errors - works on Solaris and Solaris forks

   iostat  -En $(iostat -en|grep c#t|awk '$2 > 0 {print $NF}')

##### find read write traffic on disk since startup

   iostat  -m -d /dev/sda1

##### Check disk I/O

   iostat  -d -x 10 5

##### find read write traffic on disk since startup

   iostat  -m -d /dev/sda1

##### Check disk I/O

   iostat  -d -x 10 5
