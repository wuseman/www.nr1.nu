# ps

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### Show a 4-way scrollable process tree with full details.

   ps  awwfux | less -S

##### Show a 4-way scrollable process tree with full details.

   ps  awwfux | less -S

##### Hide the name of a process listed in the `ps` output

   ps  aux | grep -v name_you_want_to_hide

##### count processes with status

   ps  -eo stat= | sort | uniq -c | sort -n

##### easily strace all your apache processes

   ps  auxw | awk '/(apache|httpd)/{print"strace -F -p " $2}' | sh

##### Threads and processes of a user

   ps  -eLF | grep ^user

##### Show total cumulative memory usage of a process that spawns multiple instances of itself

   ps  -eo pmem,comm | grep chrome | cut -d " " -f 2 | paste -sd+ | bc

##### print a cpu of a process

   ps  -eo args,%cpu | grep -m1 PROCESS | tr 'a-z-' ' ' | awk '{print $1}'

##### Sort all processes by the amount of virtual memory they are using

   ps  -e -o pid,vsz,comm= | sort -n -k 2

##### mem leak check

   ps  gv [pid] | head -2

##### ps to show child thread PIDs

   ps  -efL | grep <Process Name>

##### Shortcut to search a process by name

   ps g(){ ps aux | grep -v grep | egrep -e "$1|USER"; }

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### Display CPU usage in percentage

   ps  aux | awk {'sum+=$3;print sum'} | tail -n 1

##### easily strace all your apache processes

   ps  -C apache o pid= | sed 's/^/-p /' | xargs strace

##### kill defunct processes by killing their parents

   ps  afx | grep defunct -B 1 | grep -Eo "[0-9]{3,}" | xargs kill -9

##### get users process list

   ps  -u<user>

##### Find the uid and gid of your apache process

   ps  -o euid,egid ppid `netstat inet inet6 -pln|awk '/:80 / { split($7,tmp, "/"); print tmp[1]; }'`|sort |uniq|grep -v EUID

##### Get to the user for using system.

   ps  awwux|awk '{print $1}'|sort|uniq

##### Get pid of running Apache Tomcat process

   ps  -eo pid,args | grep -v grep |  grep catalina | awk '{print $1}'

##### kill all instances of an annoying or endless, thread-spawning process

   ps  auxwww | grep outofcontrolprocess | awk '{print $2}' | xargs kill -9

##### Search for a running process through grep

   ps  -e | grep SearchStringHere

##### find and kill a pid for APP

   ps  -ef | grep APP | awk '/grep/!{print$2}' | xargs -i kill {}

##### Search for a process by name

   ps g(){ ps aux | grep -E "[${1:0:1}]${1:1}|^USER"; }

##### Killing multiplpe process for one program like apache, wget, postfix etc.

   ps  aux| grep -v grep| grep httpd| awk {'print $2'}| xargs kill -9

##### Killing multiplpe process for one program like apache, wget, postfix etc.

   ps  ax| awk '/[h]ttpd/{print $1}'| xargs kill -9

##### Find the correct PID

   ps s() { ps -eo pid,args | sed '/'"$1"'/!d;/sed/d' ; }

##### count how many cat processes are running

   ps  -a |grep cat |wc -l

##### count how many cat processes are running

   ps  -cx cat

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### Figure out what shell you're running

   ps  ho command $$

##### Shows users and 'virtual users' on your a unix-type system

   ps  -axgu | cut -f1 -d' ' | sort -u

##### Kill process by searching something from 'ps' command

   ps  h -o pid,command | grep 'TEXT' | sed 's/^ \+//' | cut -d ' ' -f 1 | xargs -n 1 kill

##### Kill process by searching something from 'ps' command

   ps  ux|grep <process name>|awk '{print $2}'|xargs -n 1 kill

##### kill all running instances of wine and programs runned by it (exe)

   ps  ax > processes && cat processes | egrep "*.exe |*exe]" | awk '{ print $1 }' > pstokill && kill $(cat pstokill) && rm processes && rm pstokill

##### find all processes named hunger and force kill, minus the grep itself and output to a file called fu.bar

   ps  -auwx|egrep hunger|grep -v grep| awk '{print "kill -9",$1}' > ~/fu.bar

##### psgrep

   ps grep() { if [ ! -z $1 ]; then echo "Grepping for processes matching $1..." ps aux | grep -i $1 | grep -v grep; else echo "!! Need name to grep for"; fi }

##### Kill a process with its name

   ps  -u $USER |grep $1 | awk '{ print $1}'| xargs kill

##### Find the process you are looking for minus the grepped one

   ps  aux | grep process-name | grep -v "grep"

##### Check processes runed not by you

   ps  aux | grep -v `whoami`

##### Kill all Zombie processes one-liner

   ps  -xaw -o state,ppid | grep Z | grep -v PID | awk '{ print $2 }' | xargs kill -9

##### omit grep

   ps  aux | grep [c]ommandname

##### Find the process you are looking for minus the grepped one

   ps g() { ps aux | grep "[${1[1]}]${1[2,-1]}"; }

##### kills all processes for a certain program e.g. httpd

   ps  aux | grep 'httpd ' | awk {'print $2'} | xargs kill -9

##### find a process id by name

   ps  aux | awk '/name/ {print $2}'

##### Kill a bunch of processes with the same name

   ps  ax | grep <processname> | grep -v grep | awk '{print $1}' | sudo xargs kill -9

##### Count the total number of files in each immediate subdirectory

   ps  -ef | grep pmon

##### search for and kill a process in one blow

   ps  aux|grep -i [p]rocessname|awk '{ print $2 }'|xargs kill

##### Kill any process with one command using program name

   ps  -ef | grep [j]boss | awk '{print $2}'|xargs kill -9

##### ps -ef | grep PROCESS | grep -v grep | awk '{system "kill -9" $2}

   ps  -ef | grep PROCESS | grep -v grep | awk '{system "kill -9" $2}

##### cpu and memory usage top 10 under Linux

   ps  -eo user,pcpu,pmem | tail -n +2 | awk '{num[$1]++; cpu[$1] += $2; mem[$1] += $3} END{printf("NPROC\tUSER\tCPU\tMEM\n"); for (user in cpu) printf("%d\t%s\t%.2f\t%.2f\n",num[user], user, cpu[user], mem[user]) }'

