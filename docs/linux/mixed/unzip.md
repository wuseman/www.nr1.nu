# unzip

##### unzip to specific directory

   unzip  /surce/file.zip -d /dest/

##### View files in ZIP archive

   unzip  -l files.zip

##### Unzip all files with ".zip" extension.

   unzip  \*.zip

##### List files contained within a zip archive

   unzip  -l <filename>

##### extract plain text from MS Word docx files

   unzip  -p some.docx word/document.xml | sed -e 's/<[^>]\{1,\}>//g; s/[^[:print:]]\{1,\}//g'

##### Unzip multiple files with one command

   unzip  '*.zip'

##### Remove annoying files from recently extracted zip archive

   unzip  -lt foo.zip  | grep testing | awk '{print $2}' | xargs rm -r

##### Count the words in any OpenOffice document (including Impress presentations)

   unzip  -p doc.odt content.xml | sed 's|<[^>]*>| |g' | wc -l

##### Extract only a specific file from a zipped archive to a given directory

   unzip  -j "myarchive.zip" "in/archive/file.txt" -d "/path/to/unzip/to"

##### un-unzip a file

   unzip  -l filename.zip |awk '{ if($4 != "Name" && $4 != "") print $4}'|xargs -t rm -rf {}

##### Open/modify .odt in nano with indentation

   unzip  document.odt content.xml && xmlindent -w content.xml && nano content.xml

##### List contents of jar

   unzip  -l file.jar

##### extract plain text from MS Word docx files

   unzip  -p some.docx word/document.xml | sed -e 's/<[^>]\{1,\}>//g; s/[^[:print:]]\{1,\}//g'

##### Unzip multiple files with one command

   unzip  '*.zip'

##### Remove annoying files from recently extracted zip archive

   unzip  -lt foo.zip  | grep testing | awk '{print $2}' | xargs rm -r

##### Count the words in any OpenOffice document (including Impress presentations)

   unzip  -p doc.odt content.xml | sed 's|<[^>]*>| |g' | wc -l

##### Extract only a specific file from a zipped archive to a given directory

   unzip  -j "myarchive.zip" "in/archive/file.txt" -d "/path/to/unzip/to"

##### un-unzip a file

   unzip  -l filename.zip |awk '{ if($4 != "Name" && $4 != "") print $4}'|xargs -t rm -rf {}

##### Open/modify .odt in nano with indentation

   unzip  document.odt content.xml && xmlindent -w content.xml && nano content.xml
