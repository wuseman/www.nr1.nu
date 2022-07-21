# renice

##### Renice a group of threads

   renice  -20 -g 2874 (2784 found with ps -Aj)

##### renice by name

   renice  +5 -p $(pidof <process name>)

##### Make shell (script) low priority. Use for non interactive tasks

   renice  19 -p $$

##### renice by name

   renice  +5 -p $(pidof <process name>)

##### Make shell (script) low priority. Use for non interactive tasks

   renice  19 -p $$
