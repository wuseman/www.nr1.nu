# iconv

##### Outputs files with ascii art in the intended form.

   iconv  -f437 -tutf8 asciiart.nfo

##### Convert encoding of given files from one encoding to another

   iconv  -f utf8 -t utf16 /path/to/file

##### Convert one file from ISO-8859-1 to UTF-8.

   iconv  from-code=ISO-8859-1 to-code=UTF-8 iso.txt > utf.txt

##### clear all non-ascii chars of file.txt

   iconv  -c -f utf-8 -t ascii file.txt

##### remove accented chars

   iconv  -f utf8 -t ascii//TRANSLIT <output-file>

##### Convert any encoding to UTF8

   iconv  -f $(file -bi filename.ext | sed -e 's/.*[ ]charset=//') -t utf8 filename.ext > filename.ext

##### Convert encoding of a file

   iconv  -f utf8 -t utf16 /path/to/file

##### prepare unicode text saved from Microsoft Excel 2003 for unix console

   iconv  -f UTF16LE -t UTF-8 < SOURCE | awk 'BEGIN { RS="\r\n";} { gsub("\n", "\r"); print;}' > TARGET

##### Outputs files with ascii art in the intended form.

   iconv  -f437 -tutf8 asciiart.nfo

##### Convert encoding of given files from one encoding to another

   iconv  -f utf8 -t utf16 /path/to/file

##### Convert one file from ISO-8859-1 to UTF-8.

   iconv  from-code=ISO-8859-1 to-code=UTF-8 iso.txt > utf.txt

##### clear all non-ascii chars of file.txt

   iconv  -c -f utf-8 -t ascii file.txt

##### remove accented chars

   iconv  -f utf8 -t ascii//TRANSLIT <output-file>

##### Convert any encoding to UTF8

   iconv  -f $(file -bi filename.ext | sed -e 's/.*[ ]charset=//') -t utf8 filename.ext > filename.ext

##### Convert encoding of a file

   iconv  -f utf8 -t utf16 /path/to/file

##### prepare unicode text saved from Microsoft Excel 2003 for unix console

   iconv  -f UTF16LE -t UTF-8 < SOURCE | awk 'BEGIN { RS="\r\n";} { gsub("\n", "\r"); print;}' > TARGET
