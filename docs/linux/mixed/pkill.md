# pkill

##### Kill process by searching something from 'ps' command

   pkill  <process name>

##### Kill process by searching something from 'ps' command

   pkill  -f <process name>

##### kills all php5-fcgi processes for user per name

   pkill  -9 -u username php5-fcgi

##### Make syslog reread its configuration file

   pkill  -HUP syslogd

##### kill all processes with name or argument

   pkill  -f foo

##### Kills MYWIFE.

   pkill  -U MYWIFE

##### kill process by name

   pkill 

##### Kill a process with its name

   pkill  $1

##### kill all process that belongs to you

   pkill  -u `whoami`

##### kill some pids without specific pid

   pkill  -9 search_criteria

##### Kill any process with one command using program name

   pkill  <name>

##### Kill most recently created process.

   pkill  -n firefox

##### Watch the progress of 'dd'

   pkill  -USR1 ^dd$

##### kill process by name

   pkill  -x firefox

##### Kill XMMS for a cron job

   pkill  xmms

##### Kill google chrome process

   pkill  -9 -x chrome

##### Kill a process by its partial name

   pkill  name

##### Wait the end of prog1 and launch prog2

   pkill  -0 prog1; while [ $? -eq 0 ]; do sleep 10; pkill -0 prog1; done; prog2

##### Find a process by name and automatically kill it

   pkill  -f process_name

##### kills all php5-fcgi processes for user per name

   pkill  -9 -u username php5-fcgi

##### controls mpg321 play/pause/stop by signals

   pkill  -{signal} mpg321

##### all out

   pkill  -KILL -u username

##### all out

   pkill  -9 -u username

##### Restart Plasma without logging off from KDE

   pkill  plasma-desktop && plasma-desktop

##### Mouse wheel or thumb buttons borked? Try this.

   pkill  imwheel && imwheel &

##### kill all process that belongs to you

   pkill  -u `whoami`

##### kill some pids without specific pid

   pkill  -9 search_criteria

##### Kill any process with one command using program name

   pkill  <name>

##### Kill most recently created process.

   pkill  -n firefox

##### Watch the progress of 'dd'

   pkill  -USR1 ^dd$

##### kill process by name

   pkill  -x firefox

##### Kill XMMS for a cron job

   pkill  xmms

##### Kill google chrome process

   pkill  -9 -x chrome

##### Kill a process by its partial name

   pkill  name

##### Wait the end of prog1 and launch prog2

   pkill  -0 prog1; while [ $? -eq 0 ]; do sleep 10; pkill -0 prog1; done; prog2

##### Find a process by name and automatically kill it

   pkill  -f process_name

##### kills all php5-fcgi processes for user per name

   pkill  -9 -u username php5-fcgi

##### controls mpg321 play/pause/stop by signals

   pkill  -{signal} mpg321

##### all out

   pkill  -KILL -u username

##### all out

   pkill  -9 -u username

##### Restart Plasma without logging off from KDE

   pkill  plasma-desktop && plasma-desktop

##### Mouse wheel or thumb buttons borked? Try this.

   pkill  imwheel && imwheel &
