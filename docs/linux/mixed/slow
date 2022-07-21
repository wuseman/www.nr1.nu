# slow

##### Slow down IO heavy process

   slow  () { [ -n $1 ] && while kill -STOP $1; do sleep 1; kill -CONT $1; sleep 1; done }

##### slow down CPU and IO for process and its offsprings.

   slow 2() { ionice -c3 renice -n 20 $(pstree `pidof $1` -p -a -u -A|gawk 'BEGIN{FS=","}{print $2}'|cut -f1 -d " ") ; }

##### Slow down IO heavy process

   slow  () { [ -n $1 ] && while ps -p $1 >/dev/null ; do kill -STOP  $1; sleep 1; kill -CONT $1; sleep 1; done & }

##### slow down CPU and IO for process and its offsprings.

   slow 2() { ionice -c3 renice -n 20 $(pstree `pidof $1` -p -a -u -A|gawk 'BEGIN{FS=","}{print $2}'|cut -f1 -d " ") ; }

##### Slow down IO heavy process

   slow  () { [ -n $1 ] && while ps -p $1 >/dev/null ; do kill -STOP  $1; sleep 1; kill -CONT $1; sleep 1; done & }
