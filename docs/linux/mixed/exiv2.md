# exiv2

##### set timestamp in exif of a image

   exiv2  -M"set Exif.Photo.DateTimeOriginal `date "+%Y:%m:%d %H:%M:%S"`" filename.jpg

##### Find most used focal lengths in a directory of photos

   exiv2  *JPG | grep Focal | awk '{print $5}' | sort -n | uniq -c

##### Picture Renamer

   exiv2  rename *.jpg

##### Picture Renamer

   exiv2  rename *.jpg
