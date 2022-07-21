# psg

##### Shortcut to search a process by name

   psg (){ ps aux | grep -v grep | egrep -e "$1|USER"; }

##### Search for a process by name

   psg (){ ps aux | grep -E "[${1:0:1}]${1:1}|^USER"; }

##### psgrep

   psg rep() { if [ ! -z $1 ]; then echo "Grepping for processes matching $1..." ps aux | grep -i $1 | grep -v grep; else echo "!! Need name to grep for"; fi }

##### Find the process you are looking for minus the grepped one

   psg () { ps aux | grep "[${1[1]}]${1[2,-1]}"; }

##### Search for a process by name

   psg rep() ... func to long, please look under "description"

##### ps grep with header

   psg  () { ps auxwww | egrep "$1|PID" | grep -v grep }

##### psgrep(command)

   psg rep() { ps aux | tee >(head -1>&2) | grep -v " grep $@" | grep "$@" -i color=auto; }

##### psg (ps grep) function if you don't have pgrep or don't know how to use it

   psg ()  { if [ -z "$2" ]; then psargs="aux"; greparg="$1"; else psargs="$1"; greparg="$2"; fi; ps $psargs | grep -i "$(echo $greparg | sed -e 's/^\(.\)/[\1]/')\|^$(ps $psargs | head -1)" ; }

##### ps grep with header

   psg  () { ps auxwww | egrep "$1|PID" | grep -v grep }

##### psgrep(command)

   psg rep() { ps aux | tee >(head -1>&2) | grep -v " grep $@" | grep "$@" -i color=auto; }
