# hexdump

##### Hex Dump

   hexdump  -C file

##### generate 30 x 30 matrix

   hexdump  -v -e '"%u"' </dev/urandom|fold -60|head -n 30|sed 's/\(.\{2\}\)/\1 /g'

##### view the system memory in clear text

   hexdump  -e '90/1 "%_p" "\n"' /dev/mem | less

##### Generat a Random MAC address

   hexdump  -n6 -e '/1 ":%02X"' /dev/random|sed s/^://g

##### convert binary data to shellcode

   hexdump  -v -e '"\\""x" 1/1 "%02x" ""' <bin_file>

##### print first n characters of any file in human readble form using hexdump

   hexdump  -C -n 20 filename

##### print all characters of any file in human readble form using hexdump

   hexdump  -c <file>

##### find a particular string on an unmounted partition

   hexdump  -e '8/1 "%02X ""\t"" "' -e '8/1 "%c""\n"' /dev/sda1 | less /mystring

##### generate 30 x 30 matrix

   hexdump  -v -e '"%u"' </dev/urandom|fold -60|head -n 30|sed 's/\(.\{2\}\)/\1 /g'

##### view the system memory in clear text

   hexdump  -e '90/1 "%_p" "\n"' /dev/mem | less

##### Generat a Random MAC address

   hexdump  -n6 -e '/1 ":%02X"' /dev/random|sed s/^://g

##### convert binary data to shellcode

   hexdump  -v -e '"\\""x" 1/1 "%02x" ""' <bin_file>

##### print first n characters of any file in human readble form using hexdump

   hexdump  -C -n 20 filename

##### print all characters of any file in human readble form using hexdump

   hexdump  -c <file>
