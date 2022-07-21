# clear

##### countdown from 10 ...

   clear ; tput cup 8 8; for i in $(seq 1 10); do echo -n "$((11-$i))      ";sleep 1; done; tput cup 10 8; echo -e "DONE\n\n"

##### Show Available Disk Usage | Pretty Way

   clear  && df -h | grep /dev/sda1 | awk {'print $4'} | lolcat -a -s 10

##### Check out hijacked files in clearcase

   clear tool co -nc `cleartool ls -recurse | grep "hijacked" | sed s/\@\@.*// | xargs`

##### Yet Another Large Screen Clock

   clear ; while sleep 1; do d=$(date +"%H:%M:%S"); e=$(echo "toilet -t -f mono12 $d");tput setaf 1 cup 0; eval $e; tput setaf 4 cup 8; eval "$e -F flop";tput cup 0; done

##### Clear the terminal screen

   clear 

##### get all my commands from commandlinefu

   clear  && curl silent http://www.commandlinefu.com/commands/by/dunryc | grep "div class" | grep command |tr '>' '\n' | grep -v command |sed 's/.....$//'

##### get all my commands in terminal

   clear  && sleep 5s &&  curl silent "http://www.commandlinefu.com/commands/by/dunryc" | grep  '<div class="command">'|sed 's/......$//'|sed 's/^.....................................//'|recode html..ascii|awk 'ORS="\n\n\n\n"'

##### pulsed terminal clock

   clear ;while true;sleep 1;do for((a=1;a<=$(tput cols)/3;a++));do tput cup 0 $a;echo " " $(date);done;sleep 1;for((a;a>=1;a));do tput cup 0 $a;echo $(date) " ";done;done

##### pulsed terminal clock

   clear ;while true;sleep 1;do for((a=1;a<=$(tput cols)/3;a++));do tput cup 0 $a;echo " " $(date);done;sleep 1;for((a;a>=1;a));do tput cup 0 $a;echo $(date) " ";done;done

##### Do a quick check on the harware specifications on a set of Linux (RedHat) boxes

   clear ; for i in `cat thehosts` ; do ssh $i "cat uname -a ; /etc/redhat-release; cat /proc/cpuinfo | tail -n 25 | egrep '^processor|^model name' "; free ; df -h ;done

##### Yet Another Large Screen Clock

   clear ; while sleep 1; do d=$(date +"%H:%M:%S"); e=$(echo "toilet -t -f mono12 $d");tput setaf 1 cup 0; eval $e; tput setaf 4 cup 8; eval "$e -F flop";tput cup 0; done

##### Clear the terminal screen

   clear 

##### get all my commands from commandlinefu

   clear  && curl silent http://www.commandlinefu.com/commands/by/dunryc | grep "div class" | grep command |tr '>' '\n' | grep -v command |sed 's/.....$//'

##### get all my commands in terminal

   clear  && sleep 5s &&  curl silent "http://www.commandlinefu.com/commands/by/dunryc" | grep  '<div class="command">'|sed 's/......$//'|sed 's/^.....................................//'|recode html..ascii|awk 'ORS="\n\n\n\n"'

##### pulsed terminal clock

   clear ;while true;sleep 1;do for((a=1;a<=$(tput cols)/3;a++));do tput cup 0 $a;echo " " $(date);done;sleep 1;for((a;a>=1;a));do tput cup 0 $a;echo $(date) " ";done;done

##### pulsed terminal clock

   clear ;while true;sleep 1;do for((a=1;a<=$(tput cols)/3;a++));do tput cup 0 $a;echo " " $(date);done;sleep 1;for((a;a>=1;a));do tput cup 0 $a;echo $(date) " ";done;done
