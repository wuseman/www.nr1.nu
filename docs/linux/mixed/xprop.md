# xprop

##### Click on a GUI window and show its process ID and command used to run the process

   xprop  | awk '/PID/ {print $3}' | xargs ps h -o pid,cmd

##### pid of manually selecting window

   xprop  | awk '/PID/ {print $3}'

##### Click on a GUI window and show its process ID and command used to run the process

   xprop  | awk '/PID/ {print $3}' | xargs ps h -o pid,cmd

##### pid of manually selecting window

   xprop  | awk '/PID/ {print $3}'
