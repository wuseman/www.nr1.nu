# expr

##### Alternative way to get the root directory size in megabytes

   expr  $(fdisk  -s ` grep  ' / ' /etc/mtab |cut -d " " -f1`) / 1024

##### Quick command line math

   expr  512 \* 7

##### Sum file sizes

   expr  `find . -type f -printf "%s + "0`

##### a simple way to calculate the sum of all digits of a number

   expr  `echo "123671" | sed -e 's/[0-9]/ + &/g' -e 's/^ +//g'` 20

##### Quick command line math

   expr  512 \* 7

##### Sum file sizes

   expr  `find . -type f -printf "%s + "0`

##### a simple way to calculate the sum of all digits of a number

   expr  `echo "123671" | sed -e 's/[0-9]/ + &/g' -e 's/^ +//g'` 20
