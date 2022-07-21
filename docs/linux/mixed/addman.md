# addman

##### Load "missing" man pages for your stuff.

   addman  () { export MANPATH=`find $1 -xdev -type d -name man -printf %p:`${MANPATH}; }
