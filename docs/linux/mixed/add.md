# add

##### Add repository in source list without editing sources.list

   add -apt-repository [REPOSITORY]

##### SSH with sql like commad

   add  "ssh $1@$2" in /usr/sbin/connect with executable permission, now use commad "connect user 192.168.1.1"

##### Add a function you've defined to .bashrc

   add function () { declare -f $1 >> ~/.bashrc ; }

##### Load "missing" man pages for your stuff.

   add man () { export MANPATH=`find $1 -xdev -type d -name man -printf %p:`${MANPATH}; }

##### Add a function you've defined to .bashrc

   add function () { declare -f $1 >> ~/.bashrc ; }
