# history

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### Rank top 10 most frequently used commands

   history  | awk '{print $2}' | sort | uniq -c | sort -rn | head

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### List of commands you use most often

   history  | awk '{if ($2 == "sudo") a[$3]++; else a[$2]++}END{for(i in a){print a[i] " " i}}' |  sort -rn | head

##### Rank top 10 most frequently used commands

   history  | sed -e 's/^sudo //' | awk '{print $2}' | sort | uniq -c | sort -rn | head

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### Rank top 10 most frequently used commands

   history  | cut -c8- | sort | uniq -c | sort -rn | head

##### See most used commands

   history |awk '{print $2}'|awk 'BEGIN {FS="|"} {print $1}'|sort|uniq -c|sort -r

##### Clear current session history

   history  -r

##### Search The History for a Particular Command (ssh in this case)

   history  | grep ssh

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### Copy history from one terminal to another

   history  -w <switch to another terminal> history -r

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### delete a line from your shell history

   history  -d

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### most used commands in history (comprehensive)

   history  | perl -F"\||<\(|;|\`|\\$\(" -alne 'foreach (@F) { print $1 if /\b((?!do)[a-z]+)\b/i }' | sort | uniq -c | sort -nr | head

##### find the longest command in your history

   history  | perl -lane '$lsize{$_} = scalar(@F); if($longest<$lsize{$_}) { $longest = $lsize{$_}; print "$_"; };' | tail -n1

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### List of commands you use most often

   history  | awk '{print $2}' | sort | uniq -c | sort -rn | head

##### Display top Keywords from history

   history  | awk '{print $2}' | awk 'BEGIN {FS="|"}{print $1}' | sort | uniq -c | sort -n | tail | sort -nr

##### Save history without logout

   history  -a

##### Write on the console without being registered

   history  -d $((HISTCMD-1)) && command_to_run

##### Most used command

   history  | awk '{a[$'$(echo "1 2 $HISTTIMEFORMAT" | wc -w)']++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### Clear current session history (bash)

   history  -c

##### backup your history

   history  > ~/history-save-$(date +%d-%m-%y-%T)

##### Clear your history saved into .bash_history file!

   history  -c

##### Clear your history saved into .bash_history file!

   history  -c && rm -f ~/.bash_history

##### Clear history

   history  -c

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head > /tmp/cmds | gnuplot -persist <(echo 'plot "/tmp/cmds" using 1:xticlabels(2) with boxes')

##### Create a bash script from last n commands

   history  | tail -(n+1) | head -(n) | sed 's/^[0-9 ]\{7\}//' >> ~/script.sh

##### Top 30 History

   history |awk '{print $2}'|sort|uniq -c|sort -rn|head -30|awk '!max{max=$1;}{r="";i=s=100*$1/max;while(i>0)r=r"#";printf "%50s %5d %s %s",$2,$1,r,"\n";}'

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### Clear current session history (bash)

   history  -r

##### Add command to bash history without executing it

   history  -s command

##### &#26368;&#24120;&#20351;&#29992;&#30340;10&#20010;&#21629;&#20196;

   history  |awk '{print $3}' |awk 'BEGIN {FS="|"} {print $1}'|sort|uniq -c |sort -rn |head -10

##### Top 10 commands used

   history  | awk '{print $2}' | awk 'BEGIN {FS="|"}{print $1}' | sort | uniq -c | sort -nr | head

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### Hide what you've done so far

   history  -c && clear && printf "\e[3J"

##### Ten most often used commands

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### Create a shell script from history of commands

   history  | awk '{$1=""; print $0}' > install_pkg.sh

##### List of commands you use most often

   history  | awk '{a[$'$(echo "1 2 $HISTTIMEFORMAT" | wc -w)']++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### Ranking of the most frequently used commands

   history  | awk '{print $2}' | awk 'BEGIN {FS="|"}{print $1}' | sort | uniq -c | sort -n | tail | sort -nr

##### Ranking of the most frequently used commands

   history  | awk '{print $2,$3}' | sed s/sudo// | awk '{print $1}' | awk 'BEGIN {FS="|"}{print $1}' | sort | uniq -c | sort -n | tail | sort -nr

##### Finding commands to create alias for

   history  | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n10

##### display bash history without line numbers

   history  | perl -pe "~s/ *[0-9]+ *//"

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### Easily find an old command you run

   history  | tail -100 | grep cmd

