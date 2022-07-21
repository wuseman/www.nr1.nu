# mdfind

##### find recently added files on OS X

   mdfind  'kMDItemFSCreationDate >= $time.this_month'

##### make a zip file containing all files with the openmeta tag "data"

   mdfind  "tag:data" > /tmp/data.txt ; zip -r9@ ~/Desktop/data.zip < /tmp/data.txt
