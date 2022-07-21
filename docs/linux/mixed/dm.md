# dm

##### Btrfs: Find file names with checksum errors

   dm esg | grep -Po 'csum failed ino\S* \d+' | sort | uniq | xargs -n 3 find / -inum 2> /dev/null

##### Dispaly a bunch of Info. on Foundry (Brocade) RX and MLX BigIron L3 (routers & switches)

   dm  ?

##### get cpu info from dmesg

   dm esg | grep cpu

##### Show errors in the kernel ring buffer

   dm esg -xT -l err,crit,emerg

##### Detect if we are running on a VMware virtual machine

   dm idecode | awk '/VMware Virtual Platform/ {print $3,$4,$5}'

##### Getting information about model no. of computer

   dm idecode | grep -i prod

##### Check motherboard manufacturer, product name, version and serial number

   dm idecode | grep -i 'Base Board Information' -A4 -B1

##### dmesg with colored human-readable dates

   dm esg -T|sed -e 's|\(^.*'`date +%Y`']\)\(.*\)|\x1b[0;34m\1\x1b[0m - \2|g'

##### Display Motherboard Info

   dm idecode -t baseboard

##### Get information about memory modules

   dm idecode type memory

##### Get info on RAM Slots and Max RAM.

   dm idecode 2.9 | grep "Maximum Capacity"; dmidecode -t 17 | grep Size

##### Shell function to create a directory named with the current date, in the format YYYYMMDD.

   dm d () { ( if [ "$1"x != "x" ]; then cd $1; fi; mkdir `date +%Y%m%d` ) }

##### Resolve the "all display buffers are busy, please try later" error on a Foundry

   dm  display-buffer reset

##### Check SATA link speed.

   dm esg | grep -i sata | grep 'link up'

##### Display BIOS Information

   dm idecode -t bios

##### Map the slot of an I/O card to its PCI bus address

   dm idecode type 9 |egrep 'Bus Address|Designation'

##### Btrfs: Find file names with checksum errors

   dm esg | grep -Po 'csum failed ino\S* \d+' | awk '{print $4}' | sort -u | xargs -n 1 find / -inum 2> /dev/null

##### View Manufacturer, Model and Serial number of the equipment using dmidecode

   dm idecode -t system

##### Get a server's serial number or Dell service tag from within linux

   dm idecode -s system-serial-number

##### dmesg pipe less with color

   dm esg -L=always | less -r

##### See your current RAM frequency

   dm idecode -t 17 | awk -F":" '/Speed/ { print $2 }'

##### easiest way to get kernel version without uname

   dm esg

##### Show errors in the kernel ring buffer

   dm esg -xT -l err,crit,emerg

##### Detect if we are running on a VMware virtual machine

   dm idecode | awk '/VMware Virtual Platform/ {print $3,$4,$5}'

##### Getting information about model no. of computer

   dm idecode | grep -i prod

##### Check motherboard manufacturer, product name, version and serial number

   dm idecode | grep -i 'Base Board Information' -A4 -B1

##### dmesg with colored human-readable dates

   dm esg -T|sed -e 's|\(^.*'`date +%Y`']\)\(.*\)|\x1b[0;34m\1\x1b[0m - \2|g'

##### Display Motherboard Info

   dm idecode -t baseboard

##### Get information about memory modules

   dm idecode type memory

##### Get info on RAM Slots and Max RAM.

   dm idecode 2.9 | grep "Maximum Capacity"; dmidecode -t 17 | grep Size

##### Shell function to create a directory named with the current date, in the format YYYYMMDD.

   dm d () { ( if [ "$1"x != "x" ]; then cd $1; fi; mkdir `date +%Y%m%d` ) }

##### Resolve the "all display buffers are busy, please try later" error on a Foundry

   dm  display-buffer reset

##### Check SATA link speed.

   dm esg | grep -i sata | grep 'link up'

##### Display BIOS Information

   dm idecode -t bios

##### Map the slot of an I/O card to its PCI bus address

   dm idecode type 9 |egrep 'Bus Address|Designation'

##### Btrfs: Find file names with checksum errors

   dm esg | grep -Po 'csum failed ino\S* \d+' | awk '{print $4}' | sort -u | xargs -n 1 find / -inum 2> /dev/null

##### View Manufacturer, Model and Serial number of the equipment using dmidecode

   dm idecode -t system

##### Get a server's serial number or Dell service tag from within linux

   dm idecode -s system-serial-number

##### dmesg pipe less with color

   dm esg -L=always | less -r

##### See your current RAM frequency

   dm idecode -t 17 | awk -F":" '/Speed/ { print $2 }'
