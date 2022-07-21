# bind

##### List all bash shortcuts

   bind  -P

##### List all bash shortcuts

   bind  -P

##### create shortcut keys in bash

   bind  -x '"\C-p"':pwd

##### Bind a key with a command

   bind  -x '"\C-l":ls -l'

##### Display all readline binding that use CTRL

   bind  -p | grep -F "\C"

##### ignore hidden directory in bash completion (e.g.  .svn)

   bind  'set match-hidden-files off'

##### Bind a key with a command

   bind  '"\C-l":"ls -l\n"'

##### Direct auto-complete in bash

   bind  '"\t":menu-complete'

##### Create a system overview dashboard on F12 key

   bind  '"\e[24~"':"\"ps -elF;df -h;free -mt;netstat -lnpt;who -a\C-m"""

##### Add sudo with shortcut alt+e in bash

   bind  '"\ee": "\C-asudo \C-e"'

##### Screen enable/disable loggin in all windows

   bind key ^l at "#" log on   bindkey ^o at "#" log off

##### Assign function keys to your frequent commands

   bind  '"<ctrl+v><functionKey>":"command\n"'

##### history autocompletion with arrow keys

   bind  '"\e[A": history-search-backward' && bind '"\e[B": history-search-forward' && bind '"\eOA": history-search-backward' && bind '"\eOB": history-search-forward'

##### expand a program-name into an absolute path on the bash command-line, using ctrl-e

   bind  '"\C-e":"\eb `which \ef`\e\C-e"'

##### Copy Current Command Line to Clipboard

   bind  '"\C-l": "\C-u cat <<EOT | pbcopy \n \C-y \nEOT\n"'

##### Kill all windows in one go in  gnu screen

   bind key ^f at "#" kill

##### Use the last command's output as input to a command without piping and bind to it to a key sequence in bash.

   bind  '"\C-h": "\`fc\ \-s\`"'

##### List all bash shortcuts

   bind  -P | grep -v "is not" | sed -e 's/can be found on/:/' | column -s: -t

##### List all bash shortcuts

   bind  -P

##### create shortcut keys in bash

   bind  -x '"\C-p"':pwd

##### Bind a key with a command

   bind  -x '"\C-l":ls -l'

##### Display all readline binding that use CTRL

   bind  -p | grep -F "\C"

##### ignore hidden directory in bash completion (e.g.  .svn)

   bind  'set match-hidden-files off'

##### Bind a key with a command

   bind  '"\C-l":"ls -l\n"'

##### Direct auto-complete in bash

   bind  '"\t":menu-complete'

##### Create a system overview dashboard on F12 key

   bind  '"\e[24~"':"\"ps -elF;df -h;free -mt;netstat -lnpt;who -a\C-m"""

##### Add sudo with shortcut alt+e in bash

   bind  '"\ee": "\C-asudo \C-e"'

##### Screen enable/disable loggin in all windows

   bind key ^l at "#" log on   bindkey ^o at "#" log off

##### Assign function keys to your frequent commands

   bind  '"<ctrl+v><functionKey>":"command\n"'

##### history autocompletion with arrow keys

   bind  '"\e[A": history-search-backward' && bind '"\e[B": history-search-forward' && bind '"\eOA": history-search-backward' && bind '"\eOB": history-search-forward'

##### expand a program-name into an absolute path on the bash command-line, using ctrl-e

   bind  '"\C-e":"\eb `which \ef`\e\C-e"'

##### Copy Current Command Line to Clipboard

   bind  '"\C-l": "\C-u cat <<EOT | pbcopy \n \C-y \nEOT\n"'

##### Kill all windows in one go in  gnu screen

   bind key ^f at "#" kill