##### This is a nice way to kill processes.. the example below is for firefox!!! substitute firefox for whatever the process name is...

   ps  aux | grep -i firefox | grep -v grep | awk '{print $2}' | xargs -t -i kill -9 {}

##### kill all instances of an annoying or endless, thread-spawning process

   ps  auxwww | grep outofcontrolprocess | awk '{print $9}' | xargs kill -9

##### Kill all processes matching a given name

   ps  axww | grep SomeCommand | awk '{ print $1 }' | xargs kill

##### Pretty print output of

   ps  -ef | awk -v OFS="\n" '{ for (i=8;i<=NF;i++) line = (line ? line FS : "") $i; print NR ":", $1, $2, $7, line, ""; line = "" }'

##### List running procceses

   ps  -e

##### Search for a process by name

   ps grep() ... func to long, please look under "description"

##### look what's running

   ps  aux

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### ps -A

   ps  -A

##### easily strace all your apache processes

   ps  auxw | grep sbin/apache | awk '{print"-p " $2}' | xargs strace

##### View and review the system process tree.

   ps tree -Gap | less -r

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### See how many % of your memory firefox is using

   ps  -o %mem= -C firefox-bin | sed -s 's/\..*/%/'

##### Find the process you are looking for minus the grepped one

   ps  -ef | grep c\\ommand

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### Find the process you are looking for minus the grepped one

   ps  -C command

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### total percentage of memory use for all processes with a given name

   ps  -eo pmem,comm | grep java | awk '{sum+=$1} END {print sum " % of RAM"}'

##### Restart command if it dies.

   ps  -C program_name || { program_name & }

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### processes per user counter

   ps  aux |awk '{$1}  {++P[$1]} END {for(a in P) if (a !="USER") print a,P[a]}'

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### Top ten (or whatever) memory utilizing processes (with children aggregate)

   ps  axo rss,comm,pid | awk '{ proc_list[$2]++; proc_list[$2 "," 1] += $1; } END { for (proc in proc_list) { printf("%d\t%s\n", proc_list[proc "," 1],proc); }}' | sort -n | tail -n 10

##### display date of last time a process was started in `date` format

   ps  -o lstart <pid>

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### Display the top ten running processes - sorted by memory usage

   ps  aux sort -rss | head

##### Apache memory usage

   ps  auxf | grep httpd | grep -v grep | grep -v defunct | awk '{sum=sum+$6}; END {print sum/1024}'

##### List processes sorted by CPU usage

   ps  -ef sort=-%cpu

##### How much RAM is Apache using?

   ps  -o rss -C httpd | tail -n +2 | (sed 's/^/x+=/'; echo x) | bc

##### count and number lines of output, useful for counting number of matches

   ps  aux | grep [a]pache2 | nl

##### Tells the shell you are using

   ps  -p $$

##### Who invoked me? / Get parent command

   ps  -o comm= -p $(ps -o ppid= -p $$)

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### ps a process keeping the header info so you know what the columns of numbers mean!

   ps  auxw |egrep "PID|process_to_look_at"

##### List all databases in Postgres and their (byte/human) sizes, ordering by byte size descending

   ps ql -c "SELECT pg_database.datname, pg_database_size(pg_database.datname), pg_size_pretty(pg_database_size(pg_database.datname)) FROM pg_database ORDER BY pg_database_size DESC;" -d <ANYDBNAME>

##### Find the processes that are on the runqueue.  Processes with a status of

   ps  -eo stat,pid,user,command | egrep "^STAT|^D|^R"

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### Format ps command output

   ps  ax -o "%p %U %u %x %c %n"

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### ps with parent/child process tree

   ps  auxf

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### Output Detailed Process Tree for any User

   ps u(){ command ps -Hcl -F S f -u ${1:-$USER}; }

##### Displays process tree of all running processes

   ps tree -Gap

##### Print current running shell, PID

   ps  -p $$

##### Pulls total current memory usage, including SWAP being used, by all active processes.

   ps  aux | awk '{sum+=$6} END {print sum/1024}'

##### Show the 20 most CPU/Memory hungry processes

   ps  aux | sort +2n | tail -20

##### Current running process ordered by %CPU

   ps  -eo pcpu,pid,args | sort -n

##### To find the uptime of each process-id of particular service or process

   ps  -o etime `pidof firefox` |grep -v ELAPSED | sed 's/\s*//g' | sed "s/\(.*\)-\(.*\):\(.*\):\(.*\)/\1d \2h/; s/\(.*\):\(.*\):\(.*\)/\1h \2m/;s/\(.*\):\(.*\)/\1m \2s/"

##### processes per user counter

   ps  hax -o user | sort | uniq -c

##### Pull Total Memory Usage In Virtual Environment

   ps  axo rss,comm | awk '{sum+=$1; print $1/1024, "MB - ", $2} END {print "\nTotal RAM Used: ", sum/1024, "MB\n"}'

##### Find processes utilizing high memory in human readable format

   ps  -eo size,pid,user,command sort -size |awk '{hr[1024**2]="GB";hr[1024]="MB";for (x=1024**3; x>=1024; x/=1024){if ($1>=x){printf ("%-6.2f %s ", $1/x, hr[x]);break}}}{printf ("%-6s %-10s ", $2, $3)}{for (x=4;x<=NF;x++){printf ("%s ",$x)} print ("\n")}'

##### Getting ESP and EIP addresses from running processes

   ps  ax format=pid,eip,esp,user,command

##### Return threads count of a process

   ps  -o thcount -p <process id>

##### Figure out what shell you're running

   ps  -p $$

##### Kill all processes belonging to a user

   ps  -ef | grep $USERNAME | awk {'print $2'} | xargs kill [-9]

##### List all PostgreSQL databases. Useful when doing backups

   ps ql -U postgres -lAt | gawk -F\| '$1 !~ /^template/ && $1 !~ /^postgres/ && NF > 1 {print $1}'

##### Show the command line for a PID with ps

   ps  h -o %a 21679

