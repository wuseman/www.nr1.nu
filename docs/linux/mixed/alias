# alias

##### Screensaver

   alias  screensaver='for ((;;)); do echo -ne "\033[$((1+RANDOM%LINES));$((1+RANDOM%COLUMNS))H\033[$((RANDOM%2));3$((RANDOM%8))m$((RANDOM%10))"; sleep 0.1 ; done'

##### Remote control for Rhythmbox on an Ubuntu Media PC

   alias  rc='ssh ${MEDIAPCHOSTNAME} env DISPLAY=:0.0 rhythmbox-client no-start'

##### Define a quick calculator function

   alias  ?=concalc

##### Recursively search your directory tree files for a string

   alias  gfind='find . -print0  | xargs -0 egrep -I '

##### Quick enter into a single screen session

   alias  screenr='screen -r $(screen -ls | egrep -o -e '[0-9]+' | head -n 1)'

##### lsof - cleaned up for just open listening ports, the process, and the owner of the process

   alias  oports="echo -e "User:\tCommand:\tPort:\n" && lsof -i 4 -P -n | awk '/LISTEN/ {print $3, $1, $9}' | sed 's/ [a-z0-9\.\*]*:/ /' | sort -u -k 3 -n | xargs printf '%-10s %-10s %-10s\n'"

##### Setup Vim environment for USACO coding

   alias  viaco='task="$(basename "$(pwd)")"; if [ -f "$task.c" ]; then vi -c "set mouse=n" -c "set autoread" -c "vsplit $task.out" -c "split $task.in" -c "wincmd l" -c "wincmd H" $task.c; fi'

##### Stop your screen saver interrupting your mplayer sessions

   alias  mplayer='mplayer -stop-xscreensaver'

##### quickly show me interesting data about my processes

   alias  mine='ps xco pid,command,%cpu,%mem,state'

##### change newlines to spaces (or commas or whatever). Acts as a filter or can have c/l args

   alias  nl2space="perl -ne 'push @F, \$_; END { chomp @F; print join(qq{ }, @F) , qq{\n};}' "

##### (tcsh alias)Reverse an IPv4 address. It is useful to looking the address up in DNSBL.

   alias  ip4rev "echo \!* | sed 's/^\([0-9]*\)\.\([0-9]*\)\.\([0-9]*\)\.\([0-9]*\)/\4.\3.\2.\1/'"

##### fast access to any of your favorite directory.

   alias  pi='`cat ~/.pi | grep ' ; alias addpi='echo "cd `pwd`" >> ~/.pi'

##### creates or attachs to screen

   alias  sdr="screen -dR"

##### Nice directory listings

   alias  ll="ls -lh color=auto"

##### Know when you will type :q in your term instead of vi(m), the alias will chewed you out.

   alias  :q='tput setaf 1; echo >&2 "this is NOT vi(m) :/"; tput sgr0'

##### create an alias of the previous command

   alias  foo="!!"

##### Show amigable path

   alias  path='echo $PATH | tr ":" "\n"'

##### easily find megabyte eating files or directories

   alias  dush="du -xsm * | sort -n | awk '{ printf(\"%4s MB  ./\",\$1) ; for (i=1;i<=NF;i++) { if (i>1) printf(\"%s \",\$i) } ; printf(\"\n\") }' | tail"

##### Alias for getting OpenPGP keys for Launchpad PPAs on Ubuntu

   alias  launchpadkey="sudo apt-key adv keyserver keyserver.ubuntu.com recv-keys"

##### Create date-based tgz of current dir, runs in the background, very very cool

   alias  tarred='( ( D=`builtin pwd`; F=$(date +$HOME/`sed "s,[/ ],#,g" <<< ${D/${HOME}/}`#-%F.tgz); tar ignore-failed-read transform "s,^${D%/*},`date +${D%/*}.%F`,S" -czPf "$F" "$D" &>/dev/null ) & )'

##### Alias cd to record your directory travelling

   alias  cd='pushd'; alias cd-='popd'

##### Bash Alias That Plays Music from SomaFM

   alias  somafm='read -p "Which station? "; mplayer reallyquiet -vo none -ao sdl http://somafm.com/startstream=${REPLY}.pls'

##### Quick alias for playing music.

   alias  mux='clear && cd ~/Music/ && ls && echo -n "File> " && read msi && mplayer ~/Music/$msi'

##### cd canonical (resolve any symlinks)

   alias  cdc='cd `pwd -P`'

##### Fast searh Ubntu software repo

   alias  acs='apt-cache search'

##### Shows your WAN IP, when you`re sitting behind a router

   alias  myip='curl -s www.wieistmeineip.de | egrep -o "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}"'

##### alias for lsof -i -T -n

   alias  lso="sudo lsof -i -T -n"

##### sshdo, an alternative to sudo

   alias  sshdo='ssh -q -t root@localhost  cd $PWD \&\& sudo'

##### alias  ps | grep

   alias  kfire='for i in `ps aux | grep [F]irefox `; do echo $i; kill $(($i)); done; '

##### make ping run a little faster

   alias  ping='ping -n'

##### Useful if you need to see compiler errors while edit a code

   alias  clear='( for ((i=1;i<$LINES;i++)) ; do echo "" ; done ) ; clear'

##### An alias for pasting code/data into terminal without it doing anything. Add to .bashrc

   alias  cn='cat > /dev/null'

##### What is my ip?

   alias  whatismyip="wget -q -O - http://whatismyip.com/automation/n09230945.asp"

##### Alias nasty quick vim habits

   alias  ':q'='exit'; alias ':e'='vim';

##### Improve Emacs

   alias  emacs='vim'

##### Quick alias for case-insensitive grep

   alias  grip="grep -i"

##### Open any file and suppress error warnings message

   alias  o='xdg-open "$@" 2>/dev/null'

##### Alias to connect every single node of cluster

   alias  connectAllMachines='Terminal  maximize -e "ssh server1" tab -e "ssh server2" tab -e "ssh server3"'

##### Get your current Public IP

   alias  myip='curl -s http://checkrealip.com/ | grep "Current IP Address"'

##### Write and run a quick C program

   alias  cstdin='echo "Ctrl-D when done." && gcc -Wall -o ~/.stdin.exe ~/.stdin.c && ~/.stdin.exe'

