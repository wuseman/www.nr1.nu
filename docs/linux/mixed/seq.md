# seq

##### Calculate N!

   seq  -s* 10 |bc

##### Calculate 1**2 + 2**2 + 3**2 + ...

   seq  -s^2+ 11 |rev| cut -d'+' -f2- | rev | bc

##### Create a list of sequential logins

   seq  -w 100 | sed 's/^/login/'

##### Print a row of characters across the terminal

   seq  -s'#' 0 $(tput cols) | tr -d '[:digit:]'

##### Print a row of 50 hyphens

   seq  -s" " -50 -1 | tr -dc -

##### for loop with leading zero in bash 3

   seq  -s " " -w 3 20

##### Calculating series with awk: add numbers from 1 to 100

   seq  100 | awk '{sum+=$1} END {print sum}'

##### Calculate sum of N numbers (Thanks to flatcap)

   seq  -s "+" 3 | bc

##### run command on a group of nodes in parallel

   seq  1 5 | parallel ssh {}.cluster.net uptime

##### Display rows and columns of random numbers with awk

   seq  6 | awk '{for(x=1; x<=5; x++) {printf ("%f ", rand())}; printf ("\n")}'

##### port scan using parallel

   seq  1 255 | parallel -j+0 'nc -w 1 -z -v 192.168.1.{} 80'

##### download a sequence of vim patch

   seq  -f"ftp://ftp.vim.org/pub/vim/patches/7.1/7.1.%03g" 176 240 | xargs -I {} wget -c  {};

##### Quick plotting of a function

   seq  0 0.1 20 | awk '{print $1, cos(0.5*$1)*sin(5*$1)}' | graph -T X

##### 1+2-3+4-5+6-7 Series

   seq  1000 | paste -sd+- | bc

##### Calculate 1**2 + 2**2 + 3**2 + ...

   seq  -f"%g^2" -s "+" 10 | bc

##### List the most recent dates in reverse-chronological order

   seq  1 5 | xargs -I"#" date date="today -# days" +'%Y-%m-%d'

##### Fibonacci numbers with awk

   seq  50| awk 'BEGIN {a=1; b=1} {print a; c=a+b; a=b; b=c}'

##### Calculate sum of N numbers (Thanks to flatcap)

   seq  100000 | paste -sd+ | bc

##### Calculate N!

   seq  10 | paste -sd* | bc

##### subtraction between lines

   seq  1 3 20 | sed -n '1{h;d};H;x;s/\n/\t/p' | awk '{printf("%d - %d = %d\n", $2, $1, $2-$1)}'

##### subtraction between lines

   seq  1 3 20 | awk '{ T[NR]=$1} END {for (i=1;i<=(NR-1);i++) print T[i+1],"-",T[i],"=" , T[i+1]-T[i]}'

##### skipping five lines, at top, then at bottom

   seq  1 12 | sed 1,5d ; seq 1 12 | head lines=-5

##### Generate random number with shuf

   seq  10| shuf | head -1

##### print multiplication formulas

   seq  9 | sed 'H;g' | awk -v RS='' '{for(i=1;i<=NF;i++)printf("%dx%d=%d%s", i, NR, i*NR, i==NR?"\n":"\t")}'

##### shorter loop than for loop

   seq  -f  'echo %g' $NUM | sh

##### join every five lines

   seq  20 | awk 'ORS=NR%5?FS:RS'

##### List prime numbers from 2 to 100

   seq  2 100 | factor | sed '/ .* / d ; s/:.*//'

##### Calculate a transcendental number (pi)

   seq  1 2 99999999 | sed 's!^!4/!' | paste -sd-+ | bc -l

##### lotto generator

   seq  -w 50 | sort -R | head -6 |fmt|tr " " "-"

##### Read/Write output/input from sed to a file

   seq  20 | sed  '5,6 { w out.txt }'  #Can't print correctly. See sample output

##### Generate trigonometric/log data easily

   seq  8 | awk '{print "e(" $0 ")" }' | bc -l

