# case

##### multichar tr string1 '\n'

   case  $# in 0) echo usage: $0 pattern ;; *)case $1 in */*)sed ' s,'"$1"',\ ,g';; *) sed ' s/'"$1"'/\ /g' ;;esac;esac;

##### seq (argc=2) for FreeBSD

   case  `uname` in FreeBSD)a=$#; case $a in 2) case $1 in 0) jot $(($2+1)) 0 $2 ;; *) jot $2 $1 $2 ;;esac;esac;esac; # usage: seq 1 4; seq 0 4

##### seq (argc=2) for FreeBSD

   case  `uname` in FreeBSD)a=$#; case $a in 2) case $1 in 0) jot $(($2+1)) 0 $2 ;; *) jot $2 $1 $2 ;;esac;esac;esac; # usage: seq 1 4; seq 0 4
