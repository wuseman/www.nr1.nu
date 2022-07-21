# free

##### Print free memory

   free  -m | awk '/Mem/ {print $4}'

##### Flush memory cache

   free  && sync && echo 3 > /proc/sys/vm/drop_caches && free

##### Easy way to check memory consumption

   free  -m

##### free swap

   free  -m | awk '/Swap/ {print $4}'

##### Check RAM size

   free  -mto

##### Print number of mb of free ram

   free  -m | awk '/Mem/ {print $4}'

##### Print number of mb of free ram

   free  -m | awk '/buffer/ {print $4}'

##### Get free RAM in %

   free  -m | awk '/cache:/ { printf("%d%\n",$3/($3+$4)*100)}'

##### Easy way to check memory consumption

   free  -mh

##### Print free RAM in MB

   free  -m | awk '/cache:/ {print $4}'

##### free swap

   free  -b | grep "Swap:" | sed 's/ * / /g' | cut -d ' ' -f2

##### Get memory total from /proc/meminfo in Gigs

   free  -g

##### Check RAM size

   free  -mto

##### Print number of mb of free ram

   free  -m | awk '/Mem/ {print $4}'

##### Print number of mb of free ram

   free  -m | awk '/buffer/ {print $4}'

##### Get free RAM in %

   free  -m | awk '/cache:/ { printf("%d%\n",$3/($3+$4)*100)}'

##### Easy way to check memory consumption

   free  -mh
