# time

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### Start COMMAND, and kill it if still running after 5 seconds

   time out 5s COMMAND

##### Start COMMAND, and kill it if still running after 5 seconds

   time out 5s COMMAND

##### set  time

   time datectl set-time 'YYYY-MM-DD HH:MM:SS' && hwclock systohc

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### a function to find the fastest free DNS server

   time DNS() { parallel -j0 tag dig @{} "$*" ::: 208.67.222.222 208.67.220.220 198.153.192.1 198.153.194.1 156.154.70.1 156.154.71.1 8.8.8.8 8.8.4.4 | grep Query | sort -nk5; }

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### Execute a command with a timeout

   time limit -t100 somecommand

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### The 1 millionth fibonacci number

   time  echo 'n=1000000;m=(n+1)/2;a=0;b=1;i=0;while(m){e[i++]=m%2;m/=2};while(i){c=a*a;a=c+2*a*b;b=c+b*b;if(e[i]){t=a;a+=b;b=t}};if(n%2)a*a+b*b;if(!n%2)a*(a+2*b)' | bc

##### The absolutely fastest nth fibonacci number

   time  echo 'n=70332;m=(n+1)/2;a=0;b=1;i=0;while(m){e[i++]=m%2;m/=2};while(i){c=a*a;a=c+2*a*b;b=c+b*b;if(e[i]){t=a;a+=b;b=t}};if(n%2)a*a+b*b;if(!n%2)a*(a+2*b)' | bc

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### take execution time of several commands

   time  { <command1> ; <command2> ; <command...> ; }

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### Execute a command with a timeout

   time out 10 sleep 11

##### remove all snapshots from all virtual machines in vmware esx

   time  vmware-cmd -l | while read x; do printf "$x"; vmware-cmd "$x" removesnapshots; done

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### Test your total disk IO capacity, regardless of caching, to find out how fast the TRUE speed of your disks are

   time  (dd if=/dev/zero of=blah.out bs=256M count=1 ; sync )

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### copy hybrid iso images to USB key for booting from it, progress bar and remaining time are displayed while copying

   time  (pv file.iso | dd bs=1M oflag=sync of=/dev/sdX 2>/dev/null)

##### get only time of execution of a command without his output

   time  Command  >/dev/null

##### Execute a command with a timeout

   time out -k 1m 30s some_command

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### a function to find the fastest free DNS server

   time DNS () { { for x in "${local_DNS}" "208.67.222.222" "208.67.220.220" "198.153.192.1" "198.153.194.1" "156.154.70.1" "156.154.71.1" "8.8.8.8" "8.8.4.4"; do ({ echo -n "$x "; dig @"$x" "$*"|grep Query ; }|sponge &) done ; } | sort -n -k5 ; }

##### Test I/O performance by timing the writing of 100Mb to disk

   time  dd if=/dev/zero of=dummy_file bs=512k count=200

##### list all opened ports on host

   time  { i=0; while [ $(( i < 65535 )) -eq 1 ] ; do nc -zw2 localhost $((++i)) && echo port $i opened ; done; }

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### Testing hard disk writing  speed

   time  dd if=/dev/zero of=TEST bs=4k count=512000

##### Fast CLI Timer

   time  read x

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### Run CPU benchmark from command line

   time  echo "scale=5000; 4*a(1)" | bc -l -q

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### Test your total disk IO capacity, regardless of caching, to find out how fast the TRUE speed of your disks are

   time  dd if=/dev/zero of=blah.out oflag=direct bs=256M count=1

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### Start COMMAND, and kill it if still running after 5 seconds

   time out 5s COMMAND

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### a function to find the fastest free DNS server

   time DNS() { parallel -j0 tag dig @{} "$*" ::: 208.67.222.222 208.67.220.220 198.153.192.1 198.153.194.1 156.154.70.1 156.154.71.1 8.8.8.8 8.8.4.4 | grep Query | sort -nk5; }

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### take execution time of several commands

   time  { <command1> ; <command2> ; <command...> ; }

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### Execute a command with a timeout

   time out 10 sleep 11

##### remove all snapshots from all virtual machines in vmware esx

   time  vmware-cmd -l | while read x; do printf "$x"; vmware-cmd "$x" removesnapshots; done

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### Test your total disk IO capacity, regardless of caching, to find out how fast the TRUE speed of your disks are

   time  (dd if=/dev/zero of=blah.out bs=256M count=1 ; sync )

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### copy hybrid iso images to USB key for booting from it, progress bar and remaining time are displayed while copying

   time  (pv file.iso | dd bs=1M oflag=sync of=/dev/sdX 2>/dev/null)

##### get only time of execution of a command without his output

   time  Command  >/dev/null

##### Execute a command with a timeout

   time out -k 1m 30s some_command

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### a function to find the fastest free DNS server

   time DNS () { { for x in "${local_DNS}" "208.67.222.222" "208.67.220.220" "198.153.192.1" "198.153.194.1" "156.154.70.1" "156.154.71.1" "8.8.8.8" "8.8.4.4"; do ({ echo -n "$x "; dig @"$x" "$*"|grep Query ; }|sponge &) done ; } | sort -n -k5 ; }

##### Test I/O performance by timing the writing of 100Mb to disk

   time  dd if=/dev/zero of=dummy_file bs=512k count=200

##### list all opened ports on host

   time  { i=0; while [ $(( i < 65535 )) -eq 1 ] ; do nc -zw2 localhost $((++i)) && echo port $i opened ; done; }

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### Testing hard disk writing  speed

   time  dd if=/dev/zero of=TEST bs=4k count=512000

##### Fast CLI Timer

   time  read x

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### Run CPU benchmark from command line

   time  echo "scale=5000; 4*a(1)" | bc -l -q

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)

##### Test your total disk IO capacity, regardless of caching, to find out how fast the TRUE speed of your disks are

   time  dd if=/dev/zero of=blah.out oflag=direct bs=256M count=1

##### A very simple and useful stopwatch

   time  read (ctrl-d to stop)
