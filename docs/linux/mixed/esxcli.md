# esxcli

##### Update ESXi

   esxcli  software profile update -d https://hostupdate.vmware.com/software/VUM/PRODUCTION[168/1029] depot-index.xml -p <Release>

##### Change IP on an ESX interface

   esxcli  network ip interface ipv4 set -i vmk1 -I 10.27.51.143 -N 255.255.255.0 -t static

##### Update ESXi

   esxcli  software profile update -d https://hostupdate.vmware.com/software/VUM/PRODUCTION[168/1029] depot-index.xml -p <Release>

##### Change IP on an ESX interface

   esxcli  network ip interface ipv4 set -i vmk1 -I 10.27.51.143 -N 255.255.255.0 -t static
