# fold

##### Reorder file with max 100 file per folder

   fold er=0;mkdir $folder; while find -maxdepth 1 -type f -exec mv "{}" $folder \; -quit ; do if [ $( ls $folder | wc -l ) -ge 100 ]; then folder=$(( $folder + 1 )); mkdir $folder; fi ; done

##### counting a particular character in a file

   fold  -w 1 <file> | grep -c <character>

##### Break lines after, for example 78 characters, but don't break within a word/string

   fold  -w 78 -s file-to-wrap

##### Wordwrap long text string using "\n"

   fold  -sw 20 <(echo "Long Text to be wrapped with \"\n\"") |sed ':a;N;$!ba;s/ *\n/\\n/g'

##### wrap long lines of a text

   fold  -s -w 90 file.txt

##### Wrap text files on the command-line for easy reading

   fold  -s <filename>

##### Break lines after, for example 78 characters, but don't break within a word/string

   fold  -w 78 -s file-to-wrap

##### Wordwrap long text string using "\n"

   fold  -sw 20 <(echo "Long Text to be wrapped with \"\n\"") |sed ':a;N;$!ba;s/ *\n/\\n/g'

##### wrap long lines of a text

   fold  -s -w 90 file.txt

##### Wrap text files on the command-line for easy reading

   fold  -s <filename>