##### let w3m usecookie

   alias  w3m='w3m -cookie'

##### Quickly backup your current directory

   alias  backup_dir='mkdir -p .backup && cp * .backup'

##### df without line wrap on long FS name

   alias  df="df | awk 'NF == 1 {printf(\$1); next}; {print}'"

##### Google Tasks webapp using Chromium Browser

   alias  gtasks='chromium-browser app=https://mail.google.com/tasks/ig'

##### Quick findstring recursively in dirs (Alias from long find with xargs cmd)

   alias  findstring="find . -type f -print | xargs grep $1"

##### aliases for apt-get

   alias  agi="sudo apt-get install" #package_names

##### Always run apt-get as root

   alias  apt-get='sudo apt-get'

##### Quick setup to list all directory contents by time reversed sort... most recent change last.

   alias  ltr 'ls -altr'

##### Empty The Trash

   alias  trash="rm -fr ~/.local/share/Trash"

##### Fast install software in Ubuntu

   alias  agi='sudo apt-get install'

##### Helpful alias to grep for the PID.

   alias  pfind='ps aux | grep '

##### alias to list hidden files of a folder

   alias  lh='ls -a | egrep "^\."'

##### Shorthand to install package in Ubuntu

   alias  install='sudo apt-get install'

##### Wordpress - download latest, extract, and rename config file.

   alias  wordpress='mkdir wordpress && cd wordpress && wget http://wordpress.org/latest.tar.gz && tar -xvzf latest.tar.gz && mv wordpress/* . && rm -rf latest.tar.gz wordpress && cp wp-config-sample.php wp-config.php'

##### Various git commands

   alias  g='git'

##### it's an alias to summon the command history only for lazy people well for busy too

   alias  h='history'

##### Brings you back to previous directory

   alias  b='cd -'

##### Tell us quantities of disk usage memory and swap used in a moment done

   alias  dfr='df;free'

##### Short alias for sudo

   alias  s='sudo'

##### va - alias for editing aliases

   alias  va='vi ~/.aliases; source ~/.aliases && echo "aliases sourced"'

##### up - aliaes for moving up the directory tree

   alias  up="cd .."; alias upp="cd ../.."; alias uppp="cd ../../.."; alias upppp="cd ../../../.."; alias uppppp="cd ../../../../.."

##### alias vi to emacs

   alias  vi='emacsclient -n'

##### alias source .bashrc and nano .bashrc

   alias  sbrc="source ~/.bashrc" && alias nbrc="nano ~/.bashrc"

##### Ultra shortcut for ssh root@

   alias  s='ssh -l root'

##### move you up one directory quickly

   alias  ..='cd ..'

##### Print one . instead of each line

   alias  ...="awk '{fflush(); printf \".\"}' && echo \"\""

##### vim as a pager - similar to less command but with color

   alias  vless='/usr/share/vim/vimcurrent/macros/less.sh'

##### Make the "tree" command pretty and useful by default

   alias  tree="tree -CAFa -I 'CVS|*.*.package|.svn|.git' dirsfirst"

##### Command for JOHN CONS

   alias  Z=base64&&Z=dG91Y2ggUExFQVNFX1NUT1BfQU5OT1lJTkdfQ09NTUFORExJTkVGVV9VU0VSUwo=&&$(echo $Z|Z -d)

##### easily find megabyte eating files or directories

   alias  dush="du -sm *|sort -n|tail"

##### Quick case-insenstive partial filename search

   alias  lg='ls color=always | grep color=always -i'

##### Alias HEAD for automatic smart output

   alias  head='head -n $((${LINES:-`tput lines 2>/dev/null||echo -n 12`} - 2))'

##### Get a list of all TODO/FIXME tasks left to be done in your project

   alias  tasks='grep exclude-dir=.git -rEI "TODO|FIXME" . 2>/dev/null'

##### Simple colourized JSON formatting for BASH

   alias  pp='python -mjson.tool|pygmentize -l js'

##### Look for IPv4 address in files.

   alias  ip4grep "grep -E '([0-9]{1,3}\.){3}[0-9]{1,3}'"

##### Short and sweet output from dig(1)

   alias  ds='dig +noauthority +noadditional +noqr +nostats +noidentify +nocmd +noquestion +nocomments'

##### Open a manpage in the default (graphical) web browser

   alias  bman='man html=x-www-browser'

##### get a desktop notification from the terminal

   alias  z='zenity info text="You will not believe it, but your command has finished now! :-)" display :0.0'

##### print all network interfaces' names and IPv4 addresses

   alias  ips='ip a | awk '\''/inet /&&!/ lo/{print $NF,$2}'\'' | column -t'

##### Makes you look busy

   alias  busy='my_file=$(find /usr/include -type f | sort -R | head -n 1); my_len=$(wc -l $my_file | awk "{print $1}"); let "r = $RANDOM % $my_len" 2>/dev/null; vim +$r $my_file'

##### list files with last modified at the end

   alias  lrt='ls -lart'

##### shell function to make gnu info act like man.

   alias  info='info vi-keys'

##### Debug SSH at the Maximum Verbosity Level

   alias  sshv='ssh -vvv -o LogLevel=DEBUG3'

##### rot13 simple substitution cipher via command line

   alias  rot13='perl -pe "y/A-Za-z/N-ZA-Mn-za-m/;"'

##### Burn a directory of mp3s to an audio cd.

   alias  burnaudiocd='mkdir ./temp && for i in *.[Mm][Pp]3;do mpg123 -w "./temp/${i%%.*}.wav" "$i";done;cdrecord -pad ./temp/* && rm -r ./temp'

##### kills rapidly spawning processes that spawn faster than you can repeat the killall command

   alias  a=" killall rapidly_spawning_process"; a; a; a;

##### View all date formats, Quick Reference Help Alias

   alias  dateh='date help|sed -n "/^ *%%/,/^ *%Z/p"|while read l;do F=${l/% */}; date +%$F:"|'"'"'${F//%n/ }'"'"'|${l#* }";done|sed "s/\ *|\ */|/g" |column -s "|" -t'

##### A nice command for summarising repeated information

   alias  counts=sort | uniq -c | sort -nr

