# exiftool

##### command to change the exif date time of a image

   exiftool  -DateTimeOriginal='2009:01:01 02:03:04' file.jpg

##### Move all images in a directory into a directory hierarchy based on year, month and day based on exif information

   exiftool  '-Directory<DateTimeOriginal' -d %Y/%m/%d dir

##### Rename all images in current directory to filename based on year, month, day and time based on exif information

   exiftool  -d %Y-%m-%d_%H.%M.%S%%-c.%%e "-filename<CreateDate" .

##### Edit a PDF's metadata using exiftool

   exiftool  -Title="This is the Title" -Author="Happy Man" -Subject="PDF Metadata" foo.pdf -overwrite_original

##### Adjust all EXIF timestamps in .mov by +1 hour

   exiftool  -AllDates+=1 -{Track,Media}{Create,Modify}Date+=1 *.mov

##### For pictures : copy the last hierarchical keyword (tag) in the caption (title, description) if empty.

   exiftool  -overwrite_original -preserve -recurse "-iptc:Caption-Abstract<${XMP:HierarchicalSubject;s/.+\|//g}" -if "not $iptc:Caption-Abstract" DIR

##### Embed .torrent in a .jpg file

   exiftool  '-comment<=ubuntu-11.10-alternate-i386.iso.torrent' hello.jpg

##### command to change the exif date time of a image

   exiftool  -DateTimeOriginal='2009:01:01 02:03:04' file.jpg

##### Move all images in a directory into a directory hierarchy based on year, month and day based on exif information

   exiftool  '-Directory<DateTimeOriginal' -d %Y/%m/%d dir

##### Rename all images in current directory to filename based on year, month, day and time based on exif information

   exiftool  -d %Y-%m-%d_%H.%M.%S%%-c.%%e "-filename<CreateDate" .

##### Edit a PDF's metadata using exiftool

   exiftool  -Title="This is the Title" -Author="Happy Man" -Subject="PDF Metadata" foo.pdf -overwrite_original

##### Adjust all EXIF timestamps in .mov by +1 hour

   exiftool  -AllDates+=1 -{Track,Media}{Create,Modify}Date+=1 *.mov

##### For pictures : copy the last hierarchical keyword (tag) in the caption (title, description) if empty.

   exiftool  -overwrite_original -preserve -recurse "-iptc:Caption-Abstract<${XMP:HierarchicalSubject;s/.+\|//g}" -if "not $iptc:Caption-Abstract" DIR
