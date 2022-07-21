# eval

##### Launch command in backgroup or not

   eval  <command> ${INBACK:-&}

##### Get your external IP address with the best commandlinefu.com command

   eval  $(curl -s http://www.commandlinefu.com/commands/matching/external/ZXh0ZXJuYWw=/sort-by-votes/plaintext|sed -n '/^# Get your external IP address$/{n;p;q}')

##### Add some color to ls

   eval  "`dircolors -b`"

##### Let's make screen and ssh-agent friends

   eval  `ssh-agent`; screen

##### Multiple variable assignments from command output in BASH

   eval  $(date +"day=%d; month=%m; year=%y")

##### Create Encrypted WordPress MySQL Backup without any DB details, just the wp-config.php

   eval  $(sed -n "s/^d[^D]*DB_\([NUPH]\)[ASO].*',[^']*'\([^']*\)'.*/_\1='\2'/p" wp-config.php) && mysqldump opt add-drop-table -u$_U -p$_P -h$_H $_N | gpg -er AskApache >`date +%m%d%y-%H%M.$_N.sqls`

##### Find out current working directory of a process

   eval  ls -l /proc/{$(pgrep -d, COMMAND)}/cwd

##### see whats getting written into all of the open logfiles under /var/log

   eval  `lsof +D /var/log|(read;awk '{print "tail -f " $9 " &" }'|sort|uniq)`

##### Update music info with public database data

   eval  echo $(echoprint-codegen "/path/to/file.mp3"| jq ' .[0].metadata | "mp3info -a \"" + .artist + "\" -t \"" + .title + "\" -l \"" + .release + "\" \"" + .filename + "\"" ' ) | bash

##### adb connect to last IP address

   eval  $(history | cut -c 8- | grep "adb connect [0-9]" | tail -1)

##### Overcome Bash's expansion order

   eval  "mkdir test{$(seq -s, 1 10)}"

##### zip all folders separate zip files with named the folder's name.

   eval  `ls -1d * | awk '{print "zip -r "$1".zip "$1";"}'`

##### Let's make screen and ssh-agent friends

   eval  `ssh-agent`; screen

##### Multiple variable assignments from command output in BASH

   eval  $(date +"day=%d; month=%m; year=%y")

##### Create Encrypted WordPress MySQL Backup without any DB details, just the wp-config.php

   eval  $(sed -n "s/^d[^D]*DB_\([NUPH]\)[ASO].*',[^']*'\([^']*\)'.*/_\1='\2'/p" wp-config.php) && mysqldump opt add-drop-table -u$_U -p$_P -h$_H $_N | gpg -er AskApache >`date +%m%d%y-%H%M.$_N.sqls`

##### Find out current working directory of a process

   eval  ls -l /proc/{$(pgrep -d, COMMAND)}/cwd

##### see whats getting written into all of the open logfiles under /var/log

   eval  `lsof +D /var/log|(read;awk '{print "tail -f " $9 " &" }'|sort|uniq)`

##### Update music info with public database data

   eval  echo $(echoprint-codegen "/path/to/file.mp3"| jq ' .[0].metadata | "mp3info -a \"" + .artist + "\" -t \"" + .title + "\" -l \"" + .release + "\" \"" + .filename + "\"" ' ) | bash

##### adb connect to last IP address

   eval  $(history | cut -c 8- | grep "adb connect [0-9]" | tail -1)