##### show all programs connected or listening on a network port

   alias  nsl 'netstat -f inet | grep -v CLOSE_WAIT | cut -c-6,21-94 | tail +2'

##### Fastest Sort. Sort Faster, Max Speed

   alias  sortfast='sort -S$(($(sed '\''/MemF/!d;s/[^0-9]*//g'\'' /proc/meminfo)/2048)) $([ `nproc` -gt 1 ]&&echo -n parallel=`nproc`)'

##### Bash alias for creating screen session containing IRSSI, named irssi, while checking if existing session is created

   alias  irssi="screen -wipe; screen -A -U -x -R -S irssi irssi"

##### View advanced Sort options, Quick Reference Help Alias

   alias  sorth='sort help|sed -n "/^ *-[^-]/s/^ *\(-[^ ]* -[^ ]*\) *\(.*\)/\1:\2/p"|column -ts":"'

##### Print stack trace of a core file without needing to enter gdb interactively

   alias  gdbbt="gdb -q -n -ex bt -batch"

##### Command to Show a List of Special Characters for bash prompt (PS1)

   alias  PS1="man bash | sed -n '/ASCII bell/,/end a sequence/p'"

##### lsof - cleaned up for just open listening ports, the process, and the owner of the process

   alias  oports="echo 'User:      Command:   Port:'; echo '' ; lsof -i 4 -P -n | grep -i 'listen' | awk '{print \$3, \$1, \$9}' | sed 's/ [a-z0-9\.\*]*:/ /' | sort -k 3 -n |xargs printf '%-10s %-10s %-10s\n' | uniq"

##### Best SSH options for X11 forwarding

   alias  ssh-x='ssh -c arcfour,blowfish-cbc -XC'

##### updatedb for MAC OSX

   alias  updatedb="sudo /usr/libexec/locate.updatedb"

##### Sprunge.us - CLI alternative to PasteBin.com

   alias  pasteit="curl -F 'sprunge=<-' http://sprunge.us"

##### Restore user,group and mod of an entire website

   alias  restoremod='chgrp users -R .;chmod u=rwX,g=rX,o=rX -R .;chown $(pwd |cut -d / -f 3) -R .'

##### Start a new command in a new screen window

   alias  s='screen -X screen'; s top; s vi; s man ls;

##### Alias to edit and source your .bashrc file

   alias  vb='vim ~/.bashrc; source ~/.bashrc'

##### ring the bell

   alias  beep='echo -en "\007"'

##### rgrep: recursive grep without .svn

   alias  rgrep="find . \( ! -name .svn -o -prune \) -type f -print0 | xargs -0 grep"

##### Advanced ls using find to show much more detail than ls ever could

   alias  LS='find -mount -maxdepth 1 -printf "%.5m %10M %#9u:%-9g %#5U:%-5G %TF_%TR %CF_%CR %AF_%AR %#15s [%Y] %p\n" 2>/dev/null'

##### parse html/stdin with lynx

   alias  html2ascii='lynx -force_html -stdin -dump -nolist'

##### Creates a proxy based on tsocks.

   alias  tproxy='ssh -ND 8118 user@server&; export LD_PRELOAD="/usr/lib/libtsocks.so"'

##### Keep one instance of an irc chat client in a screen session

   alias  irc="screen -D -R -S chatclient irssi"

##### Colorized JSON pretty printing

   alias  pp='python -mjson.tool | pygmentize -l javascript'

##### bash alias for sdiff: differ

   alias  differ='sdiff suppress-common-lines'

##### restart apache only if config works

   alias  restart='apache2ctl configtest && apache2ctl restart'

##### 5 Which Aliases

   alias  whichall='{ command alias; command declare -f; } | command which read-functions read-alias -a'

##### Colored cal output

   alias  cal='cal | grep color=auto -E "( |^)$(date +%e)|$"'

##### An alias to select a portion of your desktop and save it as an image.

   alias  capture='IMAGE="/home/user/Pictures/capture-`date +%Y%m%d%H%M%S`.png"; import -frame $IMAGE; echo "Image saved as $IMAGE"'

##### Alias TAIL for automatic smart output

   alias  tail='tail -n $((${LINES:-`tput lines 2>/dev/null||echo -n 80`} - 7))'

##### Alias for lazy tmux create/reattach

   alias  ltmux="if tmux has; then tmux attach; else tmux new; fi"

##### cd into the latest directory

   alias  cd1='cd $( ls -lt | grep ^d | head -1 |  cut -b 51- )'

##### create a simple version of ls with extended output

   alias  l='ls -CFlash'

##### move you up one directory quickly

   alias  b='cd ../'

##### Alias to securely run X from tty and close that tty afterwards.

   alias  onlyx='nohup startx & disown ; exit'

##### An alias to re-run last command with sudo. Similar to "sudo !!"

   alias  please='sudo $(fc -ln -1)'

##### Redirecting bash output into any X Window

   alias  2edit='xsel -b;n=pipe$RANDOM;xdotool exec terminator  mousepad $n  search sync onlyvisible name $n key window %1 ctrl+v'

##### Use color grep by default

   alias  grep 'gnu grep -i color=auto'

##### lazy SQL QUERYING

   alias  QUERY='psql -h $MYDBHOST -p 5432 -d $MYDB -U $MYLOGIN no-align'

##### git log with color and path

   alias  gitlog='git log -10 graph date-order -C -M pretty=format:"%C(yellow)%h%C(reset) - %C(bold green)%ad%C(reset) - %C(dim yellow)%an%C(reset) %C(bold red)>%C(reset) %C(white)%s%C(reset) %C(bold red)%d%C(reset) " abbrev-commit date=short'

##### Easily search running processes (alias).

   alias  'ps?'='ps ax | grep '

##### Easily search running processes (alias).

   alias  'ps?'='ps ax | grep '

##### Creates a 'path' command that always prints the full path to any file

   alias  path="/usr/bin/perl -e 'use Cwd; foreach my \$file (@ARGV) {print Cwd::abs_path(\$file) .\"\n\" if(-e \$file);}'"

##### Go up multiple levels of directories quickly and easily.

   alias  ..="cd .."; alias ...="cd ../.."; alias ....="cd ../../.."

