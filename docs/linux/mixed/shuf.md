# shuf

##### Pick a random line from a file

   shuf  file.txt | head -n 1

##### lotto generator

   shuf  -i 1-49 | head -n6 | sort -n| xargs

##### Generate an XKCD #936 style 4 word password

   shuf  -n4 /usr/share/dict/words | tr -d '\n'

##### Randomize lines in a file

   shuf  SOMEFILE

##### lotto generator

   shuf  -i 1-49 -n 6 | sort -n | xargs

##### Alternative way to generate an XKCD #936 style 4 word password usig sed

   shuf  -n4 /usr/share/dict/words | sed -e ':a;N;$!ba;s/\n/ /g;s/'\''//g;s/\b\(.\)/\u\1/g;s/ //g'

##### Simple word scramble

   shuf  -n1 /usr/share/dict/words | tee >(sed -e 's/./&\n/g' | shuf | tr -d '\n' | line) > /tmp/out

##### Selecting a random file/folder of a folder

   shuf  -n1 -e *

##### Generate an XKCD #936 style 4 word password

   shuf  -n4 /usr/share/dict/words | tr '\n' ' '

##### Pick a random line from a file

   shuf  -n1 file.txt

##### Generate an XKCD #936 style 4 word password

   shuf  /usr/share/dict/words  |grep "^[^']\{3,6\}$" |head -n4 | sed -e "s/\b\(.\)/\u\1/g" | tr -d '\n'; echo

##### Generate an XKCD #936 style 4 word password

   shuf  /usr/share/dict/words  |grep "^[^']\{3,5\}$" |head -n4

##### NSA codename generator

   shuf  -n 2 /usr/share/dict/words | tr -dc [:alnum:] | tr '[:lower:]' '[:upper:]'; echo

##### lotto generator

   shuf  -i 1-49 | head -n6 | sort -n| xargs

##### Generate an XKCD #936 style 4 word password

   shuf  -n4 /usr/share/dict/words | tr -d '\n'

##### Randomize lines in a file

   shuf  SOMEFILE

##### lotto generator

   shuf  -i 1-49 -n 6 | sort -n | xargs

##### Alternative way to generate an XKCD #936 style 4 word password usig sed

   shuf  -n4 /usr/share/dict/words | sed -e ':a;N;$!ba;s/\n/ /g;s/'\''//g;s/\b\(.\)/\u\1/g;s/ //g'

##### Simple word scramble

   shuf  -n1 /usr/share/dict/words | tee >(sed -e 's/./&\n/g' | shuf | tr -d '\n' | line) > /tmp/out

##### Selecting a random file/folder of a folder

   shuf  -n1 -e *

##### Generate an XKCD #936 style 4 word password

   shuf  -n4 /usr/share/dict/words | tr '\n' ' '

##### Pick a random line from a file

   shuf  -n1 file.txt

##### Generate an XKCD #936 style 4 word password

   shuf  /usr/share/dict/words  |grep "^[^']\{3,6\}$" |head -n4 | sed -e "s/\b\(.\)/\u\1/g" | tr -d '\n'; echo

##### Generate an XKCD #936 style 4 word password

   shuf  /usr/share/dict/words  |grep "^[^']\{3,5\}$" |head -n4
