# strace

##### See why a program can't seem to access a file

   strace  php tias.php -e open,access 2>&1 | grep foo.txt

##### trace the system calls made by a process (and its children)

   strace  -f -s 512 -v ls -l

##### intercept stdout/stderr of another process or disowned process

   strace  -e write=1,2 -p $PID 2>&1 | sed -un "/^ |/p" | sed -ue "s/^.\{9\}\(.\{50\}\).\+/\1/g" -e 's/ //g' | xxd -r -p

##### Strace all signals processes based on a name ( The processes already started... ) with bash built-in

   strace processname(){ x=( $(pgrep "$@") ); [[ ${x[@]} ]] || return 1; strace -vf ${x[@]/#/-p }; }

##### Find files that were modified by a given command

   strace  <name of the program>

##### List files accessed by a command

   strace  -ff -e trace=file my_command 2>&1 | perl -ne 's/^[^"]+"(([^\\"]|\\[\\"nt])*)".*/$1/ && print'

##### intercept stdout/stderr of another process

   strace  -ff -e trace=write -e write=1,2 -p SOME_PID

##### intercept stdout/stderr of another process

   strace  -ff -e trace=write -e write=1,2 -p SOME_PID

##### Locate config files of the program

   strace  -e open zim 2>&1 1>/dev/null | fgrep ~ | fgrep -v "= -1" | cut -d'"' -f2

##### strace to find out what files a process executes

   strace  -f -e trace=process [command]

##### intercept stdout/stderr of another process

   strace  -ff -e write=1,2 -s 1024 -p PID  2>&1 | grep "^ |" | cut -c11-60 | sed -e 's/ //g' | xxd -r -p

##### Advanced python tracing

   strace  python -m trace trace myprog.py | grep -v 'write(1,'

##### strace a program

   strace  -ttvfo /tmp/logfile -s 1024 program

##### easily strace all your apache processes

   strace  -p "`pidof httpd`"

##### See why a program can't seem to access a file

   strace  php tias.php -e open,access 2>&1 | grep foo.txt

##### trace the system calls made by a process (and its children)

   strace  -f -s 512 -v ls -l

##### intercept stdout/stderr of another process or disowned process

   strace  -e write=1,2 -p $PID 2>&1 | sed -un "/^ |/p" | sed -ue "s/^.\{9\}\(.\{50\}\).\+/\1/g" -e 's/ //g' | xxd -r -p

##### Strace all signals processes based on a name ( The processes already started... ) with bash built-in

   strace processname(){ x=( $(pgrep "$@") ); [[ ${x[@]} ]] || return 1; strace -vf ${x[@]/#/-p }; }

##### Find files that were modified by a given command

   strace  <name of the program>

##### List files accessed by a command

   strace  -ff -e trace=file my_command 2>&1 | perl -ne 's/^[^"]+"(([^\\"]|\\[\\"nt])*)".*/$1/ && print'

##### intercept stdout/stderr of another process

   strace  -ff -e trace=write -e write=1,2 -p SOME_PID

##### Locate config files of the program

   strace  -e open zim 2>&1 1>/dev/null | fgrep ~ | fgrep -v "= -1" | cut -d'"' -f2

##### strace to find out what files a process executes

   strace  -f -e trace=process [command]

##### intercept stdout/stderr of another process

   strace  -ff -e write=1,2 -s 1024 -p PID  2>&1 | grep "^ |" | cut -c11-60 | sed -e 's/ //g' | xxd -r -p

##### Advanced python tracing

   strace  python -m trace trace myprog.py | grep -v 'write(1,'
