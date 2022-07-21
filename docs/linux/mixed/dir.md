# dir

##### Take current directory name and rename files that exist in the folder to the same

   dir =${PWD##*/}; rename "s/`ls -b1 | head -n1 | sed 's/.\{4\}$//'`/$dir/" -v *

##### Get full directory path of a script regardless of where it is run from

   dir name $(readlink -f ${BASH_SOURCE[0]})

##### transfer files locally to be sure that file permissions are kept correctly showing progress

   dir ='path to file'; tar cpf - "$dir" | pv -s $(du -sb "$dir" | awk '{print $1}') | tar xpf - -C /other/path

##### count directory space usage in current directory with sort for microsoft windows

   dir use /,/M/* .|sort

##### Display a random man page

   dir ="/bin"; man $(ls $dir |sed -n "$(echo $(( $RANDOM % $(ls $dir |wc -l | awk "{ print $1; }" ) + 1 )) )p")

##### Make a list of files, folders and subfolders from windows command prompt

   dir  /ad /s /b

##### Show permissions of current directory and all directories upwards to /

   dir =$(pwd); while [ ! -z "$dir" ]; do ls -ld "$dir"; dir=${dir%/*}; done; ls -ld /

##### Get parent directory path

   dir name `pwd`

##### Calculate comment density of shell scripts in a directory

   dir =/rom; a=$(find $dir -name \*.sh -exec cat '{}' \; | egrep -cv '^[[:space:]]*#'); b=$(find $dir -name \*.sh -exec cat '{}' \; | egrep -c '^[[:space:]]*#'); echo $((a+b)) lines = ${a} sloc [$((a*100/(a+b)))%] + ${b} comments [$((b*100/(a+b)))%]

##### Print file list to CSV

   dir  -C -1 -N -RNCCI /dir/ > file.csv

##### Show permissions of current directory and all directories upwards to /

   dir =$(pwd); while [ ! -z "$dir" ]; do ls -ld "$dir"; dir=${dir%/*}; done; ls -ld /

##### Get parent directory path

   dir name `pwd`

##### Calculate comment density of shell scripts in a directory

   dir =/rom; a=$(find $dir -name \*.sh -exec cat '{}' \; | egrep -cv '^[[:space:]]*#'); b=$(find $dir -name \*.sh -exec cat '{}' \; | egrep -c '^[[:space:]]*#'); echo $((a+b)) lines = ${a} sloc [$((a*100/(a+b)))%] + ${b} comments [$((b*100/(a+b)))%]

##### Print file list to CSV

   dir  -C -1 -N -RNCCI /dir/ > file.csv