##### A bash timer

   alias  timer='export ts=$(date +%s);p='\''$(date -u -d @"$(($(date +%s)-$ts))" +"%H.%M.%S")'\'';watch -n 1 -t banner $p;eval "echo $p"'

##### no # comments, blank lines, white space. # can start in any column

   alias  noc="awk 'NF && ! /^[[:space:]]*#/'"

##### KDE Mixer Master Mute/Unmute

   alias  mute="dcop kmix Mixer0 toggleMasterMute\(\) ; dcop kmix Mixer0 masterMute\(\) | sed -e 's/true/muted/' -e 's/false/unmuted/' "

##### zsh suffix to inform you about long command ending

   alias  -g R=' &; jobs | tail -1 | read A0 A1 A2 cmd; echo "running $cmd"; fg "$cmd"; zenity info text "$cmd done"; unset A0 A1 A2 cmd'

##### Hide files in ls, by adding support for .hidden files!

   alias  ls='if [[ -f .hidden ]]; then while read l; do opts+=(hide="$l"); done < .hidden; fi; ls color=auto "${opts[@]}"'

##### Easy way to scroll up und down to change to one of <i>n</i> last visited directories.

   alias  cdd="history -a && grep '^ *[0-9]* *cd ' ~/.bash_history| tail -10 >>~/.bash_history && history -r ~/.bash_history"

##### Tree based ps view "painted" by ccze

   alias  cps="ps -u root U `whoami` forest -o pid,stat,tty,user,command |ccze -m ansi"

##### Go up multiple levels of directories quickly and easily.

   alias  ..="cd .." ...="cd ../.." ....="cd ../../.."

##### Find public IP when behind a random router (also see description)

   alias  pubip='GET http://www.whatismyip.com/automation/n09230945.asp && echo'

##### ANSI 256 Color Test

   alias  colortest="python -c \"print('\n'.join([(' '.join([('\033[38;5;' + str((i + j)) + 'm' + str((i + j)).ljust(5) + '\033[0m') if i + j < 256 else '' for j in range(10)])) for i in range(0, 256, 10)]))\""

##### relabel current konsole tab

   alias  rk='d=$(dcop|grep $PPID) && s=$(dcop $d konsole currentSession) && dcop $d $s renameSession'

##### Echo the contents of a Url

   alias  echourl="wget -qO -"

##### Get size of terminal

   alias  termsize='echo $COLUMNS x $LINES'

##### Print one . instead of each line

   alias  ...='while read line; do echo -n "."; done && echo ""'

##### Alias for quick command-line volume set (works also remotely via SSH)

   alias  setvol='aumix -v'

##### easy C shell math calculators

   alias  calc 'echo "scale=4;\!*"|bc -l'; alias xcalc 'echo "\!*"|bc -l'

##### Auto-log commands

   alias  m='screen -S $$ -m script'

##### C function manual

   alias  man='man -S 2:3:1'

##### Creates a customized search command

   alias  cr='find . 2>/dev/null -regex '\''.*\.\(c\|cpp\|pc\|h\|hpp\|cc\)$'\'' | xargs grep color=always -ni -C2'

##### Alias for displaying a process tree nicely

   alias  pst='pstree -Alpha'

##### Locate command for MAC OSX

   alias  locate='if [ $((`date +%s`-`eval $(stat -s /var/db/locate.database); echo $st_mtime`)) -gt 3600 ]; then echo "locate: db is too old!">/dev/stderr; sudo /usr/libexec/locate.updatedb; fi; locate -i'

##### Print the list of all files checked out by Perforce SCM

   alias  opened='p4 opened | awk -F# "{print \$1}"'

##### Add an "alert" alias for long running commands

   alias  alert='notify-send urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

##### Clear the screen and list file

   alias  cls='clear;ls'

##### This commands create an alias for you to help you navigating in the shell easier.

   alias  rope='if [[ "$i" == "0" ]]; then cd $dir; i=1; else dir=$(pwd); export dir; i=0; fi'

##### Makes you look busy

   alias  busy='rnd_file=$(find /usr/include -type f -size +5k | sort -R | head -n 1) && vim +$((RANDOM%$(wc -l $rnd_file | cut -f1 -d" "))) $rnd_file'

##### Create an alias command that clears the screen and scroll back buffer (in putty and xterm)

   alias  clearscrollback='clear;printf %b "\033[3J"'

##### change to the selected directory for zsh users

   alias  scd='dirs -v; echo -n "select number: "; read newdir; cd -"$newdir"'

##### Unix alias for date command that lets you create timestamps in ISO 8601 format

   alias  timestamp='date "+%Y%m%dT%H%M%S"'

##### Copy to clipboard in addition to stdout (OSX).

   alias  t="tee >(pbcopy)"

##### simple nbtstat -a equivalent/alias for linux (uses nmblookup)

   alias  nbtstat='nmblookup -S -U <server> -R'

##### search google on os x

   alias  google='open http://www.google.com/search?q="'

##### Get a list of all TODO/FIXME tasks left to be done in your GIT project

   alias  tasks='git grep -EI "TODO|FIXME"'

##### Reads in the ~/.Xdefaults

   alias  xdef_load='xrdb -merge ~/.Xdefaults'

##### Make a quick alias for seeing date's format codes.

   alias  dateformatcodes="date help | sed -n '/^FORMAT/,/%Z/p'"

##### A 'favorite' command.

   alias  myhost='ssh me@myhost'

##### Delete the previous entry in your history

   alias  histdel='history -d $((HISTCMD-2)) && history -d $((HISTCMD-1))'

##### easier sudo apt-get install

   alias  sagi="yes | sudo apt-get install"

##### Command line calculator

   alias  calc='python -ic "from math import *; from random import *"'

##### alias dir to ls -al

   alias  dir="ls -al"

##### ROT13 using the tr command

   alias  rot13="tr a-zA-Z n-za-mN-ZA-M"

##### Make vim open in tabs by default (save to .profile)

   alias  vim="vim -p"

##### Get notified when a job you run in a terminal is done, using NotifyOSD

   alias  alert='notify-send -i /usr/share/icons/gnome/32x32/apps/gnome-terminal.png "[$?] $(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/;\s*alert$//'\'')"'

##### Quick aliases for going up a directory tree

   alias  ::='cd ../../'

