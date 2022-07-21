# rename

##### Remove .sh file extension for files in current directory

   rename  's/\.sh//' ./*

##### remove all spaces from all files in current folder

   rename  's/ //g' *

##### renamed multiple file from .php to .html

   rename  s/ .php/ .html/ *.html

##### Replace spaces in filenames with underscores

   rename  's/ /_/g' *

##### Batch rename extension of all files in a folder, in the example from .txt to .md

   rename  *.JPG *.jpg

##### Renames all files in the current directory such that the new file contains no space characters.

   rename  's/ /_/g' *

##### Batch file suffix renaming

   rename  -n "s/-.*//" *

##### Rename all files which contain the sub-string 'foo', replacing it with 'bar'

   rename  foo bar directory/filename

##### Rename all files which contain the sub-string 'foo', replacing it with 'bar'

   rename  foo bar filename

##### Batch rename extension of all files in a folder, in the example from .txt to .md

   rename  .txt .md *.txt

##### Rename all files which contain the sub-string 'foo', replacing it with 'bar'

   rename  's/foo/bar/g' ./*

##### Batch rename extension of all files in a folder, in the example from .txt to .md

   rename  's/.txt/.md/i' *

##### convert single digit to double digits

   rename  's/\d+/sprintf("%02d",$&)/e'  $@

##### Replace space in filename

   rename  "s/ *//g" *.jpg

##### Command to rename multiple file in one go

   rename  's/.xls/.ods/g' *.xls

##### convert filenames in current directory to lowercase

   rename  'y/A-Z/a-z/' *

##### Title Case Files

   rename  's/\b((?!(a|of|that|to)\b)[a-z]+)/\u$1/g' *

##### convert uppercase files to lowercase files

   rename  'y/A-Z/a-z/' *

##### Change the extension of a filename by using rename to convert

   rename  .JPG .jpg *.JPG

##### replace strings in file names

   rename  's/foo/bar/g' foobar

##### Clean up poorly named TV shows.

   rename  -v 's/.*[s,S](\d{2}).*[e,E](\d{2}).*\.avi/SHOWNAME\ S$1E$2.avi/' poorly.named.file.s01e01.avi

##### Yet Another Rename (bash function)

   rename (){ txtToReplace=${1} ; replacementTxt=${2} ; shift 2 ; files=${@} ; for file in $files ; do mv ${file} ${file/${txtToReplace}/${replacementTxt}} ; done ; }

##### Convert spaces in file names to underscores

   rename  'y/ /_/' *

##### Rename all .jpeg and .JPG files to have .jpg extension

   rename  's/\.jpe?g$/.jpg/i' *

##### Replace spaces in a filename with hyphens

   rename  's/ /-/g' *

##### replace spaces in filenames with underscores

   rename  'y/ /_/' *

##### replace spaces in filenames with underscores

   rename  'y/ /_/' *

##### Copy/move a bunch of files to dot files and back

   rename  s/^/./ *

##### Replace spaces in filenames with underscores

   rename  -v 's/ /_/g' *

##### Rename all .jpeg and .JPG files to .jpg

   rename  's/\.jpeg/\.jpg/' *.jpeg; rename 's/\.JPG/\.jpg/' *.JPG

##### Rename files in batch

   rename  's/^hospital\.php\?loc=(\d{4})$/hospital_$1/' hospital.php*

##### Batch rename extension of all files in a folder, in the example from .txt to .md

   rename  's/\.txt$/\.md$/i' *

##### Title Case Files

   rename  's/(^|[\s\(\)\[\]_-])([a-z])/$1\u$2/g' *

##### Title Case Files

   rename  's/\b([a-z])/\u$1/g' *

##### Add prefix onto filenames

   rename  's/^/prefix/' *

##### Tracklist reaplace backspace to '-'

   rename  's/ /-/g' *.mp3

##### Files extension change

   rename  .oldextension .newextension *.oldextension

##### Numeric zero padding file rename

   rename  's/\d+/sprintf("%04d",$&)/e' *.jpg

##### Adding Prefix to File name

   rename  's/^/PREFIX/g' *

##### Adding Prefix to File name

   rename  's/^/CS749__/' *.pdf

##### renames multiple files that match the pattern

   rename  's/foo/bar/g' *

##### space to underscore across single directory

   rename  ' ' '_' *

##### Replace all the spaces in all the filenames of the current directory and including directories with underscores.

   rename  "s/ /_/g" * .*

##### Adding leading zeros to a filename (1.jpg -> 001.jpg)

   rename .ul "" 00 ?.jpg; rename "" 0 ??.jpg;

##### Replace Space In Filenames With Underscore

   rename  's/ /_/g' *

