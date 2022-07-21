# xxd

##### Generate a random password

   xxd  -l 20 -c 20 -p /dev/urandom

##### Graphically compare two directory hierarchies without Subversion metadata

   xxd iff -r exclude=.svn

##### Binary search/replace

   xxd  < orig | sed 's/A/B/' | sed 's/HEXA/HEXB/' | xxd -r > new

##### Binary search/replace

   xxd  -p source | fold -w2 | paste -sd' ' | sed "s/A/B/g" | xxd -p -r > destination

##### get header and footer of file for use with scalpel file carving

   xxd  -l 0x04 $file; xxd -s -0x04 $file

##### generate 30 x 30 matrix

   xxd  -p /dev/urandom |fold -60|head -30|sed 's/\(..\)/\1 /g'

##### convert ascii string to hex

   xxd  -p <<< <STRING>

##### print all characters of a file using hexdump

   xxd  <file>

##### Binary search/replace

   xxd  < orig | sed 's/A/B/' | sed 's/HEXA/HEXB/' | xxd -r > new

##### Binary search/replace

   xxd  -p source | fold -w2 | paste -sd' ' | sed "s/A/B/g" | xxd -p -r > destination

##### get header and footer of file for use with scalpel file carving

   xxd  -l 0x04 $file; xxd -s -0x04 $file

##### generate 30 x 30 matrix

   xxd  -p /dev/urandom |fold -60|head -30|sed 's/\(..\)/\1 /g'

##### convert ascii string to hex

   xxd  -p <<< <STRING>

##### print all characters of a file using hexdump

   xxd  <file>