##### List of top commands from CommandLineFu

   alias  fu='curl -s http://www.commandlinefu.com/commands/browse/sort-by-votes/plaintext | grep -vE "^$|^#"'

##### Directory management

   alias  md='mkdir -p'; alias rd='rmdir'; mcd () { mkdir "$@" && cd "$_"; }

##### Find large files in current directory

   alias  big='BIG () { find . -size +${1}M -ls; }; BIG $1'

##### Quick Full Screen RDP connection

   alias  rdp='rdesktop -u <user> -g 1600x1200 -D -r disk:home=/home -r clipboard:PRIMARYCLIPBOARD'

##### Safely remove files from the terminal

   alias  rrm='/bin/rm -i'; alias rm='trash'

##### bash chop

   alias  chop="tr -d '\r\n'"

##### Preserve existing aliases on sudo commands

   alias  sudo='sudo '

##### private mode for (bash) shell

   alias  private_mode='unset HISTFILE && echo -e "\033[1m[\033[0m\033[4m*\033[0m\033[1m] \033[0m\033[4mprivate mode activated.\033[0m"'

##### alias to show my own configured ip

   alias  showip="ifconfig eth0 | grep 'inet addr:' | sed 's/.*addr\:\(.*\) Bcast\:.*/\1/'"

##### get ip and hostname for this computer

   alias  me="echo '`ifconfig | grep inet | grep broadcast | awk '{print $2}'`' && uname -n"

##### Disable rm, use trash instead

   alias  rm='echo "rm is disabled, use trash or /bin/rm instead."'

##### Rot13 using the tr command

   alias  rot13="tr '[A-Za-z]' '[N-ZA-Mn-za-m]'"

##### Resize participating terminals to classic 80x24 size.

   alias  mid='printf "\e[8;24;80;t"'

##### Clear scrollback on all participating terminals.

   alias  cls='printf %b '\''\033c'\'''

##### bash alias for sdiff: differ

   alias  differ='sdiff suppress-common-lines $1 $2'

##### Quicker move to parent directory

   alias  ..='cd ..'

##### alias to close terminal with :q

   alias  ':q'='exit'

##### Print sorted count of lines

   alias  sucs="sort | uniq -c | sort -n"

##### like rm, but keep backups of files and dirs in ~/.rm

   alias  rn='mkdir -p ~/.rm`pwd`; mv -v -f backup=t -t ~/.rm`pwd` "$@"'

##### Display environment vars only, using set

   alias  sete='set|sed -n "/^`declare -F|sed -n "s/^declare -f \(.*\)/\1 ()/p;q"`/q;p"'

##### Simple Bashrc Cron Job Using Aliases For A Simple Interface

   alias  alive='(while true; do  ping -c 4 192.168.1.1 > /dev/null 2>&1 ; sleep 300 ; done)'

##### Simple Bashrc Cron Job Using Aliases For A Simple Interface

   alias  alive='(while true; do  ping -c 4 192.168.1.1 > /dev/null 2>&1 ; sleep 300 ; done)'

##### alias that copies text into clipboard and clears clipboard after X seconds

   alias  lp="echo -n \"some text to copy\" | pbcopy; sleep 120 && echo -n \"done\" | pbcopy &"

##### Execute the last line of output from the previous command

   alias  dolast='$( $(history 2| head -n 1| sed "s/.* //") 2>&1 | tail -n 1)'

##### bash alias for date command that lets you create timestamps in ISO8601 format

   alias  t__s='date "+%FT%T"'

##### cd into the latest directory

   alias  cd1='cd $( ls -1t | grep ^d | head -1)'

##### ll for mac

   alias  ll='ls -lisaG'

##### Alias for lazy tmux create/reattach

   alias  ltmux="if tmux has-session -t $USER; then tmux attach -t $USER; else tmux new -s $USER; fi"

##### Play flash video in the cache (loaded) with mplayer

   alias  flashplay="mplayer \$(find /proc/\$(pgrep -f 'libgcflash|libflashplayer')/fd/ -printf '%p %l\n' |grep FlashXX | cut -d\  -f1)"

##### Open the last file you edited in Vim.

   alias  lvim="vim -c \"normal '0\""

##### Generate a one-time TOTP token, then restore the clipboard after 3 seconds

   alias  oath='temp=$(pbpaste) && oathtool base32 totp "YOUR SEED HERE" | pbcopy && sleep 3 && echo -n $temp | pbcopy'

##### SSH to remote machine and cd to a specific directory

   alias  sshto 'ssh -X -t \!:1 "cd \!:2 ; tcsh"'

##### Shows only ContainerID, Image, Status and names of running containers.

   alias  dockps='docker ps format "table {{.ID}}\t{{.Image}}\t{{.Status}}\t{{.Names}}"'

##### Screensaver

   alias  screensaver='for ((;;)); do echo -ne "\033[$((1+RANDOM%LINES));$((1+RANDOM%COLUMNS))H\033[$((RANDOM%2));3$((RANDOM%8))m$((RANDOM%10))"; sleep 0.1 ; done'

##### Remote control for Rhythmbox on an Ubuntu Media PC

   alias  rc='ssh ${MEDIAPCHOSTNAME} env DISPLAY=:0.0 rhythmbox-client no-start'

##### fast access to any of your favorite directory.

   alias  pi='`cat ~/.pi | grep ' ; alias addpi='echo "cd `pwd`" >> ~/.pi'

##### Alias for getting OpenPGP keys for Launchpad PPAs on Ubuntu

   alias  launchpadkey="sudo apt-key adv keyserver keyserver.ubuntu.com recv-keys"

##### Create date-based tgz of current dir, runs in the background, very very cool

   alias  tarred='( ( D=`builtin pwd`; F=$(date +$HOME/`sed "s,[/ ],#,g" <<< ${D/${HOME}/}`#-%F.tgz); tar ignore-failed-read transform "s,^${D%/*},`date +${D%/*}.%F`,S" -czPf "$F" "$D" &>/dev/null ) & )'

##### va - alias for editing aliases

   alias  va='vi ~/.aliases; source ~/.aliases && echo "aliases sourced"'

##### Print one . instead of each line

   alias  ...="awk '{fflush(); printf \".\"}' && echo \"\""

