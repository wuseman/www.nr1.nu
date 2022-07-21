# od

##### Get DMX disk ID from the ODM database of a DMX attached disk. It is ok for virtual disks.

   od mget -q "attribute=unique_id" CuAt  |sed -n 's/.*name = "\(.*\)"/\1/p;s/.*value = "..........\(....\)..SYMMETRIX..EMCfcp.*"/0x\1/p;s/.*value =//p'

##### See non printable caracters like tabulations, CRLF, LF line terminators ( colored )

   od  -c <FILE> | grep color '\\.'

##### Random Number Between 1 And 256

   od  -An -N1 -tu1 /dev/random

##### Generat a Random MAC address

   od  /dev/urandom -w6 -tx1 -An|sed -e 's/ //' -e 's/ /:/g'|head -n 1

##### Random unsigned integer

   od  -N 4 -t uL -An /dev/random | tr -d " "

##### Generat a Random MAC address

   od  -An -N10 -x  /dev/random  | md5sum | sed -r 's/^(.{10}).*$/\1/; s/([0-9a-f]{2})/\1:/g; s/:$//;'

##### print all characters of a file using hexdump

   od  -c <file>

##### Url Encode

   od  -An -w999 -t xC <<< "$1" | sed 's/[ ]\?\(c[23]\) \(..\)/%\1%\2/g;s/ /\\\\\x/g' | xargs echo -ne

##### View the octal dump of a file

   od  -vt x1 /tmp/spaghettifile

##### hexadecimal dump of a file as it is on disk with hexadecimal offsets

   od  format=x1  address-radix=x mybinaryfile

##### Generate a Random (unicast) MAC address

   od  -An -N6 -tx1 /dev/urandom | sed -e 's/^  *//' -e 's/  */:/g' -e 's/:$//' -e 's/^\(.\)[13579bdf]/\10/'

##### See non printable caracters like tabulations, CRLF, LF line terminators ( colored )

   od  -c <FILE> | grep color '\\.'

##### Random Number Between 1 And 256

   od  -An -N1 -tu1 /dev/random

##### Generat a Random MAC address

   od  /dev/urandom -w6 -tx1 -An|sed -e 's/ //' -e 's/ /:/g'|head -n 1

##### Random unsigned integer

   od  -N 4 -t uL -An /dev/random | tr -d " "

##### Generat a Random MAC address

   od  -An -N10 -x  /dev/random  | md5sum | sed -r 's/^(.{10}).*$/\1/; s/([0-9a-f]{2})/\1:/g; s/:$//;'

##### print all characters of a file using hexdump

   od  -c <file>

##### Url Encode

   od  -An -w999 -t xC <<< "$1" | sed 's/[ ]\?\(c[23]\) \(..\)/%\1%\2/g;s/ /\\\\\x/g' | xargs echo -ne

##### View the octal dump of a file

   od  -vt x1 /tmp/spaghettifile

##### hexadecimal dump of a file as it is on disk with hexadecimal offsets

   od  format=x1  address-radix=x mybinaryfile