##### Check ps output to see if file is running, if not start it

   ps  -C thisdaemon || { thisdaemon & }

##### easily strace all your apache *child* processes

   ps  h ppid $(cat /var/run/apache2.pid) | awk '{print"-p " $1}' | xargs sudo strace

##### easily strace all your apache processes

   ps  auxw | grep -E 'sbin/(apache|httpd)' | awk '{print"-p " $2}' | xargs strace -F

##### count how many cat processes are running

   ps  ax | grep -c [c]at

##### Chrome sucks

   ps  -e -m -o user,pid,args,%mem,rss | grep Chrome | perl -ne 'print "$1\n" if / (\d+)$/' | ( x=0;while read line; do (( x += $line )); done; echo $((x/1024)) );

##### Sort output by column

   ps  aux | sort -nk 6

##### lazy SQL QUERYING

   ps ql

##### List PHP-FPM pools by total CPU usage

   ps  axo pcpu,args | awk '/[p]hp.*pool/ { sums[$4] += $1 } END { for (pool in sums) { print sums[pool], pool } }' | sort -rn | column -t

##### Shows users and 'virtual users' on your a unix-type system

   ps  -eo user | sort -u

##### find duplicate processes

   ps  aux | sort key=11 | uniq -c -d skip-fields=10 | sort -nr key=1,1

##### Top ten memory hogs

   ps  -eorss,args | sort -nr | pr -TW$COLUMNS | head

##### "What the hell is running on?!" Easily snoop your system's RAM consumption

   ps  aux | awk '$11!~/\[*\]/ {print $6/1024" Mb > "$11,$12,$13,$14}' | sort -g

##### Top 10 Memory Consuming Processes

   ps  -auxf | sort -nr -k 4 | head -10

##### get some information about the parent process from a given process

   ps  -o ppid= <given pid> | xargs ps -p

##### Chrome sucks

   ps  aux | awk '/chrome/ {s+=$6}END{print s/1024}';

##### Count threads of a jvm process

   ps  uH p <PID_OF_U_PROCESS> | wc -l

##### the executable that started the currently running oracle databases and the ORACLE_HOME relative to each

   ps  -ef |grep oracle |grep pmon |awk '{print $2}' |xargs -I {} ps eww {} |grep pmon |grep -v grep |awk '{print $5 " " $6 " " $0}' |sed 's/\(S*\) \(S*\) .*ORACLE_HOME/\1 \2/g' |cut -f1,2,3 -d" "

##### print a cpu of a process

   ps  -eo %cpu,args | grep -m1 PROCESS | awk '{print $1}'

##### Search for an active process without catching the search-process

   ps  -ef | awk '/process-name/ && !/awk/ {print}'

##### Nicely display mem usage with ps

   ps  -o comm,%mem,args -u www-data

##### See OpenVZ Container id's of top 10 running processes by %cpu

   ps  -e h -o pid sort -pcpu | head -10 | vzpid -

##### Find processes stuck in dreaded "D" state aka IO Wait

   ps  aux | awk '{if ($8 ~ "D") print $0}'

##### List process in unkillable state D (iowait)

   ps  aux | awk '{if ($8 ~ "D") print $0}'

##### cpu and memory usage top 10 under Linux

   ps  -eo user,pcpu,pmem | tail -n +2 | awk '{num[$1]++; cpu[$1] += $2; mem[$1] += $3} END{printf("NPROC\tUSER\tCPU\tMEM\n"); for (user in cpu) printf("%d\t%s\t%.2f%\t%.2f%\n",num[user], user, cpu[user], mem[user]) }'

##### View Processeses like a fu, fu

   ps tree -p

##### kill all running instances of wine and programs runned by it (exe)

   ps  ax | egrep "*.exe|*exe]" | awk '{ print $1 }' | xargs kill

##### Given process ID print its environment variables

   ps  ewwo command PID | tr ' ' '\n' | grep \=

##### 'micro' ps aux (by mem/cpu)

   ps  aux | awk '{print($1" "$3" "$4" "$11);}' | grep -v "0.0"

##### Find the process you are looking for minus the grepped one

   ps  aux | grep [p]rocess-name

##### Find the process you are looking for minus the grepped one

   ps  aux | grep [p]rocess-name

##### Search for a process by name

   ps  -fC PROCESSNAME

##### kill all foo process

   ps  -ef | grep [f]oo | awk '{print $2}' | xargs kill -9

##### Given $PID, print all child processes on stdout

   ps  uw ppid $PID

##### Remove grep itself from ps

   ps  afx|grep [a]pache

##### Display top 5 processes consuming CPU

   ps  -eo pcpu,user,pid,cmd | sort -r | head -5

##### Show CPU usage for EACH cores

   ps  ax -L -o pid,tid,psr,pcpu,args | sort -nr -k4| head -15 | cut -c 1-90

##### grep processes list avoiding the grep itself

   ps  axu | grep [a]pache2

##### Transfer a file to multiple hosts over ssh

   ps cp -h hosts.txt -l username /etc/hosts /tmp/hosts

##### easily strace all your apache processes

   ps  auxw | grep sbin/apache | awk '{print"-p " $2}' | xargs strace -f

##### Top ten (or whatever) memory utilizing processes (with children aggregate) - Can be done without the multi-dimensional array

   ps  axo rss,comm,pid | awk '{ proc_list[$2] += $1; } END { for (proc in proc_list) { printf("%d\t%s\n", proc_list[proc],proc); }}' | sort -n | tail -n 10

##### memory usage

   ps  -e -orss=,args= | sort -b -k1,1n | pr -TW$COLUMNS

##### Sort all running processes by their memory & CPU usage

   ps  aux sort=%mem,%cpu

##### Kill all processes belonging to a user

   ps  -fu $USER | awk {'print $2'} | xargs kill [-9]

##### Discover the process start time

   ps  -eo pid,lstart,cmd

##### List users with running processes

   ps  aux | sed -n '/USER/!s/\([^ ]\) .*/\1/p' | sort -u

##### psgrepp

   ps  aux | grep $(echo $1 | sed "s/^\(.\)/[\1]/g")

##### count how many cat processes are running

   ps  -a | grep -c cat

