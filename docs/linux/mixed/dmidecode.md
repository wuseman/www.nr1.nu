# dmidecode

##### Detect if we are running on a VMware virtual machine

   dmidecode  | awk '/VMware Virtual Platform/ {print $3,$4,$5}'

##### Getting information about model no. of computer

   dmidecode  | grep -i prod

##### Check motherboard manufacturer, product name, version and serial number

   dmidecode  | grep -i 'Base Board Information' -A4 -B1

##### Display Motherboard Info

   dmidecode  -t baseboard

##### Get information about memory modules

   dmidecode  type memory

##### Get info on RAM Slots and Max RAM.

   dmidecode  2.9 | grep "Maximum Capacity"; dmidecode -t 17 | grep Size

##### Display BIOS Information

   dmidecode  -t bios

##### Map the slot of an I/O card to its PCI bus address

   dmidecode  type 9 |egrep 'Bus Address|Designation'

##### View Manufacturer, Model and Serial number of the equipment using dmidecode

   dmidecode  -t system

##### Get a server's serial number or Dell service tag from within linux

   dmidecode  -s system-serial-number

##### See your current RAM frequency

   dmidecode  -t 17 | awk -F":" '/Speed/ { print $2 }'

##### Detect if we are running on a VMware virtual machine

   dmidecode  | awk '/VMware Virtual Platform/ {print $3,$4,$5}'

##### Getting information about model no. of computer

   dmidecode  | grep -i prod

##### Check motherboard manufacturer, product name, version and serial number

   dmidecode  | grep -i 'Base Board Information' -A4 -B1

##### Display Motherboard Info

   dmidecode  -t baseboard

##### Get information about memory modules

   dmidecode  type memory

##### Get info on RAM Slots and Max RAM.

   dmidecode  2.9 | grep "Maximum Capacity"; dmidecode -t 17 | grep Size

##### Display BIOS Information

   dmidecode  -t bios

##### Map the slot of an I/O card to its PCI bus address

   dmidecode  type 9 |egrep 'Bus Address|Designation'

##### View Manufacturer, Model and Serial number of the equipment using dmidecode

   dmidecode  -t system

##### Get a server's serial number or Dell service tag from within linux

   dmidecode  -s system-serial-number

##### See your current RAM frequency

   dmidecode  -t 17 | awk -F":" '/Speed/ { print $2 }'
