# make

##### print all available make targets

   make  print-data-base dry-run | awk -F':' '/^[a-zA-Z0-9][^$#\/\t=]*:([^=]|$)/ {split($1,A,/ /);for(i in A)print A[i]}'

##### Generate a random password 32 characters long :)

   make passwd char=32

##### self-extractable archives

   make self <archive_dir> <file_name> <label>

##### Use all the cores or CPUs when compiling

   make  -j 4

##### Debug your makefile

   make  -d | egrep color -i '(considering|older|newer|remake)'

##### Makefile argument passing

   make  [target] VAR=foobar

##### bash | lolcat -a -s 250

   make  your terminal interactive and fun

##### install an AUR package snapshot in archlinux

   make pkg -sri

##### add time to make output and redirect it to a file

   make  -j 2>&1 | while IFS= read -r line; do echo "$(date +"%d-%m-%Y@%T") $line"; done > make.out

##### Use all the cores or CPUs when compiling

   make  -j 4

##### Debug your makefile

   make  -d | egrep color -i '(considering|older|newer|remake)'

##### Makefile argument passing

   make  [target] VAR=foobar

##### bash | lolcat -a -s 250

   make  your terminal interactive and fun

##### install an AUR package snapshot in archlinux

   make pkg -sri