##### Write over previous line in bash

   seq  1 1000000 | while read i; do echo -en "\r$i"; done

##### Command to resolve name from Ip address, passing only the last field after seq (C Class for example)

   seq  4|xargs -n1 -i bash -c "echo -n 164.85.216.{} - ; nslookup 164.85.216.{} |grep name"|tr -s '  ' ' '|awk '{print $1" - "$5}'|sed 's/.$//'

##### Creating sequence of number with text

   seq  10 |xargs -n1 echo Printing line

##### Calculate N!

   seq  -s* 10 |bc

##### Print a row of characters across the terminal

   seq  -s'#' 0 $(tput cols) | tr -d '[:digit:]'

##### Print a row of 50 hyphens

   seq  -s" " -50 -1 | tr -dc -

##### for loop with leading zero in bash 3

   seq  -s " " -w 3 20

##### Calculating series with awk: add numbers from 1 to 100

   seq  100 | awk '{sum+=$1} END {print sum}'

##### Calculate sum of N numbers (Thanks to flatcap)

   seq  -s "+" 3 | bc

##### run command on a group of nodes in parallel

   seq  1 5 | parallel ssh {}.cluster.net uptime

##### Display rows and columns of random numbers with awk

   seq  6 | awk '{for(x=1; x<=5; x++) {printf ("%f ", rand())}; printf ("\n")}'

##### port scan using parallel

   seq  1 255 | parallel -j+0 'nc -w 1 -z -v 192.168.1.{} 80'

##### download a sequence of vim patch

   seq  -f"ftp://ftp.vim.org/pub/vim/patches/7.1/7.1.%03g" 176 240 | xargs -I {} wget -c  {};

##### Quick plotting of a function

   seq  0 0.1 20 | awk '{print $1, cos(0.5*$1)*sin(5*$1)}' | graph -T X

##### 1+2-3+4-5+6-7 Series

   seq  1000 | paste -sd+- | bc

##### Calculate 1**2 + 2**2 + 3**2 + ...

   seq  -f"%g^2" -s "+" 10 | bc

##### List the most recent dates in reverse-chronological order

   seq  1 5 | xargs -I"#" date date="today -# days" +'%Y-%m-%d'

##### Fibonacci numbers with awk

   seq  50| awk 'BEGIN {a=1; b=1} {print a; c=a+b; a=b; b=c}'

##### Calculate sum of N numbers (Thanks to flatcap)

   seq  100000 | paste -sd+ | bc

##### Calculate N!

   seq  10 | paste -sd* | bc

##### subtraction between lines

   seq  1 3 20 | sed -n '1{h;d};H;x;s/\n/\t/p' | awk '{printf("%d - %d = %d\n", $2, $1, $2-$1)}'

##### subtraction between lines

   seq  1 3 20 | awk '{ T[NR]=$1} END {for (i=1;i<=(NR-1);i++) print T[i+1],"-",T[i],"=" , T[i+1]-T[i]}'

##### skipping five lines, at top, then at bottom

   seq  1 12 | sed 1,5d ; seq 1 12 | head lines=-5

##### Generate random number with shuf

   seq  10| shuf | head -1

##### print multiplication formulas

   seq  9 | sed 'H;g' | awk -v RS='' '{for(i=1;i<=NF;i++)printf("%dx%d=%d%s", i, NR, i*NR, i==NR?"\n":"\t")}'

##### shorter loop than for loop

   seq  -f  'echo %g' $NUM | sh

##### join every five lines

   seq  20 | awk 'ORS=NR%5?FS:RS'

##### List prime numbers from 2 to 100

   seq  2 100 | factor | sed '/ .* / d ; s/:.*//'

##### Calculate a transcendental number (pi)

   seq  1 2 99999999 | sed 's!^!4/!' | paste -sd-+ | bc -l

##### lotto generator

   seq  -w 50 | sort -R | head -6 |fmt|tr " " "-"