##### Rename with regular expression and leading zeros

   rename  's/result_([0-9]+)_([0-9]+)_([0-9]+)\.json\.txt/sprintf("%d%02d%02d.txt",$3,$2,$1)/ge' result_*.txt

##### Rename with regular expression and leading zeros

   rename  's/result_([0-9]+)_([0-9]+)_([0-9]+)\.json\.txt/sprintf("%d%02d%02d.txt",$3,$2,$1)/ge' result_*.txt

##### convert uppercase files to lowercase files

   rename  -fc *

##### Adds characters at the beginning of the name of a file

   rename  's/.*/[it]$&/' *.pdf

##### remove all spaces from all files in current folder

   rename  's/ //g' *

##### Replace spaces in filenames with underscores

   rename  's/ /_/g' *

##### Rename all files which contain the sub-string 'foo', replacing it with 'bar'

   rename  's/foo/bar/g' ./*

##### Batch rename extension of all files in a folder, in the example from .txt to .md

   rename  's/.txt/.md/i' *

##### convert single digit to double digits

   rename  's/\d+/sprintf("%02d",$&)/e'  $@

##### Replace space in filename

   rename  "s/ *//g" *.jpg

##### Command to rename multiple file in one go

   rename  's/.xls/.ods/g' *.xls

##### convert filenames in current directory to lowercase

   rename  'y/A-Z/a-z/' *

##### Title Case Files

   rename  's/\b((?!(a|of|that|to)\b)[a-z]+)/\u$1/g' *

##### convert uppercase files to lowercase files

   rename  'y/A-Z/a-z/' *

##### Change the extension of a filename by using rename to convert

   rename  .JPG .jpg *.JPG

##### replace strings in file names

   rename  's/foo/bar/g' foobar

##### Clean up poorly named TV shows.

   rename  -v 's/.*[s,S](\d{2}).*[e,E](\d{2}).*\.avi/SHOWNAME\ S$1E$2.avi/' poorly.named.file.s01e01.avi

##### Yet Another Rename (bash function)

   rename (){ txtToReplace=${1} ; replacementTxt=${2} ; shift 2 ; files=${@} ; for file in $files ; do mv ${file} ${file/${txtToReplace}/${replacementTxt}} ; done ; }

##### Convert spaces in file names to underscores

   rename  'y/ /_/' *

##### Rename all .jpeg and .JPG files to have .jpg extension

   rename  's/\.jpe?g$/.jpg/i' *

##### Replace spaces in a filename with hyphens

   rename  's/ /-/g' *

##### replace spaces in filenames with underscores

   rename  'y/ /_/' *

##### Copy/move a bunch of files to dot files and back

   rename  s/^/./ *

##### Replace spaces in filenames with underscores

   rename  -v 's/ /_/g' *

##### Rename all .jpeg and .JPG files to .jpg

   rename  's/\.jpeg/\.jpg/' *.jpeg; rename 's/\.JPG/\.jpg/' *.JPG

##### Rename files in batch

   rename  's/^hospital\.php\?loc=(\d{4})$/hospital_$1/' hospital.php*

##### Batch rename extension of all files in a folder, in the example from .txt to .md

   rename  's/\.txt$/\.md$/i' *

##### Title Case Files

   rename  's/(^|[\s\(\)\[\]_-])([a-z])/$1\u$2/g' *

##### Title Case Files

   rename  's/\b([a-z])/\u$1/g' *

##### Add prefix onto filenames

   rename  's/^/prefix/' *

##### Tracklist reaplace backspace to '-'

   rename  's/ /-/g' *.mp3

##### Files extension change

   rename  .oldextension .newextension *.oldextension

##### Numeric zero padding file rename

   rename  's/\d+/sprintf("%04d",$&)/e' *.jpg

##### Adding Prefix to File name

   rename  's/^/PREFIX/g' *

##### Adding Prefix to File name

   rename  's/^/CS749__/' *.pdf

##### renames multiple files that match the pattern

   rename  's/foo/bar/g' *

##### space to underscore across single directory

   rename  ' ' '_' *

##### Replace all the spaces in all the filenames of the current directory and including directories with underscores.

   rename  "s/ /_/g" * .*

##### Adding leading zeros to a filename (1.jpg -> 001.jpg)

   rename .ul "" 00 ?.jpg; rename "" 0 ??.jpg;

##### Replace Space In Filenames With Underscore

   rename  's/ /_/g' *

##### Rename with regular expression and leading zeros

   rename  's/result_([0-9]+)_([0-9]+)_([0-9]+)\.json\.txt/sprintf("%d%02d%02d.txt",$3,$2,$1)/ge' result_*.txt
