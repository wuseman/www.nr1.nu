# stop

##### Pause and Resume Processes

   stop  () { ps -ec | grep $@ | kill -SIGSTOP `awk '{print $1}'`; }

##### Pause and Resume Processes

   stop  () { ps -ec | grep $@ | kill -SIGSTOP `awk '{print $1}'`; }
