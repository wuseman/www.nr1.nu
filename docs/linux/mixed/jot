# jot

##### Print a row of characters across the terminal

   jot  -b '#' -s '' $COLUMNS

##### Echo several blank lines

   jot  -b '' 100

##### Print a random 8 digit number

   jot  -r -n 8 0 9 | rs -g 0

##### Print a random 8 digit number

   jot  -s '' -r -n 8 0 9

##### Generate an XKCD #936 style 4 word password

   jot  4 | awk '{ print "wc -l /usr/share/dict/words | awk '"'"'{ print \"echo $[ $RANDOM * $RANDOM % \" $1 \"]\" }'"'"' | bash | awk '"'"'{ print \"sed -n \" $1 \"p /usr/share/dict/words\" }'"'"' | bash" }' | bash | tr -d '\n' | sed 's/$/\n/'

##### Print a row of 50 hyphens

   jot  -s '' -b '-' 50

##### Print a random 8 digit number

   jot  -r -n 8 0 9 | rs -g 0

##### Print a random 8 digit number

   jot  -s '' -r -n 8 0 9

##### Generate an XKCD #936 style 4 word password

   jot  4 | awk '{ print "wc -l /usr/share/dict/words | awk '"'"'{ print \"echo $[ $RANDOM * $RANDOM % \" $1 \"]\" }'"'"' | bash | awk '"'"'{ print \"sed -n \" $1 \"p /usr/share/dict/words\" }'"'"' | bash" }' | bash | tr -d '\n' | sed 's/$/\n/'

##### Print a row of 50 hyphens

   jot  -s '' -b '-' 50
