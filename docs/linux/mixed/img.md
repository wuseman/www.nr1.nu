# img

##### Using PIPEs, Execute a command, convert output to .png file, upload file to imgur.com, then returning the address of the .png.

   img ur(){ convert label:@- png:-|curl -F "image=@-" -F "key=1913b4ac473c692372d108209958fd15" http://api.imgur.com/2/upload.xml|grep -Eo "<original>(.)*</original>" | grep -Eo "http://i.imgur.com/[^<]*";}

##### Preview of a picture in a terminal

   img  test.jpg

##### Execute a command, convert output to .png file, upload file to imgur.com, then returning the address of the .png.

   img ur(){ $*|convert label:@- png:-|curl -F "image=@-" -F "key=1913b4ac473c692372d108209958fd15" http://api.imgur.com/2/upload.xml|grep -Eo "<original>(.)*</original>" | grep -Eo "http://i.imgur.com/[^<]*";}

##### Using PIPEs, Execute a command, convert output to .png file, upload file to imgur.com, then returning the address of the .png.

   img ur(){ convert label:@- png:-|curl -F "image=@-" -F "key=1913b4ac473c692372d108209958fd15" http://api.imgur.com/2/upload.xml|grep -Eo "<original>(.)*</original>" | grep -Eo "http://i.imgur.com/[^<]*";}

##### Preview of a picture in a terminal

   img  test.jpg

##### Execute a command, convert output to .png file, upload file to imgur.com, then returning the address of the .png.

   img ur(){ $*|convert label:@- png:-|curl -F "image=@-" -F "key=1913b4ac473c692372d108209958fd15" http://api.imgur.com/2/upload.xml|grep -Eo "<original>(.)*</original>" | grep -Eo "http://i.imgur.com/[^<]*";}