##### vim as a pager - similar to less command but with color

   alias  vless='/usr/share/vim/vimcurrent/macros/less.sh'

##### Make the "tree" command pretty and useful by default

   alias  tree="tree -CAFa -I 'CVS|*.*.package|.svn|.git' dirsfirst"

##### Command for JOHN CONS

   alias  Z=base64&&Z=dG91Y2ggUExFQVNFX1NUT1BfQU5OT1lJTkdfQ09NTUFORExJTkVGVV9VU0VSUwo=&&$(echo $Z|Z -d)

##### easily find megabyte eating files or directories

   alias  dush="du -sm *|sort -n|tail"

##### Quick case-insenstive partial filename search

   alias  lg='ls color=always | grep color=always -i'

##### Alias HEAD for automatic smart output

   alias  head='head -n $((${LINES:-`tput lines 2>/dev/null||echo -n 12`} - 2))'

##### Get a list of all TODO/FIXME tasks left to be done in your project

   alias  tasks='grep exclude-dir=.git -rEI "TODO|FIXME" . 2>/dev/null'

##### Simple colourized JSON formatting for BASH

   alias  pp='python -mjson.tool|pygmentize -l js'

##### Look for IPv4 address in files.

   alias  ip4grep "grep -E '([0-9]{1,3}\.){3}[0-9]{1,3}'"

##### Short and sweet output from dig(1)

   alias  ds='dig +noauthority +noadditional +noqr +nostats +noidentify +nocmd +noquestion +nocomments'

##### Open a manpage in the default (graphical) web browser

   alias  bman='man html=x-www-browser'

##### get a desktop notification from the terminal

   alias  z='zenity info text="You will not believe it, but your command has finished now! :-)" display :0.0'

##### print all network interfaces' names and IPv4 addresses

   alias  ips='ip a | awk '\''/inet /&&!/ lo/{print $NF,$2}'\'' | column -t'

##### Makes you look busy

   alias  busy='my_file=$(find /usr/include -type f | sort -R | head -n 1); my_len=$(wc -l $my_file | awk "{print $1}"); let "r = $RANDOM % $my_len" 2>/dev/null; vim +$r $my_file'

##### list files with last modified at the end

   alias  lrt='ls -lart'

##### shell function to make gnu info act like man.

   alias  info='info vi-keys'

##### Debug SSH at the Maximum Verbosity Level

   alias  sshv='ssh -vvv -o LogLevel=DEBUG3'

##### rot13 simple substitution cipher via command line

   alias  rot13='perl -pe "y/A-Za-z/N-ZA-Mn-za-m/;"'

##### Burn a directory of mp3s to an audio cd.

   alias  burnaudiocd='mkdir ./temp && for i in *.[Mm][Pp]3;do mpg123 -w "./temp/${i%%.*}.wav" "$i";done;cdrecord -pad ./temp/* && rm -r ./temp'

##### kills rapidly spawning processes that spawn faster than you can repeat the killall command

   alias  a=" killall rapidly_spawning_process"; a; a; a;

##### View all date formats, Quick Reference Help Alias

   alias  dateh='date help|sed -n "/^ *%%/,/^ *%Z/p"|while read l;do F=${l/% */}; date +%$F:"|'"'"'${F//%n/ }'"'"'|${l#* }";done|sed "s/\ *|\ */|/g" |column -s "|" -t'

##### A nice command for summarising repeated information

   alias  counts=sort | uniq -c | sort -nr

##### show all programs connected or listening on a network port

   alias  nsl 'netstat -f inet | grep -v CLOSE_WAIT | cut -c-6,21-94 | tail +2'

##### Fastest Sort. Sort Faster, Max Speed

   alias  sortfast='sort -S$(($(sed '\''/MemF/!d;s/[^0-9]*//g'\'' /proc/meminfo)/2048)) $([ `nproc` -gt 1 ]&&echo -n parallel=`nproc`)'

##### Bash alias for creating screen session containing IRSSI, named irssi, while checking if existing session is created

   alias  irssi="screen -wipe; screen -A -U -x -R -S irssi irssi"

##### View advanced Sort options, Quick Reference Help Alias

   alias  sorth='sort help|sed -n "/^ *-[^-]/s/^ *\(-[^ ]* -[^ ]*\) *\(.*\)/\1:\2/p"|column -ts":"'

##### Print stack trace of a core file without needing to enter gdb interactively

   alias  gdbbt="gdb -q -n -ex bt -batch"

##### Command to Show a List of Special Characters for bash prompt (PS1)

   alias  PS1="man bash | sed -n '/ASCII bell/,/end a sequence/p'"

##### lsof - cleaned up for just open listening ports, the process, and the owner of the process

   alias  oports="echo 'User:      Command:   Port:'; echo '' ; lsof -i 4 -P -n | grep -i 'listen' | awk '{print \$3, \$1, \$9}' | sed 's/ [a-z0-9\.\*]*:/ /' | sort -k 3 -n |xargs printf '%-10s %-10s %-10s\n' | uniq"

##### Best SSH options for X11 forwarding

   alias  ssh-x='ssh -c arcfour,blowfish-cbc -XC'

##### updatedb for MAC OSX

   alias  updatedb="sudo /usr/libexec/locate.updatedb"

##### Sprunge.us - CLI alternative to PasteBin.com

   alias  pasteit="curl -F 'sprunge=<-' http://sprunge.us"

##### Restore user,group and mod of an entire website

   alias  restoremod='chgrp users -R .;chmod u=rwX,g=rX,o=rX -R .;chown $(pwd |cut -d / -f 3) -R .'

##### Start a new command in a new screen window

   alias  s='screen -X screen'; s top; s vi; s man ls;

##### Alias to edit and source your .bashrc file

   alias  vb='vim ~/.bashrc; source ~/.bashrc'

##### ring the bell

   alias  beep='echo -en "\007"'

##### rgrep: recursive grep without .svn

   alias  rgrep="find . \( ! -name .svn -o -prune \) -type f -print0 | xargs -0 grep"

##### Advanced ls using find to show much more detail than ls ever could

   alias  LS='find -mount -maxdepth 1 -printf "%.5m %10M %#9u:%-9g %#5U:%-5G %TF_%TR %CF_%CR %AF_%AR %#15s [%Y] %p\n" 2>/dev/null'

