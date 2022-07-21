# wineserver

##### kill all running instances of wine and programs runned by it (exe)

   wineserver  -k; killall -9 wine wineserver; for i in `ps ax|egrep "*\.exe"|grep -v 'egrep'|awk '{print $1 }'`;do kill -9 $i;done

##### Stop All Wine Apps and Processes

   wineserver  -k

##### Stop All Wine Apps and Processes

   wineserver  -k
