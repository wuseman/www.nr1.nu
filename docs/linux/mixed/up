# up

##### Uptime in minute

   up time | awk -F ',' ' {print $1" "$2}'|awk ' {print $3" "$4" "$5}' | sed '1,$s/:/ /' | awk ' {if ($4 =="user") print $1*60 + $2;else if ($2=="mins") print $1;else print $1*24*60 + $2*60 + $3}'

##### Change default terminal emulator

   up date-alternatives config x-terminal-emulator

##### Quickly CD Out Of Directories Without 5+ Aliases

   up () { local x='';for i in $(seq ${1:-1});do x="$x../"; done;cd $x; }

##### how long system has been running

   up time

##### Quickly CD Out Of Directories

   up () { [ $(( $1 + 0 )) -gt 0 ] && cd $(eval "printf '../'%.0s {1..$1}"); }

##### Convert text to uppercase

   up per() { echo ${@^^}; }

##### Update program providing a functionality on Debian

   up date-alternatives config java

##### Jump up to any directory above the current one

   up to() { cd "${PWD/\/$@\/*//$@}" }

##### Update program providing java on Debian

   up date-java-alternatives

##### change up n directories

   up  () { if [ "${1/[^0-9]/}" == "$1" ]; then p=./; for i in $(seq 1 $1); do p=${p}../; done; cd $p; else echo 'usage: up N'; fi }

##### Uptime in minute

   up time | awk -F ',' ' {print $1} ' | awk ' {print $3} ' | awk -F ':' ' {hrs=$1; min=$2; print hrs*60 + min} '

##### Display only the actual uptime value

   up time | cut -d "," -f 1 | cut -d " " -f 4-

##### disable services without uninstalling them

   up date-rc.d -f foobar remove && update-rc.d foobar stop

##### disable Internet services (i.e., those using inetd) without uninstalling

   up date-inetd disable foobar && /etc/init.d/inetutils-inetd restart

##### Battery Health

   up ower -i /org/freedesktop/UPower/devices/battery_BAT0

##### change default Web browser

   up date-alternatives config x-www-browser

##### Quickly CD Out Of Directories Without 5+ Aliases

   up () { local x='';for i in $(seq ${1:-1});do x="$x../"; done;cd $x; }

##### Quickly CD Out Of Directories

   up () { [ $(( $1 + 0 )) -gt 0 ] && cd $(eval "printf '../'%.0s {1..$1}"); }

##### Convert text to uppercase

   up per() { echo ${@^^}; }

##### Update program providing a functionality on Debian

   up date-alternatives config java

##### Jump up to any directory above the current one

   up to() { cd "${PWD/\/$@\/*//$@}" }

##### Update program providing java on Debian

   up date-java-alternatives

##### change up n directories

   up  () { if [ "${1/[^0-9]/}" == "$1" ]; then p=./; for i in $(seq 1 $1); do p=${p}../; done; cd $p; else echo 'usage: up N'; fi }

##### Uptime in minute

   up time | awk -F ',' ' {print $1} ' | awk ' {print $3} ' | awk -F ':' ' {hrs=$1; min=$2; print hrs*60 + min} '

##### Display only the actual uptime value

   up time | cut -d "," -f 1 | cut -d " " -f 4-

##### disable services without uninstalling them

   up date-rc.d -f foobar remove && update-rc.d foobar stop

##### disable Internet services (i.e., those using inetd) without uninstalling

   up date-inetd disable foobar && /etc/init.d/inetutils-inetd restart

##### Battery Health

   up ower -i /org/freedesktop/UPower/devices/battery_BAT0
