# route

##### Find default gateway

   route  -n | grep  "^0\." | awk '{print "Gateway to the World: "$2", via "$NF""}'

##### Find default gateway

   route  -n | awk '$2 ~/[1-9]+/ {print $2;}'

##### Find default gateway (proper at ppp connections too)

   route  -n | perl -ne '$ANY="0.0.0.0"; /^$ANY/ and split /\s+/ and print "Gateway to the World: ",($_[1]!=$ANY)?$_[1]:(`ip address show $_[$#_]`=~/peer ([0-9\.]+)/ and $1),", via $_[$#_].\n"'

##### Display formatted routes

   route l

##### route add default gateway

   route  add default gw 192.168.10.1

##### Find default gateway (proper at ppp connections too)

   route  -n | perl -ne '$ANY="0.0.0.0"; /^$ANY/ and split /\s+/ and print "Gateway to the World: ",($_[1]!=$ANY)?$_[1]:(`ip address show $_[$#_]`=~/peer ([0-9\.]+)/ and $1),", via $_[$#_].\n"'

##### Display formatted routes

   route l