##### List of commands you use most often *suppressing sudo*

   history  | awk '{if ($2 == "sudo") a[$3]++; else a[$2]++}END{for(i in a){print a[i] " " i}}' |  sort -rn | head

##### statistic of the frequnce of your command from your history&#12290;

   history  | awk '{CMD[$4]++;count++;} END { for (a in CMD )print CMD[a] " " CMD[a]/count*100 "% " a }' | sort -nr | nl | column -t | head -n 10

##### display bash history without line numbers

   history  | awk '{$1="";print substr($0,2)}'

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### Rank top 10 most frequently used commands

   history  | awk '{print $2}' | sort | uniq -c | sort -rn | head

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### Rank top 10 most frequently used commands

   history  | cut -c8- | sort | uniq -c | sort -rn | head

##### See most used commands

   history |awk '{print $2}'|awk 'BEGIN {FS="|"} {print $1}'|sort|uniq -c|sort -r

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### Copy history from one terminal to another

   history  -w <switch to another terminal> history -r

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### delete a line from your shell history

   history  -d

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### most used commands in history (comprehensive)

   history  | perl -F"\||<\(|;|\`|\\$\(" -alne 'foreach (@F) { print $1 if /\b((?!do)[a-z]+)\b/i }' | sort | uniq -c | sort -nr | head

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### find the longest command in your history

   history  | perl -lane '$lsize{$_} = scalar(@F); if($longest<$lsize{$_}) { $longest = $lsize{$_}; print "$_"; };' | tail -n1

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### List of commands you use most often

   history  | awk '{print $2}' | sort | uniq -c | sort -rn | head

##### Display top Keywords from history

   history  | awk '{print $2}' | awk 'BEGIN {FS="|"}{print $1}' | sort | uniq -c | sort -n | tail | sort -nr

##### Save history without logout

   history  -a

##### Write on the console without being registered

   history  -d $((HISTCMD-1)) && command_to_run

##### Most used command

   history  | awk '{a[$'$(echo "1 2 $HISTTIMEFORMAT" | wc -w)']++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### Clear current session history (bash)

   history  -c

##### backup your history

   history  > ~/history-save-$(date +%d-%m-%y-%T)

##### Clear your history saved into .bash_history file!

   history  -c

##### Clear your history saved into .bash_history file!

   history  -c && rm -f ~/.bash_history

##### Clear history

   history  -c

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head > /tmp/cmds | gnuplot -persist <(echo 'plot "/tmp/cmds" using 1:xticlabels(2) with boxes')

##### Create a bash script from last n commands

   history  | tail -(n+1) | head -(n) | sed 's/^[0-9 ]\{7\}//' >> ~/script.sh

##### Top 30 History

   history |awk '{print $2}'|sort|uniq -c|sort -rn|head -30|awk '!max{max=$1;}{r="";i=s=100*$1/max;while(i>0)r=r"#";printf "%50s %5d %s %s",$2,$1,r,"\n";}'

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### Clear current session history (bash)

   history  -r

##### Add command to bash history without executing it

   history  -s command

##### &#26368;&#24120;&#20351;&#29992;&#30340;10&#20010;&#21629;&#20196;

   history  |awk '{print $3}' |awk 'BEGIN {FS="|"} {print $1}'|sort|uniq -c |sort -rn |head -10

##### Top 10 commands used

   history  | awk '{print $2}' | awk 'BEGIN {FS="|"}{print $1}' | sort | uniq -c | sort -nr | head

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### Hide what you've done so far

   history  -c && clear && printf "\e[3J"

##### Ten most often used commands

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### Create a shell script from history of commands

   history  | awk '{$1=""; print $0}' > install_pkg.sh

##### List of commands you use most often

   history  | awk '{a[$'$(echo "1 2 $HISTTIMEFORMAT" | wc -w)']++}END{for(i in a){print a[i] " " i}}' | sort -rn | head

##### Ranking of the most frequently used commands

   history  | awk '{print $2}' | awk 'BEGIN {FS="|"}{print $1}' | sort | uniq -c | sort -n | tail | sort -nr

##### Ranking of the most frequently used commands

   history  | awk '{print $2,$3}' | sed s/sudo// | awk '{print $1}' | awk 'BEGIN {FS="|"}{print $1}' | sort | uniq -c | sort -n | tail | sort -nr

##### Finding commands to create alias for

   history  | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n10

##### display bash history without line numbers

   history  | perl -pe "~s/ *[0-9]+ *//"

##### List of commands you use most often

   history  | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head
