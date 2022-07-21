# timeDNS

##### a function to find the fastest free DNS server

   timeDNS () { parallel -j0 tag dig @{} "$*" ::: 208.67.222.222 208.67.220.220 198.153.192.1 198.153.194.1 156.154.70.1 156.154.71.1 8.8.8.8 8.8.4.4 | grep Query | sort -nk5; }

##### a function to find the fastest free DNS server

   timeDNS  () { { for x in "${local_DNS}" "208.67.222.222" "208.67.220.220" "198.153.192.1" "198.153.194.1" "156.154.70.1" "156.154.71.1" "8.8.8.8" "8.8.4.4"; do ({ echo -n "$x "; dig @"$x" "$*"|grep Query ; }|sponge &) done ; } | sort -n -k5 ; }

##### a function to find the fastest free DNS server

   timeDNS () { parallel -j0 tag dig @{} "$*" ::: 208.67.222.222 208.67.220.220 198.153.192.1 198.153.194.1 156.154.70.1 156.154.71.1 8.8.8.8 8.8.4.4 | grep Query | sort -nk5; }

##### a function to find the fastest free DNS server

   timeDNS  () { { for x in "${local_DNS}" "208.67.222.222" "208.67.220.220" "198.153.192.1" "198.153.194.1" "156.154.70.1" "156.154.71.1" "8.8.8.8" "8.8.4.4"; do ({ echo -n "$x "; dig @"$x" "$*"|grep Query ; }|sponge &) done ; } | sort -n -k5 ; }
