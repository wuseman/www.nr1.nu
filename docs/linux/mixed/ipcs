# ipcs

##### Provide information on IPC (Inter-process communication) facilities

   ipcs 

##### Remove semaphores

   ipcs  -s | grep apache | awk ' { print $2 } ' | xargs ipcrm sem

##### Clear IPC Message Queue

   ipcs  -a | grep 0x | awk '{printf( "-Q %s ", $1 )}' | xargs ipcrm

##### Remove all message queues owned by user foo

   ipcs  -q | grep foo | awk '{print $2}' | xargs -I ipcid ipcrm -q ipcid

##### Remove all unused shared memory segments for current user

   ipcs  -ma | awk '/^m / { if ($9 == 0) { print $2 }}' | xargs -n 1 ipcrm -m

##### Provide information on IPC (Inter-process communication) facilities

   ipcs 

##### Remove semaphores

   ipcs  -s | grep apache | awk ' { print $2 } ' | xargs ipcrm sem

##### Clear IPC Message Queue

   ipcs  -a | grep 0x | awk '{printf( "-Q %s ", $1 )}' | xargs ipcrm

##### Remove all message queues owned by user foo

   ipcs  -q | grep foo | awk '{print $2}' | xargs -I ipcid ipcrm -q ipcid
