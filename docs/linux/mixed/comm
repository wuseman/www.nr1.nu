# comm

##### A child process which survives the parent's death (Zsh version)

   comm and &!

##### View Processeses like a fu, fu

   comm and ps -Hacl -F S -A f

##### redirect STDOUT and STDERR to STDOUT and also to a file

   comm and_line 2>&1 | tee -a output_file

##### Friendly command-not-found message.

   comm and_not_found_handle() { echo 6661696c626f61742e2e2e0a | xxd -p -r; }

##### Describe differences between files

   comm  nocheck-order -31

##### Append output to the beginning of a file.

   comm and > tmp && cat logfile.txt >> tmp && tmp > logfile.txt && rm tmp

##### Echo PID of the current running command

   comm and & echo $!

##### Save lines unique to file2

   comm  -13 <(sort file1) <(sort file2) > file-new

##### Fast, built-in pipe-based data sink

   comm and >&-

##### Display the output of a command from the first line until the first instance of a regular expression.

   comm and | sed -n '1,/regex/p'

##### Save a file you edited in vim without the needed permissions

   comm and W :execute ':silent w !sudo tee % > /dev/null' | :edit!

##### show lines that appear in both file1 and file2

   comm  -1 -2 <(sort file1) <(sort file2)

##### New command with the last argument of the previous command.

   comm and !$

##### Make anything more awesome

   comm and | figlet

##### Determine if a command is in your $PATH using POSIX

   comm and -v bash

##### Mac OS-X-> copy and paste things to and from the clipboard from the shell

   comm and | pbcopy && pbpaste

##### Viewing Top Processes according to cpu, mem, swap size, etc.

   comm and ps wwo pid,user,group,vsize:8,size:8,sz:6,rss:6,pmem:7,pcpu:7,time:7,wchan,sched=,stat,flags,comm,args k -vsz -A|sed -u '/^ *PID/d;10q'

##### Find common lines between two files

   comm  -12 FILE1.sorted FILE2.sorted > common

##### Write comments to your history.

   comm ent() { echo "" > /dev/null; }

##### Display the output of a command from the first line until the first instance of a regular expression.

   comm and | sed '/regex/q'

##### Use a var with more text only if it exists

   comm and ${MYVAR:+someoption=$MYVAR}

##### save stderr only to a file

   comm and 3>&1 1>&2 2>&3 | tee file

##### colorize comm output

   comm  file1 file2 | sed -e 's/^[^\t].*/\x1b[33m&\x1b[0m/' -e  's/^\t[^\t].*/\x1b[36m&\x1b[0m/' -e 's/^\t\t[^\t].*/\x1b[32m&\x1b[0m/'

##### This is how you should push a string in a command's stdin.

   comm and <<< word

##### Send remote command output to your local clipboard

   comm and | ssh myHost xsel -i display :0

##### Delimiter Hunting

   comm  -13 <(od -vw1 -tu1 dummy.txt|cut -c9-|sort -u) <(seq 0 127|sort)|perl -pe '$_=chr($_)'|od -c

##### Compare two files and output similarities to a new file

   comm  -1 -2 <(sort file1) <(sort file2) |& tee outputfile

##### Open your application to a specific size and location

   comm and -geometry 120x30+1280+0

##### Check to see if a command exists

   comm and -v <command>

##### Show running services (using systemctl)

   comm and systemctl no-page no-legend plain -t service state=running

##### Show running services (using systemctl)

   comm and systemctl no-page no-legend plain -t service state=running

##### log a command to console and to 2 files separately stdout and stderr

   comm and > >(tee stdout.log) 2> >(tee stderr.log >&2)

##### save stderr only to a file

   comm and 3>&1 1>&2 2>&3 | tee -a file

##### Redirect output to a write-protected file with sudo but without sh -c, using tee.

   comm and foo bar | sudo tee /etc/write-protected > /dev/null

##### View Processeses like a fu, fu

   comm and ps -Hacl -F S -A f

##### Display the output of a command from the first line until the first instance of a regular expression.

   comm and | sed -n '1,/regex/p'

##### Save a file you edited in vim without the needed permissions

   comm and W :execute ':silent w !sudo tee % > /dev/null' | :edit!

##### show lines that appear in both file1 and file2

   comm  -1 -2 <(sort file1) <(sort file2)

##### New command with the last argument of the previous command.

   comm and !$

##### Make anything more awesome

   comm and | figlet

##### Determine if a command is in your $PATH using POSIX

   comm and -v bash

##### Mac OS-X-> copy and paste things to and from the clipboard from the shell

   comm and | pbcopy && pbpaste

##### Viewing Top Processes according to cpu, mem, swap size, etc.

   comm and ps wwo pid,user,group,vsize:8,size:8,sz:6,rss:6,pmem:7,pcpu:7,time:7,wchan,sched=,stat,flags,comm,args k -vsz -A|sed -u '/^ *PID/d;10q'

##### Find common lines between two files

   comm  -12 FILE1.sorted FILE2.sorted > common

##### Write comments to your history.

   comm ent() { echo "" > /dev/null; }

##### Display the output of a command from the first line until the first instance of a regular expression.

   comm and | sed '/regex/q'

##### Use a var with more text only if it exists

   comm and ${MYVAR:+someoption=$MYVAR}

##### save stderr only to a file

   comm and 3>&1 1>&2 2>&3 | tee file

##### colorize comm output

   comm  file1 file2 | sed -e 's/^[^\t].*/\x1b[33m&\x1b[0m/' -e  's/^\t[^\t].*/\x1b[36m&\x1b[0m/' -e 's/^\t\t[^\t].*/\x1b[32m&\x1b[0m/'

##### This is how you should push a string in a command's stdin.

   comm and <<< word

##### Send remote command output to your local clipboard

   comm and | ssh myHost xsel -i display :0

##### Delimiter Hunting

   comm  -13 <(od -vw1 -tu1 dummy.txt|cut -c9-|sort -u) <(seq 0 127|sort)|perl -pe '$_=chr($_)'|od -c

##### Compare two files and output similarities to a new file

   comm  -1 -2 <(sort file1) <(sort file2) |& tee outputfile

##### Open your application to a specific size and location

   comm and -geometry 120x30+1280+0

##### Check to see if a command exists

   comm and -v <command>

##### Show running services (using systemctl)

   comm and systemctl no-page no-legend plain -t service state=running

##### Show running services (using systemctl)

   comm and systemctl no-page no-legend plain -t service state=running

##### log a command to console and to 2 files separately stdout and stderr

   comm and > >(tee stdout.log) 2> >(tee stderr.log >&2)
