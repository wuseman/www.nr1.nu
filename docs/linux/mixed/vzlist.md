# vzlist

##### Get disk quota usage openvz using vzlist

   vzlist  -a -H -o hostname,diskspace,diskspace.s,veid  | awk '{ printf( "%2.f%\t%s\t%s\n"), $2*100/$3, $4, $1}' | sort -r

##### Get disk quota usage openvz using vzlist

   vzlist  -a -H -o hostname,diskspace,diskspace.s,veid  | awk '{ printf( "%2.f%\t%s\t%s\n"), $2*100/$3, $4, $1}' | sort -r
