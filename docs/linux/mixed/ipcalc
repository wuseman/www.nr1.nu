# ipcalc

##### Show Network IP and Subnet

   ipcalc  $(ifconfig eth0 | grep "inet addr:" | cut -d':' -f2,4 | sed 's/.+Bcast:/\//g') | awk '/Network/ { print $2 } '
