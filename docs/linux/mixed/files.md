# files

##### Reorder file with max 100 file per folder

   files  -type f | xargs -n100 | while read l; do mkdir $((++f)); cp $l $f; done

##### Random cow tells your fortune

   files =(/usr/share/cowsay/cows/*);cowsay -f `printf "%s\n" "${files[RANDOM % ${#files}]}"` "`fortune`"

##### find multiple files in directory and perform search and replace on each of them

   files =$(find /dir/file -name *.txt -exec grep -l a {} \;) && perl -p -i -e 's/old/new/g;' $files

##### Random cow tells your fortune

   files =(/usr/share/cowsay/cows/*);cowsay -f `printf "%s\n" "${files[RANDOM % ${#files}]}"` "`fortune`"

##### find multiple files in directory and perform search and replace on each of them

   files =$(find /dir/file -name *.txt -exec grep -l a {} \;) && perl -p -i -e 's/old/new/g;' $files
