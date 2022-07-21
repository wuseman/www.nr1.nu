# soxi

##### Get the total length of all video / audio in the current dir (and below) in H:m:s

   soxi  -D * | awk '{SUM += $1} END { printf "%d:%d:%d\n",SUM/3600,SUM%3600/60,SUM%60}'
