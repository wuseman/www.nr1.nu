# command

##### A child process which survives the parent's death (Zsh version)

   command  &!

##### View Processeses like a fu, fu

   command  ps -Hacl -F S -A f

##### redirect STDOUT and STDERR to STDOUT and also to a file

   command _line 2>&1 | tee -a output_file

##### Friendly command-not-found message.

   command _not_found_handle() { echo 6661696c626f61742e2e2e0a | xxd -p -r; }

##### Append output to the beginning of a file.

   command  > tmp && cat logfile.txt >> tmp && tmp > logfile.txt && rm tmp

##### Echo PID of the current running command

   command  & echo $!

##### Fast, built-in pipe-based data sink

   command  >&-

##### Display the output of a command from the first line until the first instance of a regular expression.

   command  | sed -n '1,/regex/p'

##### Save a file you edited in vim without the needed permissions

   command  W :execute ':silent w !sudo tee % > /dev/null' | :edit!

##### New command with the last argument of the previous command.

   command  !$

##### Make anything more awesome

   command  | figlet

##### Determine if a command is in your $PATH using POSIX

   command  -v bash

##### Mac OS-X-> copy and paste things to and from the clipboard from the shell

   command  | pbcopy && pbpaste

##### Viewing Top Processes according to cpu, mem, swap size, etc.

   command  ps wwo pid,user,group,vsize:8,size:8,sz:6,rss:6,pmem:7,pcpu:7,time:7,wchan,sched=,stat,flags,comm,args k -vsz -A|sed -u '/^ *PID/d;10q'

##### Display the output of a command from the first line until the first instance of a regular expression.

   command  | sed '/regex/q'

##### Use a var with more text only if it exists

   command  ${MYVAR:+someoption=$MYVAR}

##### save stderr only to a file

   command  3>&1 1>&2 2>&3 | tee file

##### This is how you should push a string in a command's stdin.

   command  <<< word

##### Send remote command output to your local clipboard

   command  | ssh myHost xsel -i display :0

##### Open your application to a specific size and location

   command  -geometry 120x30+1280+0

##### Check to see if a command exists

   command  -v <command>

##### Show running services (using systemctl)

   command  systemctl no-page no-legend plain -t service state=running

##### Show running services (using systemctl)

   command  systemctl no-page no-legend plain -t service state=running

##### log a command to console and to 2 files separately stdout and stderr

   command  > >(tee stdout.log) 2> >(tee stderr.log >&2)

##### save stderr only to a file

   command  3>&1 1>&2 2>&3 | tee -a file

##### Redirect output to a write-protected file with sudo but without sh -c, using tee.

   command  foo bar | sudo tee /etc/write-protected > /dev/null

##### View Processeses like a fu, fu

   command  ps -Hacl -F S -A f

##### Display the output of a command from the first line until the first instance of a regular expression.

   command  | sed -n '1,/regex/p'

##### Save a file you edited in vim without the needed permissions

   command  W :execute ':silent w !sudo tee % > /dev/null' | :edit!

##### New command with the last argument of the previous command.

   command  !$

##### Make anything more awesome

   command  | figlet

##### Determine if a command is in your $PATH using POSIX

   command  -v bash

##### Mac OS-X-> copy and paste things to and from the clipboard from the shell

   command  | pbcopy && pbpaste

##### Viewing Top Processes according to cpu, mem, swap size, etc.

   command  ps wwo pid,user,group,vsize:8,size:8,sz:6,rss:6,pmem:7,pcpu:7,time:7,wchan,sched=,stat,flags,comm,args k -vsz -A|sed -u '/^ *PID/d;10q'

##### Display the output of a command from the first line until the first instance of a regular expression.

   command  | sed '/regex/q'

##### Use a var with more text only if it exists

   command  ${MYVAR:+someoption=$MYVAR}

##### save stderr only to a file

   command  3>&1 1>&2 2>&3 | tee file

##### This is how you should push a string in a command's stdin.

   command  <<< word

##### Send remote command output to your local clipboard

   command  | ssh myHost xsel -i display :0

##### Open your application to a specific size and location

   command  -geometry 120x30+1280+0

##### Check to see if a command exists

   command  -v <command>

##### Show running services (using systemctl)

   command  systemctl no-page no-legend plain -t service state=running

##### Show running services (using systemctl)

   command  systemctl no-page no-legend plain -t service state=running

##### log a command to console and to 2 files separately stdout and stderr

   command  > >(tee stdout.log) 2> >(tee stderr.log >&2)
