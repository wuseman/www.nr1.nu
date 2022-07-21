# tree

##### Recursivly search current directory for files larger than 100MB

   tree  -ah du . | ack '\[(\d{3,}M|\d+.*G)\]'

##### Graphical tree of sub-directories

   tree 

##### Preserve colors when piping tree to less

   tree  -C | less -R

##### tree by modify time with newest file at bottom

   tree  -L 1 -ChDit | tac

##### Find top 10 largest files in /var directory (subdirectories and hidden files included )

   tree  -isafF /var|grep -v "/$"|tr '[]' ' '|sort -k1nr|head

##### List only the directories

   tree  -dL 1

##### Display the inodes number of /

   tree  -a -L 1 inodes /

##### bash: display disks by id, UUID and HW path

   tree  /dev/disk

##### lists files and folders in a folder

   tree  -i -L 1

##### print java packages by using unix tree and sed

   tree  -d -I 'CVS' -f -i | sed 's/\//./g' | sed 's/\.\.//g'

##### Directory Tree

   tree  -d

##### full path listing in /directory/path/* of javascript files.

   tree  -fi /directory/path/* | grep "\.js"

##### List all files in current dir and subdirs sorted by size

   tree  -ifs noreport .|sort -n -k2

##### Directory listing and serve folder on port 8000

   tree  -H '.' -L 1 > index.html && php -S `hostname -I | cut -d' ' -`:8000

##### Visualize directory structure

   tree 

##### Preserve colors when piping tree to less

   tree  -C | less -R

##### tree by modify time with newest file at bottom

   tree  -L 1 -ChDit | tac

##### Find top 10 largest files in /var directory (subdirectories and hidden files included )

   tree  -isafF /var|grep -v "/$"|tr '[]' ' '|sort -k1nr|head

##### List only the directories

   tree  -dL 1

##### Display the inodes number of /

   tree  -a -L 1 inodes /

##### bash: display disks by id, UUID and HW path

   tree  /dev/disk

##### lists files and folders in a folder

   tree  -i -L 1

##### print java packages by using unix tree and sed

   tree  -d -I 'CVS' -f -i | sed 's/\//./g' | sed 's/\.\.//g'

##### Directory Tree

   tree  -d

##### full path listing in /directory/path/* of javascript files.

   tree  -fi /directory/path/* | grep "\.js"

##### List all files in current dir and subdirs sorted by size

   tree  -ifs noreport .|sort -n -k2

##### Directory listing and serve folder on port 8000

   tree  -H '.' -L 1 > index.html && php -S `hostname -I | cut -d' ' -`:8000
