### A child process which survives the parent's death (Zsh version)
```sh
command &!
```

### View Processeses like a fu, fu
```sh
command ps -Hacl -F S -A f
```

### redirect STDOUT and STDERR to STDOUT and also to a file
```sh
command_line 2>&1 | tee -a output_file
```

### Friendly command-not-found message.
```sh
command_not_found_handle() { echo 6661696c626f61742e2e2e0a | xxd -p -r; }
```

### Describe differences between files
```sh
comm nocheck-order -31
```

### Append output to the beginning of a file.
```sh
command > tmp && cat logfile.txt >> tmp && tmp > logfile.txt && rm tmp
```

### Echo PID of the current running command
```sh
command & echo $!
```

### Save lines unique to file2
```sh
comm -13 <(sort file1) <(sort file2) > file-new
```

### Fast, built-in pipe-based data sink
```sh
command >&-
```

### Display the output of a command from the first line until the first instance of a regular expression.
```sh
command | sed -n '1,/regex/p'
```

### Save a file you edited in vim without the needed permissions
```sh
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
```

### show lines that appear in both file1 and file2
```sh
comm -1 -2 <(sort file1) <(sort file2)
```

### New command with the last argument of the previous command.
```sh
command !$
```

### Make anything more awesome
```sh
command | figlet
```

### Determine if a command is in your $PATH using POSIX
```sh
command -v bash
```

### Mac OS-X-> copy and paste things to and from the clipboard from the shell
```sh
command | pbcopy && pbpaste
```

### Viewing Top Processes according to cpu, mem, swap size, etc.
```sh
command ps wwo pid,user,group,vsize:8,size:8,sz:6,rss:6,pmem:7,pcpu:7,time:7,wchan,sched=,stat,flags,comm,args k -vsz -A|sed -u '/^ *PID/d;10q'
```

### Find common lines between two files
```sh
comm -12 FILE1.sorted FILE2.sorted > common
```

### Write comments to your history.
```sh
comment() { echo "" > /dev/null; }
```

### Display the output of a command from the first line until the first instance of a regular expression.
```sh
command | sed '/regex/q'
```

### Use a var with more text only if it exists
```sh
command ${MYVAR:+someoption=$MYVAR}
```

### save stderr only to a file
```sh
command 3>&1 1>&2 2>&3 | tee file
```

### colorize comm output
```sh
comm file1 file2 | sed -e 's/^[^\t].*/\x1b[33m&\x1b[0m/' -e  's/^\t[^\t].*/\x1b[36m&\x1b[0m/' -e 's/^\t\t[^\t].*/\x1b[32m&\x1b[0m/'
```

### This is how you should push a string in a command's stdin.
```sh
command <<< word
```

### Send remote command output to your local clipboard
```sh
command | ssh myHost xsel -i display :0
```

### Delimiter Hunting
```sh
comm -13 <(od -vw1 -tu1 dummy.txt|cut -c9-|sort -u) <(seq 0 127|sort)|perl -pe '$_=chr($_)'|od -c
```

### Compare two files and output similarities to a new file
```sh
comm -1 -2 <(sort file1) <(sort file2) |& tee outputfile
```

### Open your application to a specific size and location
```sh
command -geometry 120x30+1280+0
```

### Check to see if a command exists
```sh
command -v <command>
```

### Show running services (using systemctl)
```sh
command systemctl no-page no-legend plain -t service state=running
```

### Show running services (using systemctl)
```sh
command systemctl no-page no-legend plain -t service state=running
```

### log a command to console and to 2 files separately stdout and stderr
```sh
command > >(tee stdout.log) 2> >(tee stderr.log >&2)
```

### save stderr only to a file
```sh
command 3>&1 1>&2 2>&3 | tee -a file
```

### Redirect output to a write-protected file with sudo but without sh -c, using tee.
```sh
command foo bar | sudo tee /etc/write-protected > /dev/null
```

### View Processeses like a fu, fu
```sh
command ps -Hacl -F S -A f
```

### Display the output of a command from the first line until the first instance of a regular expression.
```sh
command | sed -n '1,/regex/p'
```

### Save a file you edited in vim without the needed permissions
```sh
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
```

### show lines that appear in both file1 and file2
```sh
comm -1 -2 <(sort file1) <(sort file2)
```

### New command with the last argument of the previous command.
```sh
command !$
```

### Make anything more awesome
```sh
command | figlet
```

### Determine if a command is in your $PATH using POSIX
```sh
command -v bash
```

### Mac OS-X-> copy and paste things to and from the clipboard from the shell
```sh
command | pbcopy && pbpaste
```

### Viewing Top Processes according to cpu, mem, swap size, etc.
```sh
command ps wwo pid,user,group,vsize:8,size:8,sz:6,rss:6,pmem:7,pcpu:7,time:7,wchan,sched=,stat,flags,comm,args k -vsz -A|sed -u '/^ *PID/d;10q'
```

### Find common lines between two files
```sh
comm -12 FILE1.sorted FILE2.sorted > common
```

### Write comments to your history.
```sh
comment() { echo "" > /dev/null; }
```

### Display the output of a command from the first line until the first instance of a regular expression.
```sh
command | sed '/regex/q'
```

### Use a var with more text only if it exists
```sh
command ${MYVAR:+someoption=$MYVAR}
```

### save stderr only to a file
```sh
command 3>&1 1>&2 2>&3 | tee file
```

### colorize comm output
```sh
comm file1 file2 | sed -e 's/^[^\t].*/\x1b[33m&\x1b[0m/' -e  's/^\t[^\t].*/\x1b[36m&\x1b[0m/' -e 's/^\t\t[^\t].*/\x1b[32m&\x1b[0m/'
```

### This is how you should push a string in a command's stdin.
```sh
command <<< word
```

### Send remote command output to your local clipboard
```sh
command | ssh myHost xsel -i display :0
```

### Delimiter Hunting
```sh
comm -13 <(od -vw1 -tu1 dummy.txt|cut -c9-|sort -u) <(seq 0 127|sort)|perl -pe '$_=chr($_)'|od -c
```

### Compare two files and output similarities to a new file
```sh
comm -1 -2 <(sort file1) <(sort file2) |& tee outputfile
```

### Open your application to a specific size and location
```sh
command -geometry 120x30+1280+0
```

### Check to see if a command exists
```sh
command -v <command>
```

### Show running services (using systemctl)
```sh
command systemctl no-page no-legend plain -t service state=running
```

### Show running services (using systemctl)
```sh
command systemctl no-page no-legend plain -t service state=running
```

### log a command to console and to 2 files separately stdout and stderr
```sh
command > >(tee stdout.log) 2> >(tee stderr.log >&2)
```
