# sync

##### Testing writing speed with dd

   sync ; time `dd if=/dev/zero of=bigfile bs=1M count=2048 && sync`

##### disable touchpad

   sync lient TouchPadOff=1

##### enable touchpad

   sync lient TouchPadOff=0

##### Clear filesystem memory cache

   sync  && echo 3 | sudo tee /proc/sys/vm/drop_caches

##### clean up memory on linux (fedora)

   sync ; echo 3 > /proc/sys/vm/drop_caches

##### clear the cache from memory

   sync ; echo 3 > /proc/sys/vm/drop_caches

##### Testing reading speed with dd

   sync ; time `dd if=/dev/cciss/c0d1p1 of=/dev/null bs=1M count=10240`

##### Clean memory and SO cache

   sync  ; /sbin/sysctl -w vm.drop_caches=3 ; sync ; sleep 2 ; /sbin/sysctl -w vm.drop_caches=0 ;/sbin/swapoff -a ; sleep 2 ;/sbin/swapon -a

##### Clean memory and SO cache

   sync  ; /sbin/sysctl -w vm.drop_caches=3 ; sync ; sleep 2 ; /sbin/sysctl -w vm.drop_caches=0 ;/sbin/swapoff -a ; sleep 2 ;/sbin/swapon -a

##### Toggle the Touchpad on or off

   sync lient TouchpadOff=$(synclient -l | grep -q 'TouchpadOff.*1'; echo $?)

##### turn on knoppix 7  touchpad Tap function (mouse clicks)

   sync lient TapButton1=1 TapButton2=2 TapButton3=3

##### Clear filesystem memory cache

   sync  && echo 3 | sudo tee /proc/sys/vm/drop_caches

##### clear the cache from memory

   sync ; echo 3 > /proc/sys/vm/drop_caches

##### Testing reading speed with dd

   sync ; time `dd if=/dev/cciss/c0d1p1 of=/dev/null bs=1M count=10240`

##### Clean memory and SO cache

   sync  ; /sbin/sysctl -w vm.drop_caches=3 ; sync ; sleep 2 ; /sbin/sysctl -w vm.drop_caches=0 ;/sbin/swapoff -a ; sleep 2 ;/sbin/swapon -a