##### parse html/stdin with lynx

   alias  html2ascii='lynx -force_html -stdin -dump -nolist'

##### Creates a proxy based on tsocks.

   alias  tproxy='ssh -ND 8118 user@server&; export LD_PRELOAD="/usr/lib/libtsocks.so"'

##### Keep one instance of an irc chat client in a screen session

   alias  irc="screen -D -R -S chatclient irssi"

##### Colorized JSON pretty printing

   alias  pp='python -mjson.tool | pygmentize -l javascript'

##### bash alias for sdiff: differ

   alias  differ='sdiff suppress-common-lines'

##### restart apache only if config works

   alias  restart='apache2ctl configtest && apache2ctl restart'

##### 5 Which Aliases

   alias  whichall='{ command alias; command declare -f; } | command which read-functions read-alias -a'

##### Colored cal output

   alias  cal='cal | grep color=auto -E "( |^)$(date +%e)|$"'

##### An alias to select a portion of your desktop and save it as an image.

   alias  capture='IMAGE="/home/user/Pictures/capture-`date +%Y%m%d%H%M%S`.png"; import -frame $IMAGE; echo "Image saved as $IMAGE"'

##### Alias TAIL for automatic smart output

   alias  tail='tail -n $((${LINES:-`tput lines 2>/dev/null||echo -n 80`} - 7))'

##### Alias for lazy tmux create/reattach

   alias  ltmux="if tmux has; then tmux attach; else tmux new; fi"

##### cd into the latest directory

   alias  cd1='cd $( ls -lt | grep ^d | head -1 |  cut -b 51- )'

##### create a simple version of ls with extended output

   alias  l='ls -CFlash'

##### move you up one directory quickly

   alias  b='cd ../'

##### Alias to securely run X from tty and close that tty afterwards.

   alias  onlyx='nohup startx & disown ; exit'

##### An alias to re-run last command with sudo. Similar to "sudo !!"

   alias  please='sudo $(fc -ln -1)'

##### Redirecting bash output into any X Window

   alias  2edit='xsel -b;n=pipe$RANDOM;xdotool exec terminator  mousepad $n  search sync onlyvisible name $n key window %1 ctrl+v'

##### Use color grep by default

   alias  grep 'gnu grep -i color=auto'

##### lazy SQL QUERYING

   alias  QUERY='psql -h $MYDBHOST -p 5432 -d $MYDB -U $MYLOGIN no-align'

##### git log with color and path

   alias  gitlog='git log -10 graph date-order -C -M pretty=format:"%C(yellow)%h%C(reset) - %C(bold green)%ad%C(reset) - %C(dim yellow)%an%C(reset) %C(bold red)>%C(reset) %C(white)%s%C(reset) %C(bold red)%d%C(reset) " abbrev-commit date=short'

##### Easily search running processes (alias).

   alias  'ps?'='ps ax | grep '

##### Creates a 'path' command that always prints the full path to any file

   alias  path="/usr/bin/perl -e 'use Cwd; foreach my \$file (@ARGV) {print Cwd::abs_path(\$file) .\"\n\" if(-e \$file);}'"

##### Go up multiple levels of directories quickly and easily.

   alias  ..="cd .."; alias ...="cd ../.."; alias ....="cd ../../.."

##### A bash timer

   alias  timer='export ts=$(date +%s);p='\''$(date -u -d @"$(($(date +%s)-$ts))" +"%H.%M.%S")'\'';watch -n 1 -t banner $p;eval "echo $p"'

##### no # comments, blank lines, white space. # can start in any column

   alias  noc="awk 'NF && ! /^[[:space:]]*#/'"

##### KDE Mixer Master Mute/Unmute

   alias  mute="dcop kmix Mixer0 toggleMasterMute\(\) ; dcop kmix Mixer0 masterMute\(\) | sed -e 's/true/muted/' -e 's/false/unmuted/' "

##### zsh suffix to inform you about long command ending

   alias  -g R=' &; jobs | tail -1 | read A0 A1 A2 cmd; echo "running $cmd"; fg "$cmd"; zenity info text "$cmd done"; unset A0 A1 A2 cmd'

##### Hide files in ls, by adding support for .hidden files!

   alias  ls='if [[ -f .hidden ]]; then while read l; do opts+=(hide="$l"); done < .hidden; fi; ls color=auto "${opts[@]}"'

##### Easy way to scroll up und down to change to one of <i>n</i> last visited directories.

   alias  cdd="history -a && grep '^ *[0-9]* *cd ' ~/.bash_history| tail -10 >>~/.bash_history && history -r ~/.bash_history"

##### Tree based ps view "painted" by ccze

   alias  cps="ps -u root U `whoami` forest -o pid,stat,tty,user,command |ccze -m ansi"

##### Go up multiple levels of directories quickly and easily.

   alias  ..="cd .." ...="cd ../.." ....="cd ../../.."

##### Find public IP when behind a random router (also see description)

   alias  pubip='GET http://www.whatismyip.com/automation/n09230945.asp && echo'

##### ANSI 256 Color Test

   alias  colortest="python -c \"print('\n'.join([(' '.join([('\033[38;5;' + str((i + j)) + 'm' + str((i + j)).ljust(5) + '\033[0m') if i + j < 256 else '' for j in range(10)])) for i in range(0, 256, 10)]))\""

##### relabel current konsole tab

   alias  rk='d=$(dcop|grep $PPID) && s=$(dcop $d konsole currentSession) && dcop $d $s renameSession'

##### Echo the contents of a Url

   alias  echourl="wget -qO -"

##### Get size of terminal

   alias  termsize='echo $COLUMNS x $LINES'

##### Print one . instead of each line

   alias  ...='while read line; do echo -n "."; done && echo ""'

##### Alias for quick command-line volume set (works also remotely via SSH)

   alias  setvol='aumix -v'

##### easy C shell math calculators

   alias  calc 'echo "scale=4;\!*"|bc -l'; alias xcalc 'echo "\!*"|bc -l'

##### Auto-log commands

   alias  m='screen -S $$ -m script'

##### C function manual

   alias  man='man -S 2:3:1'