##### find out zombie process

   ps  aux | awk '{ print $8 " " $2 " " $11}' | grep -w Z

##### ps grep with header

   ps g () { ps auxwww | egrep "$1|PID" | grep -v grep }

##### List Threads by Pid along with Thread Start Time

   ps  -o pid,lwp,lstart pid 797 -L

##### Run a script in parrallel over ssh

   ps sh -h RemoteHosts.txt -P -I < ~/LocalScript.sh

##### Chrome sucks

   ps  -o rss= -C Chrome | (x=0; while read rss; do ((x+=$rss)); done; echo $((x/1024)))

##### Chrome sucks

   ps  -A -o rss,command | grep  [C]hrome | awk '{sum+=$1} END {printf("%sMB\n",sum/1024)}'

##### Find a process by name and automatically kill it

   ps  aux | grep name | grep -v grep | awk '{print $2}' | xargs kill -9

##### Get the name or user running the process of specified PID

   ps  -p pid -o logname |tail -1

##### count and number lines of output, useful for counting number of matches

   ps  aux | grep [h]ttpd | cat -n

##### Show WebSphere AppServer uid|pid|cell|node|jvms

   ps  -ef | grep [j]ava | awk -F ' '  ' { print $1,"    ",$2,"\t",$(NF-2),"\t",$(NF-1),"\t",$NF } '  | sort -k4

##### Display the specified range of process information

   ps  aux | sort -n -k2 | awk '{if ($2 < 300) print($0)}'

##### all users with terminal sessions

   ps  axno user,tty | awk '$1 >= 1000 && $1 < 65530 && $2 != "?"' | sort -u

##### kill all process that belongs to you

   ps  -u $USER -lf | grep -vE "\-bash|sshd|ps|grep|PPID" > .tmpkill; if (( $(cat .tmpkill | wc -l) > 0 )); then echo "# KILL EM ALL"; cat .tmpkill; cat .tmpkill | awk '{print $4}' | xargs kill -9; else echo "# NOTHING TO KILL"; fi; cat .tmpkill; rm .tmpkill;

##### psgrep(command)

   ps grep() { ps aux | tee >(head -1>&2) | grep -v " grep $@" | grep "$@" -i color=auto; }

##### Sum using awk

   ps  -ylC httpd sort:rss | awk '{ SUM += $8 } END { print SUM/1024 }'

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### Get a PostgreSQL servers version

   ps ql -h <SERVER NAME HERE>  -t -c 'SELECT version();' |head -1

##### get process id with program name

   ps  -efa | grep httpd | grep -v grep | awk '{ print $2 }' |xargs

##### Display all zombie process IDs

   ps  axo pid=,stat= | awk '$2~/^Z/ { print $1 }'

##### Get a PostgreSQL servers version

   ps ql -X -A -t -c "SELECT version();"

##### printing with psnup

   ps nup -4 -pa4 -Pa4 file.ps file2.ps

##### Using psnup to get two pages per page

   ps nup -2 file.ps | lpr

##### Kill all Zombie processes one-liner

   ps  axo state,ppid | awk '!/PPID/$1~"Z"{print $2}' | xargs -r kill -9

##### Display the top ten running processes - sorted by memory usage

   ps  -eo size,command sort -size | head

##### total percentage of memory use for all processes with a given name

   ps  -eo pmem,comm | grep chrome | cut -d " " -f 2 | paste -sd+ | bc

##### Grep without having it show its own process in the results

   ps  aux | grep "[s]ome_text"

##### processes per user counter

   ps  hax -o user sort user | uniq -c

##### 'micro' ps aux (by mem/cpu)

   ps  -o user,%cpu,%mem,command

##### Count total processes for specific program and user

   ps  -u user_name_here | grep process_name_here | wc -l

##### Display the top ten running processes sorted by the memory usage:

   ps  aux | awk '{if ($5 != 0 ) print $2,$5,$6,$11}' | sort -k2rn | head -10 | column -t

##### Get the number of open sockets for a process

   ps  aux | grep [process] | awk '{print $2}' | xargs -I % ls /proc/%/fd | wc -l

##### To get the average httpd process size, log into your server and run the following on the command line

   ps  aux | grep 'httpd' | awk '{print $6/1024 " MB";}'

##### If you want to calculate the average on-the-fly

   ps  aux | grep 'httpd' | awk '{print $6/1024;}' | awk '{avg += ($1 - avg) / NR;} END {print avg " MB";}'

##### find the full amount of ram associated with mysql

   ps  aux | grep 'mysql' | awk '{print $6/1024 " MB";}'

##### Find the processes that are on the runqueue.  Processes with a status of

   ps  r -A

##### Total procs, avg size (RSS) and Total mem use

   ps  awwwux | grep httpd | grep -v grep | awk '{mem = $6; tot = $6 + tot; total++} END{printf("Total procs: %d\nAvg Size: %d KB\nTotal Mem Used: %f GB\n", total, mem / total, tot / 1024 / 1024)}'

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### Given $PID, print all child processes on stdout

   ps  axo pid,ppid | awk "{ if ( \$2 == $PID ) { print \$1 }}")

##### Find longest running non-root processes on a machine

   ps  -eo etime,pid,pcpu,ppid,args | sed -e '/\[.\+\]/d' -e '/^[ \t]*[0-9]\{2\}:[0-9]\{2\} /d' | sort -k1r

##### Display the top ten running processes - sorted by memory usage

   ps  axo %mem,pid,euser,cmd | sort -nr | head -n 10

##### Find all processes running under your username.

   ps  -ef | grep $USER

##### list java heap summary

   ps  -ef | grep -oh 'Xmx[0-9]*' | cut -d'x' -f2 | awk '{SUM += $1} END { print SUM}'

##### List user processes with their memory usage and total usage.

   ps  -u marcanuy -o pid,rss,command | awk '{print $0}{sum+=$2} END {print "Total", sum/1024, "MB"}'

##### Figure out what shell you're running

   ps  -o comm= -p $$

##### Kill all processes belonging to a user

   ps  wwwwuax|awk '/command/ { printf("kill -9 %s\n",$2) }'|/bin/sh

