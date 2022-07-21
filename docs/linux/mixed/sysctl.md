# sysctl

##### Change your swappiness Ratio under linux

   sysctl  vm.swappiness=50

##### Reload all sysctl variables without reboot

   sysctl  system

##### Find the ratio between ram usage and swap usage.

   sysctl  -a | grep vm.swappiness

##### find available cpu frequencies on FreeBSD

   sysctl  dev.cpu.0.freq_levels

##### Get last sleep time on a Mac

   sysctl  -a | grep sleeptime

##### Get last sleep time on a Mac

   sysctl  kern.sleeptime

##### Find last reboot time

   sysctl  -a | grep boottime | head -n 1

##### Clear filesystem memory cache

   sysctl  -w vm.drop_caches=3

##### Get last sleep time on a Mac

   sysctl  kern.sleeptime

##### Change your swappiness Ratio under linux

   sysctl  vm.swappiness=50

##### Reload all sysctl variables without reboot

   sysctl  system

##### Find the ratio between ram usage and swap usage.

   sysctl  -a | grep vm.swappiness

##### find available cpu frequencies on FreeBSD

   sysctl  dev.cpu.0.freq_levels

##### Get last sleep time on a Mac

   sysctl  -a | grep sleeptime

##### Get last sleep time on a Mac

   sysctl  kern.sleeptime

##### Find last reboot time

   sysctl  -a | grep boottime | head -n 1

##### Clear filesystem memory cache

   sysctl  -w vm.drop_caches=3

##### Get last sleep time on a Mac

   sysctl  kern.sleeptime
