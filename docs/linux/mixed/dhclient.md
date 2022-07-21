# dhclient

##### Autofind alive hosts on subnet upon connect

   dhclient  wlan0 && sbnt=$(ifconfig wlan0 |grep "inet addr" |cut -d ":" -f 2 | cut -d "." -f 1-3) && nmap $sbnt.0/24 -sP

##### randomize hostname and mac address, force dhcp renew. (for anonymous networking)

   dhclient  -r && rm -f /var/lib/dhcp3/dhclient* && sed "s=$(hostname)=REPLACEME=g" -i /etc/hosts && hostname "$(echo $RANDOM | md5sum  | cut -c 1-7 | tr a-z A-Z)" && sed "s=REPLACEME=$(hostname)=g" -i /etc/hosts && macchanger -e eth0 && dhclient

##### randomize hostname and mac address, force dhcp renew. (for anonymous networking)

   dhclient  -r && rm -f /var/lib/dhcp3/dhclient* && sed "s=$(hostname)=REPLACEME=g" -i /etc/hosts && hostname "$(echo $RANDOM | md5sum  | cut -c 1-7 | tr a-z A-Z)" && sed "s=REPLACEME=$(hostname)=g" -i /etc/hosts && macchanger -e eth0 && dhclient
