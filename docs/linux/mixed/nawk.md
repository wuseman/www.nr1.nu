# nawk

##### reverse-print contents of a file

   nawk  '{line[NR]=$0} END{for (; NR>=1; NR){print line[NR]}}' FILENAME

##### Unix timestamp Solaris

   nawk  'BEGIN {print srand()}'
