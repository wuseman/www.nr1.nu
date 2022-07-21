# kill

##### Kill all Zombie processes if they accept it!

   kill  -9 `ps xawo state=,pid=|sed -n 's/Z //p'`

##### Force kill all named processes

   kill  -9 $(ps -ef | grep [h]ttpd | awk '{print $2}')

##### kill all processes of a program

   kill  -9 $(pidof *program*)

##### Unlock your KDE4 session remotely (for boxes locked by KDE lock utility)

   kill all -s 9 krunner_lock

##### find and kill a zombie process

   kill  -HUP `ps -A -ostat,ppid,pid,cmd | grep -e '^[Zz]' | awk '{print $2}'`

##### kills rapidly spawning processes that spawn faster than you can repeat the killall command

   kill all rapidly_spawning_process ; killall rapidly_spawning_process ; killall rapidly_spawning_process

##### UNIX one-liner to kill a hanging Firefox process

   kill  -HUP ` ps -aef | grep -i firefox | sort -k 2 -r | sed 1d | awk ' { print $2 } ' `

##### Kills all processes for a certain program

   kill  -9 $(pidof process)

##### Kill XMMS for a cron job

   kill  `ps aux | grep xmms | grep -v grep | awk '{ print $2 }'`

##### Kill XMMS for a cron job

   kill all xmms

##### Kill the terminal(window/tab) you work in [suicide]

   kill  -9 $$

##### Removing Backgroud Process

   kill  -9 `ps -u user -o "pid="`

##### show dd progress

   kill all -USR1 dd

##### Kill a background job

   kill  %1

##### kill a process(e.g. conky) by its name, useful when debugging conky:)

   kill all conky

##### Kill a process by application

   kill  -9 `pgrep $PROCESS_NAME`

##### Kill a daemon by name, not by PID

   kill _daemon() { echo "Daemon?"; read dm;  kill -15 $(netstat -atulpe | grep $dm | cut -d '/' -f1 | awk '{print $9}') }; alias kd='kill_daemon

##### kill some pids without specific pid

   kill  -9 `ps aux | grep "search_criteria" | awk '{if ($2 != pid) print $2}'`

##### Kill a naughty process

   kill all -9 wineserver

##### kill process by name

   kill all -9 <processname>

##### Forcefuly kills the pid

   kill  -9 <replace this with pid you want to kill>

##### kill process by name

   kill  -9 `pgrep firefox`

##### Restart nautilus

   kill all nautilus

##### Signals list by NUMBER and NAME

   kill  -l

##### Kill any process with one command using program name

   kill all <name>

##### exit without saving history

   kill  -9 $$

##### Manually Pause/Unpause Firefox Process with POSIX-Signals

   kill all -STOP -m firefox

##### Kill all processes belonging to a single user.

   kill  -9 `ps -u <username> -o "pid="`

##### Check if a process is running

   kill  -0 [pid]

##### Kill any process with one command using program name

   kill  -9 `ps ax | egrep [f]elix.jar | egrep -o -e '^ *[0-9]+'`

##### Kick user

   kill all -u username

##### Restart X11 with HUP signal

   kill  HUP `pidof '/usr/bin/X'`

##### Kill multiple instances of a running process

   kill all -9 rouge-process

##### check the status of 'dd' in progress (OS X)

   kill all -INFO dd

##### clear MyDNS-ng cache

   kill  -SIGHUP `cat /var/run/mydns.pid`

##### Kill a process by its partial name (BSD/Mac)

   kill all -r 'Activ'

##### Watch the progress of 'dd'

   kill  -SIGUSR1 xxxx

##### Skip to next selection in playlist

   kill all -2 mpg321

##### kill a process(e.g. conky) by its name, useful when debugging conky:)

   kill  `pidof conky`

##### One liner to kill a process when knowing only the port where the process is running

   kill  -9 `lsof -t -i :port_number`

##### kill all process that belongs to you

   kill  -9 -1

##### Kill all Zombie processes if they accept it!

   kill  -9 `ps -xaw -o state -o pid | grep Z | grep -v PID | awk '{print $2}'`

##### Force all processes matching argument to close.

   kill all -HUP argument

##### Kill the process *group* containing a process named svscan (djb's daemontools)

   kill  -9 -$(ps x -o  "%c %r" | awk '/svscan/{print $2}')

##### Kill all Zombie processes (Guaranteed!)

   kill  -9 `ps -xaw -o state -o ppid | grep Z | grep -v PID | awk '{print $2}'`

##### Do not log last session in bash history:

   kill  -9 $$

##### Kill Session

   kill  -9 `ps -u <user> -o "pid="`

##### Kill process you don't know the PID of, when pidof and pgrep are not available.

   kill all -9 unique

##### Kill a process by its partial name

   kill all -r 'a regular expression'

##### How to get full tread dump for java process

   kill  -3 PID

##### Kill google chrome process

   kill  $(pidof chrome)

##### Kill google chrome process

   kill  -9 $(pidof chrome)

##### Kill google chrome process

   kill all "Google Chrome"

##### show dd progress

   kill all -USR1 dd

##### Signals list by NUMBER and NAME

   kill  -l

##### Kill any process with one command using program name

   kill all <name>

##### exit without saving history

   kill  -9 $$

##### Manually Pause/Unpause Firefox Process with POSIX-Signals

   kill all -STOP -m firefox

##### Kill all processes belonging to a single user.

   kill  -9 `ps -u <username> -o "pid="`

##### Check if a process is running

   kill  -0 [pid]

##### Kill any process with one command using program name

   kill  -9 `ps ax | egrep [f]elix.jar | egrep -o -e '^ *[0-9]+'`

##### Kick user

   kill all -u username

##### Restart X11 with HUP signal

   kill  HUP `pidof '/usr/bin/X'`

##### Kill multiple instances of a running process

   kill all -9 rouge-process

##### check the status of 'dd' in progress (OS X)

   kill all -INFO dd

##### clear MyDNS-ng cache

   kill  -SIGHUP `cat /var/run/mydns.pid`

##### Kill a process by its partial name (BSD/Mac)

   kill all -r 'Activ'

##### Watch the progress of 'dd'

   kill  -SIGUSR1 xxxx

##### Skip to next selection in playlist

   kill all -2 mpg321

##### kill a process(e.g. conky) by its name, useful when debugging conky:)

   kill  `pidof conky`

##### One liner to kill a process when knowing only the port where the process is running

   kill  -9 `lsof -t -i :port_number`

##### kill all process that belongs to you

   kill  -9 -1

##### Kill all Zombie processes if they accept it!

   kill  -9 `ps -xaw -o state -o pid | grep Z | grep -v PID | awk '{print $2}'`

##### Force all processes matching argument to close.

   kill all -HUP argument

##### Kill the process *group* containing a process named svscan (djb's daemontools)

   kill  -9 -$(ps x -o  "%c %r" | awk '/svscan/{print $2}')

##### Kill all Zombie processes (Guaranteed!)

   kill  -9 `ps -xaw -o state -o ppid | grep Z | grep -v PID | awk '{print $2}'`

##### Do not log last session in bash history:

   kill  -9 $$

##### Kill Session

   kill  -9 `ps -u <user> -o "pid="`

##### Kill process you don't know the PID of, when pidof and pgrep are not available.

   kill all -9 unique

##### Kill a process by its partial name

   kill all -r 'a regular expression'

##### How to get full tread dump for java process

   kill  -3 PID

##### Kill google chrome process

   kill  $(pidof chrome)

##### Kill google chrome process

   kill  -9 $(pidof chrome)

##### Kill google chrome process

   kill all "Google Chrome"
