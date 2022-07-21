# lspci

##### lspci | grep -i pci

   lspci  | grep -i pci

##### get basic information out of your computer

   lspci 

##### list your device drivers

   lspci  -vv

##### Show number of NIC's, ports per nic and PCI address

   lspci  | grep Ether | awk '{ VAR=$1; split(VAR,ARR,"."); count[ARR[1]]++; LINE=$0; split(LINE,LINEARR,":"); LINECOUNT[ARR[1]]=LINEARR[3]; } END { for(i in count) { printf("PCI address: %s\nPorts: %d\nCard Type: %s\n", i, count[i], LINECOUNT[i]) } }'

##### Show display adapter, available drivers, and driver in use

   lspci  -v | perl -ne '/VGA/../^$/  and /VGA|Kern/ and print'

##### Find your graphics chipset

   lspci  |grep VGA

##### Get information on your graphics card on linux (such as graphics memory size)

   lspci  -v -s `lspci | awk '/VGA/{print $1}'`

##### Remap Nic aliases from PCI location

   lspci  -vv | grep 'Ethernet\|Serial' | awk 'NR == 1{ printf $1 }  NR == 2 { print " mac " $7 }' | sed ?e 's/-/:/g' -e 's/:f[ef]:f[ef]//g' -e 's/01:00.0/eth0/g' -e 's/01:00.1/eth1/g' -e 's/01:00.2/eth2/g' -e 's/01:00.3/eth3/g' > /etc/iftab && ifrename

##### Remap Nic aliases from PCI location

   lspci  -vv | grep 'Ethernet\|Serial' | awk 'NR == 1{ printf $1 }  NR == 2 { print " mac " $7 }' | sed ?e 's/-/:/g' -e 's/:f[ef]:f[ef]//g' -e 's/01:00.0/eth0/g' -e 's/01:00.1/eth1/g' -e 's/01:00.2/eth2/g' -e 's/01:00.3/eth3/g' > /etc/iftab && ifrename

##### list your device drivers

   lspci  -vv

##### Show number of NIC's, ports per nic and PCI address

   lspci  | grep Ether | awk '{ VAR=$1; split(VAR,ARR,"."); count[ARR[1]]++; LINE=$0; split(LINE,LINEARR,":"); LINECOUNT[ARR[1]]=LINEARR[3]; } END { for(i in count) { printf("PCI address: %s\nPorts: %d\nCard Type: %s\n", i, count[i], LINECOUNT[i]) } }'

##### Show display adapter, available drivers, and driver in use

   lspci  -v | perl -ne '/VGA/../^$/  and /VGA|Kern/ and print'

##### Find your graphics chipset

   lspci  |grep VGA

##### Get information on your graphics card on linux (such as graphics memory size)

   lspci  -v -s `lspci | awk '/VGA/{print $1}'`

##### Remap Nic aliases from PCI location

   lspci  -vv | grep 'Ethernet\|Serial' | awk 'NR == 1{ printf $1 }  NR == 2 { print " mac " $7 }' | sed ?e 's/-/:/g' -e 's/:f[ef]:f[ef]//g' -e 's/01:00.0/eth0/g' -e 's/01:00.1/eth1/g' -e 's/01:00.2/eth2/g' -e 's/01:00.3/eth3/g' > /etc/iftab && ifrename