##### check memory and CPU consumption of Process on node.

   ps  -eo pcpu,pmem,cmd | grep Service| grep -v grep| sort -k 1 -nr | head -5

##### show top 10 most memory hungry  process with a simple format of (%mem, pid, short command)

   ps  -eo pmem,pid,comm no-headers | sort -k1 -rn | head -10

##### Exclude grep from your grepped output of ps (alias included in description)

   ps  aux | grep [h]ttpd

##### Sum of the total resident memory Stainless.app is using.

   ps  -ec -o command,rss | grep Stainless | awk -F ' ' '{ x = x + $2 } END { print x/(1024) " MB."}'

##### Show concurrent memory usage for individual instances of an application

   ps  -eo pmem,comm | grep application-name

##### Thread count per user

   ps  -u jboss -o nlwp= | awk '{ num_threads += $1 } END { print num_threads }'

##### Kill processes associated with PATTERN

   ps  -fea | grep PATTERN | awk {'print $2'} | xargs kill -9

##### Find processes by current user on a Solaris box

   ps  -u `/usr/xpg4/bin/id -u`

##### Kill a lot of process once a time

   ps  aux | grep <process> | grep -v grep | awk '{print $2}' | xargs -i -t kill -9 {}

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### Get the name or user running the process of specified PID

   ps  aux | grep PID | grep -v 'grep' | awk '{ print $1 }'

##### Grep the process excluding the grep itself.

   ps  -ef | grep [t]clsh

##### the executable that started the currently running oracle databases and the ORACLE_HOME relative to each

   ps  -ef | grep [p]mon | awk '{print $2}' | xargs -I {} ps eww {} | awk '{print $1 " " $5 " " $6 " " $0}' | sed 's/\(S*\) \(S*\) .*ORACLE_HOME/\1 \2/g' | cut -f1,2,3 -d" "

##### Processes by CPU usage

   ps  -e -o pcpu,cpu,nice,state,cputime,args sort pcpu | sed "/^ 0.0 /d"

##### Basic search for Quassel PostgreSQL database

   ps ql -U quassel quassel -c "SELECT message FROM backlog ORDER BY time DESC LIMIT 1000;" | grep my-query

##### Get thread count for process on Solaris

   ps  -L -p <pid> | wc -l

##### Find which process is using a port on Solaris

   ps  -ef | grep user | awk '{print $2}' | while read pid; do echo $pid ; pfiles $pid| grep portnum; done

##### postgresql : drop all tables from a schema

   ps ql -h <pg_host> -p <pg_port> -U <pg_user> <pg_db> -t -c "select 'drop table \"' || tablename || '\" cascade;' from pg_tables where schemaname='public'" | psql -h <pg_host> -p <pg_port> -U <pg_user> <pg_db>

##### postgresql : drop all sequences from the public schema

   ps ql -h <ph_host> -p <pg_port> -U <pg_user> <pg_db> -t -c "select 'drop sequence \"' || relname || '\" cascade;' from pg_class where relkind='S'" | psql -h <ph_host> -p <pg_port> -U <pg_user> <pg_db>

##### Command to kill PID

   ps  auxww | grep application | grep processtobekilled | gawk '{print $2}' | grep -v grep | xargs kill -9

##### cpu process limitation for specific processname like java,kibana

   ps  auxf | grep -v grep | grep -E -i "java|kibana" | awk {'print $2'} | while read pid; do cpulimit -l 25 -b -p $pid > /tmp/cpulimit_$pid ;done

##### Sum of RSS utilization in Linux

   ps  aux | awk '{sum+=$6} END {print sum / 1024}'

##### count processes with status

   ps  axu | awk '{if (NR <=7) print; else if ($8 == "D") {print; count++} } END {print "Total status D: "count}'

##### Total Apache memory

   ps  -C httpd -o rss no-headers | awk '{SUM += $1} END {printf("%.0f\n",SUM/1024)}'

##### all out

   ps  -fu userid | awk '/userid/{print $2}' | xargs kill

##### psg (ps grep) function if you don't have pgrep or don't know how to use it

   ps g()  { if [ -z "$2" ]; then psargs="aux"; greparg="$1"; else psargs="$1"; greparg="$2"; fi; ps $psargs | grep -i "$(echo $greparg | sed -e 's/^\(.\)/[\1]/')\|^$(ps $psargs | head -1)" ; }

##### the executable that started the currently running oracle databases and the ORACLE_HOME relative to each

   ps  -ef |grep oracle |grep pmon |awk '{print $2}' |xargs -I {} ps eww {} |grep pmon |grep -v grep |awk '{print $5 " " $6 " " $0}' |sed 's/\(S*\) \(S*\) .*ORACLE_HOME/\1 \2/g' |cut -f1,2,3 -d" " 2010-03-23 20:36:59 User:

##### Get a PostgreSQL servers version

   ps ql -h <SERVER NAME HERE> -c 'SELECT version();' | grep -v 'version\|-\|row\|^ *$' | sed 's/^\s*//'

##### Look for process by filename in command then kill the process

   ps  ax | grep -i ProcessName| kill -9 `awk '/FileName.Ext/ {print $1}'`

##### ram usage most top 10 process

   ps  aux | awk '{print $2, $4, $11}' | sort -k2rn | head -n 10

##### Create a booklet ps file out of a normal ps (A4 Size)

   ps book file.ps | psnup -2 -l -m0.5cm | pstops '2:0,1U(210mm,297mm)' > file.booklet.ps

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### Show a 4-way scrollable process tree with full details.

   ps  awwfux | less -S

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### cpu and memory usage top 10 under Linux

   ps  -eo user,pcpu,pmem | tail -n +2 | awk '{num[$1]++; cpu[$1] += $2; mem[$1] += $3} END{printf("NPROC\tUSER\tCPU\tMEM\n"); for (user in cpu) printf("%d\t%s\t%.2f\t%.2f\n",num[user], user, cpu[user], mem[user]) }'

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### easily strace all your apache processes

   ps  auxw | grep sbin/apache | awk '{print"-p " $2}' | xargs strace

##### View and review the system process tree.

   ps tree -Gap | less -r

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### See how many % of your memory firefox is using

   ps  -o %mem= -C firefox-bin | sed -s 's/\..*/%/'

