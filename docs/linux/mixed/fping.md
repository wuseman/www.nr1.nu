# fping

##### To know the IP address of the machine current running on the network

   fping  -g 192.168.1.1 192.168.1.10 -r 1 | grep -v unreachable | awk '{print $1}'

##### Find unused IPs on a given subnet

   fping  -r1 -g <subnet> 2> /dev/null | grep unreachable | cut -f1 -d' '

##### Ping all hosts on 192.168.1.0/24

   fping  -ga 192.168.1.0/24 2> /dev/null

##### Find all alive host in the network

   fping  -Aaqgr 1 192.168.100.0/24

##### show alive hosts with fping

   fping  -ag 192.168.1.0/24

##### To know the IP address of the machine current running on the network

   fping  -r1 -Aag <network>/<cidr_mask> 2>/dev/null | sort -gt. -k4

##### Find unused IPs on a given subnet

   fping  -r1 -g <subnet> 2> /dev/null | grep unreachable | cut -f1 -d' '

##### Ping all hosts on 192.168.1.0/24

   fping  -ga 192.168.1.0/24 2> /dev/null

##### Find all alive host in the network

   fping  -Aaqgr 1 192.168.100.0/24
