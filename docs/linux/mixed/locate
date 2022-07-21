# locate

##### do a full file listing of every file found with locate

   locate  -i yourfilename | sed 's/ /\\ /g' | xargs ls -lah | less

##### Find 'foo' in located files

   locate  searchstring | xargs grep foo

##### Delete all files from a locate output

   locate  munin | xargs rm -r

##### Get a brief overview of how many files and directories are installed

   locate  -S

##### do a full file listing of every file found with locate

   locate  searchstring | xargs ls -l

##### locate a filename, make sure it exists and display it with full details

   locate  -e somefile | xargs ls -l

##### Move all located items to folder

   locate  -0 -i *barthes* | xargs -0 mv -t ~/'Library/Books/Barthes, Roland'

##### Find where a kind of file is stored

   locate  *.desktop

##### show a sorted list of directory whose name matches the pattern

   locate  -i /pattern/ | xargs -n1 dirname | sort -u

##### look some php code by some keywords

   locate  *\\.php|xargs grep color=always -i -5  "namespace\s.*\W"|less

##### Get a brief overview of how many files and directories are installed

   locate  -S

##### do a full file listing of every file found with locate

   locate  searchstring | xargs ls -l

##### locate a filename, make sure it exists and display it with full details

   locate  -e somefile | xargs ls -l

##### Move all located items to folder

   locate  -0 -i *barthes* | xargs -0 mv -t ~/'Library/Books/Barthes, Roland'

##### Find where a kind of file is stored

   locate  *.desktop

##### show a sorted list of directory whose name matches the pattern

   locate  -i /pattern/ | xargs -n1 dirname | sort -u

##### look some php code by some keywords

   locate  *\\.php|xargs grep color=always -i -5  "namespace\s.*\W"|less