##### Find the process you are looking for minus the grepped one

   ps  -ef | grep c\\ommand

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### Find the process you are looking for minus the grepped one

   ps  -C command

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### total percentage of memory use for all processes with a given name

   ps  -eo pmem,comm | grep java | awk '{sum+=$1} END {print sum " % of RAM"}'

##### Restart command if it dies.

   ps  -C program_name || { program_name & }

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### processes per user counter

   ps  aux |awk '{$1}  {++P[$1]} END {for(a in P) if (a !="USER") print a,P[a]}'

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### Top ten (or whatever) memory utilizing processes (with children aggregate)

   ps  axo rss,comm,pid | awk '{ proc_list[$2]++; proc_list[$2 "," 1] += $1; } END { for (proc in proc_list) { printf("%d\t%s\n", proc_list[proc "," 1],proc); }}' | sort -n | tail -n 10

##### display date of last time a process was started in `date` format

   ps  -o lstart <pid>

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### Display the top ten running processes - sorted by memory usage

   ps  aux sort -rss | head

##### Apache memory usage

   ps  auxf | grep httpd | grep -v grep | grep -v defunct | awk '{sum=sum+$6}; END {print sum/1024}'

##### List processes sorted by CPU usage

   ps  -ef sort=-%cpu

##### How much RAM is Apache using?

   ps  -o rss -C httpd | tail -n +2 | (sed 's/^/x+=/'; echo x) | bc

##### count and number lines of output, useful for counting number of matches

   ps  aux | grep [a]pache2 | nl

##### Tells the shell you are using

   ps  -p $$

##### Who invoked me? / Get parent command

   ps  -o comm= -p $(ps -o ppid= -p $$)

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### ps a process keeping the header info so you know what the columns of numbers mean!

   ps  auxw |egrep "PID|process_to_look_at"

##### List all databases in Postgres and their (byte/human) sizes, ordering by byte size descending

   ps ql -c "SELECT pg_database.datname, pg_database_size(pg_database.datname), pg_size_pretty(pg_database_size(pg_database.datname)) FROM pg_database ORDER BY pg_database_size DESC;" -d <ANYDBNAME>

##### Find the processes that are on the runqueue.  Processes with a status of

   ps  -eo stat,pid,user,command | egrep "^STAT|^D|^R"

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### Format ps command output

   ps  ax -o "%p %U %u %x %c %n"

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### ps with parent/child process tree

   ps  auxf

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### Output Detailed Process Tree for any User

   ps u(){ command ps -Hcl -F S f -u ${1:-$USER}; }

##### Displays process tree of all running processes

   ps tree -Gap

##### Print current running shell, PID

   ps  -p $$

##### Pulls total current memory usage, including SWAP being used, by all active processes.

   ps  aux | awk '{sum+=$6} END {print sum/1024}'

##### Show the 20 most CPU/Memory hungry processes

   ps  aux | sort +2n | tail -20

##### Current running process ordered by %CPU

   ps  -eo pcpu,pid,args | sort -n

##### To find the uptime of each process-id of particular service or process

   ps  -o etime `pidof firefox` |grep -v ELAPSED | sed 's/\s*//g' | sed "s/\(.*\)-\(.*\):\(.*\):\(.*\)/\1d \2h/; s/\(.*\):\(.*\):\(.*\)/\1h \2m/;s/\(.*\):\(.*\)/\1m \2s/"

##### processes per user counter

   ps  hax -o user | sort | uniq -c

##### Pull Total Memory Usage In Virtual Environment

   ps  axo rss,comm | awk '{sum+=$1; print $1/1024, "MB - ", $2} END {print "\nTotal RAM Used: ", sum/1024, "MB\n"}'

##### Find processes utilizing high memory in human readable format

   ps  -eo size,pid,user,command sort -size |awk '{hr[1024**2]="GB";hr[1024]="MB";for (x=1024**3; x>=1024; x/=1024){if ($1>=x){printf ("%-6.2f %s ", $1/x, hr[x]);break}}}{printf ("%-6s %-10s ", $2, $3)}{for (x=4;x<=NF;x++){printf ("%s ",$x)} print ("\n")}'

##### Getting ESP and EIP addresses from running processes

   ps  ax format=pid,eip,esp,user,command

##### Return threads count of a process

   ps  -o thcount -p <process id>

##### Figure out what shell you're running

   ps  -p $$

##### Kill all processes belonging to a user

   ps  -ef | grep $USERNAME | awk {'print $2'} | xargs kill [-9]

##### List all PostgreSQL databases. Useful when doing backups

   ps ql -U postgres -lAt | gawk -F\| '$1 !~ /^template/ && $1 !~ /^postgres/ && NF > 1 {print $1}'

##### Show the command line for a PID with ps

   ps  h -o %a 21679

##### Check ps output to see if file is running, if not start it

   ps  -C thisdaemon || { thisdaemon & }

##### easily strace all your apache *child* processes

   ps  h ppid $(cat /var/run/apache2.pid) | awk '{print"-p " $1}' | xargs sudo strace

##### easily strace all your apache processes

   ps  auxw | grep -E 'sbin/(apache|httpd)' | awk '{print"-p " $2}' | xargs strace -F

##### count how many cat processes are running

   ps  ax | grep -c [c]at

##### Chrome sucks

   ps  -e -m -o user,pid,args,%mem,rss | grep Chrome | perl -ne 'print "$1\n" if / (\d+)$/' | ( x=0;while read line; do (( x += $line )); done; echo $((x/1024)) );

##### Sort output by column

   ps  aux | sort -nk 6

##### lazy SQL QUERYING

   ps ql

##### List PHP-FPM pools by total CPU usage

   ps  axo pcpu,args | awk '/[p]hp.*pool/ { sums[$4] += $1 } END { for (pool in sums) { print sums[pool], pool } }' | sort -rn | column -t

##### Shows users and 'virtual users' on your a unix-type system

   ps  -eo user | sort -u

##### find duplicate processes

   ps  aux | sort key=11 | uniq -c -d skip-fields=10 | sort -nr key=1,1

##### Top ten memory hogs

   ps  -eorss,args | sort -nr | pr -TW$COLUMNS | head

