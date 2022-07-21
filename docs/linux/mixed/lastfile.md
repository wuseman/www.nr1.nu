# lastfile

##### Show the single most recently modified file in a directory

   lastfile  () { find ${1:-.} -maxdepth 1 -type f -printf "%T+ %p\n" | sort -n | tail -n1 | sed 's/[^[:space:]]\+ //'; }
