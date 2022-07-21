# cls

##### Get windows IPv4 and nothing else

   cls  && ipconfig | findstr -R "[ IPv4 | adapter ]"

##### Get windows IPv4 and nothing else

   cls  && ipconfig | findstr -R "[ IPv4 | adapter ]"

##### reset hosed terminal

   cls (){ printf "\033c";} or, if no printf, cat > c ;<ctrl+v> <ctrl+[>c <enter><ctrl-d> c(){ cat c;} #usage: c

##### Get windows IPv4 and nothing else

   cls  && ipconfig | find "IPv4"

##### clear screen, keep prompt at eye-level (faster than clear(1), tput cl, etc.)

   cls (){ printf "\33[2J";} or, if no printf, cat >cls;<ctrl-v><ctrl+[>[2J<enter><ctrl+d> cls(){ cat cls;}

##### reset hosed terminal

   cls (){ printf "\033c";} or, if no printf, cat > c ;<ctrl+v> <ctrl+[>c <enter><ctrl-d> c(){ cat c;} #usage: c

##### Get windows IPv4 and nothing else

   cls  && ipconfig | find "IPv4"

##### clear screen, keep prompt at eye-level (faster than clear(1), tput cl, etc.)

   cls (){ printf "\33[2J";} or, if no printf, cat >cls;<ctrl-v><ctrl+[>[2J<enter><ctrl+d> cls(){ cat cls;}