##### "What the hell is running on?!" Easily snoop your system's RAM consumption

   ps  aux | awk '$11!~/\[*\]/ {print $6/1024" Mb > "$11,$12,$13,$14}' | sort -g

##### Top 10 Memory Consuming Processes

   ps  -auxf | sort -nr -k 4 | head -10

##### get some information about the parent process from a given process

   ps  -o ppid= <given pid> | xargs ps -p

##### Chrome sucks

   ps  aux | awk '/chrome/ {s+=$6}END{print s/1024}';

##### Count threads of a jvm process

   ps  uH p <PID_OF_U_PROCESS> | wc -l

##### the executable that started the currently running oracle databases and the ORACLE_HOME relative to each

   ps  -ef |grep oracle |grep pmon |awk '{print $2}' |xargs -I {} ps eww {} |grep pmon |grep -v grep |awk '{print $5 " " $6 " " $0}' |sed 's/\(S*\) \(S*\) .*ORACLE_HOME/\1 \2/g' |cut -f1,2,3 -d" "

##### print a cpu of a process

   ps  -eo %cpu,args | grep -m1 PROCESS | awk '{print $1}'

##### Search for an active process without catching the search-process

   ps  -ef | awk '/process-name/ && !/awk/ {print}'

##### Nicely display mem usage with ps

   ps  -o comm,%mem,args -u www-data

##### See OpenVZ Container id's of top 10 running processes by %cpu

   ps  -e h -o pid sort -pcpu | head -10 | vzpid -

##### Find processes stuck in dreaded "D" state aka IO Wait

   ps  aux | awk '{if ($8 ~ "D") print $0}'

##### List process in unkillable state D (iowait)

   ps  aux | awk '{if ($8 ~ "D") print $0}'

##### cpu and memory usage top 10 under Linux

   ps  -eo user,pcpu,pmem | tail -n +2 | awk '{num[$1]++; cpu[$1] += $2; mem[$1] += $3} END{printf("NPROC\tUSER\tCPU\tMEM\n"); for (user in cpu) printf("%d\t%s\t%.2f%\t%.2f%\n",num[user], user, cpu[user], mem[user]) }'

##### View Processeses like a fu, fu

   ps tree -p

##### kill all running instances of wine and programs runned by it (exe)

   ps  ax | egrep "*.exe|*exe]" | awk '{ print $1 }' | xargs kill

##### Given process ID print its environment variables

   ps  ewwo command PID | tr ' ' '\n' | grep \=

##### 'micro' ps aux (by mem/cpu)

   ps  aux | awk '{print($1" "$3" "$4" "$11);}' | grep -v "0.0"

##### Find the process you are looking for minus the grepped one

   ps  aux | grep [p]rocess-name

##### Search for a process by name

   ps  -fC PROCESSNAME

##### kill all foo process

   ps  -ef | grep [f]oo | awk '{print $2}' | xargs kill -9

##### Given $PID, print all child processes on stdout

   ps  uw ppid $PID

##### Remove grep itself from ps

   ps  afx|grep [a]pache

##### Display top 5 processes consuming CPU

   ps  -eo pcpu,user,pid,cmd | sort -r | head -5

##### Show CPU usage for EACH cores

   ps  ax -L -o pid,tid,psr,pcpu,args | sort -nr -k4| head -15 | cut -c 1-90

##### grep processes list avoiding the grep itself

   ps  axu | grep [a]pache2

##### Transfer a file to multiple hosts over ssh

   ps cp -h hosts.txt -l username /etc/hosts /tmp/hosts

##### easily strace all your apache processes

   ps  auxw | grep sbin/apache | awk '{print"-p " $2}' | xargs strace -f

##### Top ten (or whatever) memory utilizing processes (with children aggregate) - Can be done without the multi-dimensional array

   ps  axo rss,comm,pid | awk '{ proc_list[$2] += $1; } END { for (proc in proc_list) { printf("%d\t%s\n", proc_list[proc],proc); }}' | sort -n | tail -n 10

##### memory usage

   ps  -e -orss=,args= | sort -b -k1,1n | pr -TW$COLUMNS

##### Sort all running processes by their memory & CPU usage

   ps  aux sort=%mem,%cpu

##### Kill all processes belonging to a user

   ps  -fu $USER | awk {'print $2'} | xargs kill [-9]

##### Discover the process start time

   ps  -eo pid,lstart,cmd

##### List users with running processes

   ps  aux | sed -n '/USER/!s/\([^ ]\) .*/\1/p' | sort -u

##### psgrepp

   ps  aux | grep $(echo $1 | sed "s/^\(.\)/[\1]/g")

##### count how many cat processes are running

   ps  -a | grep -c cat

##### find out zombie process

   ps  aux | awk '{ print $8 " " $2 " " $11}' | grep -w Z

##### ps grep with header

   ps g () { ps auxwww | egrep "$1|PID" | grep -v grep }

##### List Threads by Pid along with Thread Start Time

   ps  -o pid,lwp,lstart pid 797 -L

##### Run a script in parrallel over ssh

   ps sh -h RemoteHosts.txt -P -I < ~/LocalScript.sh

##### Chrome sucks

   ps  -o rss= -C Chrome | (x=0; while read rss; do ((x+=$rss)); done; echo $((x/1024)))

##### Chrome sucks

   ps  -A -o rss,command | grep  [C]hrome | awk '{sum+=$1} END {printf("%sMB\n",sum/1024)}'

##### Find a process by name and automatically kill it

   ps  aux | grep name | grep -v grep | awk '{print $2}' | xargs kill -9

##### Get the name or user running the process of specified PID

   ps  -p pid -o logname |tail -1

##### count and number lines of output, useful for counting number of matches

   ps  aux | grep [h]ttpd | cat -n

##### Show WebSphere AppServer uid|pid|cell|node|jvms

   ps  -ef | grep [j]ava | awk -F ' '  ' { print $1,"    ",$2,"\t",$(NF-2),"\t",$(NF-1),"\t",$NF } '  | sort -k4

##### Display the specified range of process information

   ps  aux | sort -n -k2 | awk '{if ($2 < 300) print($0)}'