##### Creates a customized search command

   alias  cr='find . 2>/dev/null -regex '\''.*\.\(c\|cpp\|pc\|h\|hpp\|cc\)$'\'' | xargs grep color=always -ni -C2'

##### Alias for displaying a process tree nicely

   alias  pst='pstree -Alpha'

##### Locate command for MAC OSX

   alias  locate='if [ $((`date +%s`-`eval $(stat -s /var/db/locate.database); echo $st_mtime`)) -gt 3600 ]; then echo "locate: db is too old!">/dev/stderr; sudo /usr/libexec/locate.updatedb; fi; locate -i'

##### Print the list of all files checked out by Perforce SCM

   alias  opened='p4 opened | awk -F# "{print \$1}"'

##### Add an "alert" alias for long running commands

   alias  alert='notify-send urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

##### Clear the screen and list file

   alias  cls='clear;ls'

##### This commands create an alias for you to help you navigating in the shell easier.

   alias  rope='if [[ "$i" == "0" ]]; then cd $dir; i=1; else dir=$(pwd); export dir; i=0; fi'

##### Makes you look busy

   alias  busy='rnd_file=$(find /usr/include -type f -size +5k | sort -R | head -n 1) && vim +$((RANDOM%$(wc -l $rnd_file | cut -f1 -d" "))) $rnd_file'

##### Create an alias command that clears the screen and scroll back buffer (in putty and xterm)

   alias  clearscrollback='clear;printf %b "\033[3J"'

##### change to the selected directory for zsh users

   alias  scd='dirs -v; echo -n "select number: "; read newdir; cd -"$newdir"'

##### Unix alias for date command that lets you create timestamps in ISO 8601 format

   alias  timestamp='date "+%Y%m%dT%H%M%S"'

##### Copy to clipboard in addition to stdout (OSX).

   alias  t="tee >(pbcopy)"

##### simple nbtstat -a equivalent/alias for linux (uses nmblookup)

   alias  nbtstat='nmblookup -S -U <server> -R'

##### search google on os x

   alias  google='open http://www.google.com/search?q="'

##### Get a list of all TODO/FIXME tasks left to be done in your GIT project

   alias  tasks='git grep -EI "TODO|FIXME"'

##### Reads in the ~/.Xdefaults

   alias  xdef_load='xrdb -merge ~/.Xdefaults'

##### Make a quick alias for seeing date's format codes.

   alias  dateformatcodes="date help | sed -n '/^FORMAT/,/%Z/p'"

##### A 'favorite' command.

   alias  myhost='ssh me@myhost'

##### Delete the previous entry in your history

   alias  histdel='history -d $((HISTCMD-2)) && history -d $((HISTCMD-1))'

##### easier sudo apt-get install

   alias  sagi="yes | sudo apt-get install"

##### Command line calculator

   alias  calc='python -ic "from math import *; from random import *"'

##### alias dir to ls -al

   alias  dir="ls -al"

##### ROT13 using the tr command

   alias  rot13="tr a-zA-Z n-za-mN-ZA-M"

##### Make vim open in tabs by default (save to .profile)

   alias  vim="vim -p"

##### Get notified when a job you run in a terminal is done, using NotifyOSD

   alias  alert='notify-send -i /usr/share/icons/gnome/32x32/apps/gnome-terminal.png "[$?] $(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/;\s*alert$//'\'')"'

##### Quick aliases for going up a directory tree

   alias  ::='cd ../../'

##### List of top commands from CommandLineFu

   alias  fu='curl -s http://www.commandlinefu.com/commands/browse/sort-by-votes/plaintext | grep -vE "^$|^#"'

##### Directory management

   alias  md='mkdir -p'; alias rd='rmdir'; mcd () { mkdir "$@" && cd "$_"; }

##### Find large files in current directory

   alias  big='BIG () { find . -size +${1}M -ls; }; BIG $1'

##### Quick Full Screen RDP connection

   alias  rdp='rdesktop -u <user> -g 1600x1200 -D -r disk:home=/home -r clipboard:PRIMARYCLIPBOARD'

##### Safely remove files from the terminal

   alias  rrm='/bin/rm -i'; alias rm='trash'

##### bash chop

   alias  chop="tr -d '\r\n'"

##### Preserve existing aliases on sudo commands

   alias  sudo='sudo '

##### private mode for (bash) shell

   alias  private_mode='unset HISTFILE && echo -e "\033[1m[\033[0m\033[4m*\033[0m\033[1m] \033[0m\033[4mprivate mode activated.\033[0m"'

##### alias to show my own configured ip

   alias  showip="ifconfig eth0 | grep 'inet addr:' | sed 's/.*addr\:\(.*\) Bcast\:.*/\1/'"

##### get ip and hostname for this computer

   alias  me="echo '`ifconfig | grep inet | grep broadcast | awk '{print $2}'`' && uname -n"

##### Disable rm, use trash instead

   alias  rm='echo "rm is disabled, use trash or /bin/rm instead."'

##### Rot13 using the tr command

   alias  rot13="tr '[A-Za-z]' '[N-ZA-Mn-za-m]'"

##### Resize participating terminals to classic 80x24 size.

   alias  mid='printf "\e[8;24;80;t"'

##### Clear scrollback on all participating terminals.

   alias  cls='printf %b '\''\033c'\'''

##### bash alias for sdiff: differ

   alias  differ='sdiff suppress-common-lines $1 $2'

##### Quicker move to parent directory

   alias  ..='cd ..'

##### alias to close terminal with :q

   alias  ':q'='exit'

##### Print sorted count of lines

   alias  sucs="sort | uniq -c | sort -n"

##### like rm, but keep backups of files and dirs in ~/.rm

   alias  rn='mkdir -p ~/.rm`pwd`; mv -v -f backup=t -t ~/.rm`pwd` "$@"'

##### Display environment vars only, using set

   alias  sete='set|sed -n "/^`declare -F|sed -n "s/^declare -f \(.*\)/\1 ()/p;q"`/q;p"'

##### Simple Bashrc Cron Job Using Aliases For A Simple Interface

   alias  alive='(while true; do  ping -c 4 192.168.1.1 > /dev/null 2>&1 ; sleep 300 ; done)'

##### Open the last file you edited in Vim.

   alias  lvim="vim -c \"normal '0\""
