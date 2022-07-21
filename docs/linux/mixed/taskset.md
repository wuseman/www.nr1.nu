# taskset

##### cpu stress test

   taskset   0x00000001 yes > /dev/null &

##### Start a command on only one CPU core

   taskset  -c 0 your_command

##### Change proccess affinity.

   taskset  -cp <core> <pid>

##### cpu stress test

   taskset   0x00000001 yes > /dev/null &

##### Start a command on only one CPU core

   taskset  -c 0 your_command

##### Change proccess affinity.

   taskset  -cp <core> <pid>