##### all users with terminal sessions

   ps  axno user,tty | awk '$1 >= 1000 && $1 < 65530 && $2 != "?"' | sort -u

##### kill all process that belongs to you

   ps  -u $USER -lf | grep -vE "\-bash|sshd|ps|grep|PPID" > .tmpkill; if (( $(cat .tmpkill | wc -l) > 0 )); then echo "# KILL EM ALL"; cat .tmpkill; cat .tmpkill | awk '{print $4}' | xargs kill -9; else echo "# NOTHING TO KILL"; fi; cat .tmpkill; rm .tmpkill;

##### psgrep(command)

   ps grep() { ps aux | tee >(head -1>&2) | grep -v " grep $@" | grep "$@" -i color=auto; }

##### Sum using awk

   ps  -ylC httpd sort:rss | awk '{ SUM += $8 } END { print SUM/1024 }'

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### Get a PostgreSQL servers version

   ps ql -h <SERVER NAME HERE>  -t -c 'SELECT version();' |head -1

##### get process id with program name

   ps  -efa | grep httpd | grep -v grep | awk '{ print $2 }' |xargs

##### Display all zombie process IDs

   ps  axo pid=,stat= | awk '$2~/^Z/ { print $1 }'

##### Get a PostgreSQL servers version

   ps ql -X -A -t -c "SELECT version();"

##### printing with psnup

   ps nup -4 -pa4 -Pa4 file.ps file2.ps

##### Using psnup to get two pages per page

   ps nup -2 file.ps | lpr

##### Kill all Zombie processes one-liner

   ps  axo state,ppid | awk '!/PPID/$1~"Z"{print $2}' | xargs -r kill -9

##### Display the top ten running processes - sorted by memory usage

   ps  -eo size,command sort -size | head

##### total percentage of memory use for all processes with a given name

   ps  -eo pmem,comm | grep chrome | cut -d " " -f 2 | paste -sd+ | bc

##### Grep without having it show its own process in the results

   ps  aux | grep "[s]ome_text"

##### processes per user counter

   ps  hax -o user sort user | uniq -c

##### 'micro' ps aux (by mem/cpu)

   ps  -o user,%cpu,%mem,command

##### Count total processes for specific program and user

   ps  -u user_name_here | grep process_name_here | wc -l

##### Display the top ten running processes sorted by the memory usage:

   ps  aux | awk '{if ($5 != 0 ) print $2,$5,$6,$11}' | sort -k2rn | head -10 | column -t

##### Get the number of open sockets for a process

   ps  aux | grep [process] | awk '{print $2}' | xargs -I % ls /proc/%/fd | wc -l

##### To get the average httpd process size, log into your server and run the following on the command line

   ps  aux | grep 'httpd' | awk '{print $6/1024 " MB";}'

##### If you want to calculate the average on-the-fly

   ps  aux | grep 'httpd' | awk '{print $6/1024;}' | awk '{avg += ($1 - avg) / NR;} END {print avg " MB";}'

##### find the full amount of ram associated with mysql

   ps  aux | grep 'mysql' | awk '{print $6/1024 " MB";}'

##### Find the processes that are on the runqueue.  Processes with a status of

   ps  r -A

##### Total procs, avg size (RSS) and Total mem use

   ps  awwwux | grep httpd | grep -v grep | awk '{mem = $6; tot = $6 + tot; total++} END{printf("Total procs: %d\nAvg Size: %d KB\nTotal Mem Used: %f GB\n", total, mem / total, tot / 1024 / 1024)}'

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### Given $PID, print all child processes on stdout

   ps  axo pid,ppid | awk "{ if ( \$2 == $PID ) { print \$1 }}")

##### Find longest running non-root processes on a machine

   ps  -eo etime,pid,pcpu,ppid,args | sed -e '/\[.\+\]/d' -e '/^[ \t]*[0-9]\{2\}:[0-9]\{2\} /d' | sort -k1r

##### Display the top ten running processes - sorted by memory usage

   ps  axo %mem,pid,euser,cmd | sort -nr | head -n 10

##### Find all processes running under your username.

   ps  -ef | grep $USER

##### list java heap summary

   ps  -ef | grep -oh 'Xmx[0-9]*' | cut -d'x' -f2 | awk '{SUM += $1} END { print SUM}'

##### List user processes with their memory usage and total usage.

   ps  -u marcanuy -o pid,rss,command | awk '{print $0}{sum+=$2} END {print "Total", sum/1024, "MB"}'

##### Figure out what shell you're running

   ps  -o comm= -p $$

##### Kill all processes belonging to a user

   ps  wwwwuax|awk '/command/ { printf("kill -9 %s\n",$2) }'|/bin/sh

##### check memory and CPU consumption of Process on node.

   ps  -eo pcpu,pmem,cmd | grep Service| grep -v grep| sort -k 1 -nr | head -5

##### show top 10 most memory hungry  process with a simple format of (%mem, pid, short command)

   ps  -eo pmem,pid,comm no-headers | sort -k1 -rn | head -10

##### Exclude grep from your grepped output of ps (alias included in description)

   ps  aux | grep [h]ttpd

##### Sum of the total resident memory Stainless.app is using.

   ps  -ec -o command,rss | grep Stainless | awk -F ' ' '{ x = x + $2 } END { print x/(1024) " MB."}'

##### Show concurrent memory usage for individual instances of an application

   ps  -eo pmem,comm | grep application-name

##### Thread count per user

   ps  -u jboss -o nlwp= | awk '{ num_threads += $1 } END { print num_threads }'

##### Kill processes associated with PATTERN

   ps  -fea | grep PATTERN | awk {'print $2'} | xargs kill -9

##### Find processes by current user on a Solaris box

   ps  -u `/usr/xpg4/bin/id -u`

##### Kill a lot of process once a time

   ps  aux | grep <process> | grep -v grep | awk '{print $2}' | xargs -i -t kill -9 {}

##### Display the top ten running processes - sorted by memory usage

   ps  aux | sort -nk +4 | tail

##### Processes by CPU usage

   ps  -e -o pcpu,cpu,nice,state,cputime,args sort pcpu | sed "/^ 0.0 /d"
