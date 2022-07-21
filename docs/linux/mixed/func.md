# func

##### Autocomplete directories (CWDs) of other ZSH processes

   func tion _xterm_cwds() { for pid in $(pidof  -zsh) $(pidof zsh); do reply+=$(readlink /proc/$pid/cwd) done }; function xcd() { cd $1 }; compctl -K _xterm_cwds xcd

##### Extract URL from SVN working copy

   func tion svnurl() { svn info $1 | egrep '^URL: (.*)' | sed s/URL\:\ //; }

##### bash/ksh function: given a file, cd to the directory it lives

   func tion cdf () { [ -f $1  ] && { cd $(dirname $1);  } || { cd $1 ;  }; pwd; };

##### Use binary notation to chmod a file.

   func tion right { bc <<< "obase=8;ibase=2;$1"; }; touch foo; chmod $(right 111111011) foo; ls -l foo

##### creates a bash function to remove certain lines from SSH known_hosts file

   func tion sshdel { perl -i -n -e "print unless (\$. == $1)" ~/.ssh/known_hosts; }

##### call vim help page from shell prompt

   func tion :h { vim +":h $1" +'wincmd o' +'nnoremap q :q!<CR>' ;}

##### search for a file in PATH

   func tion sepath { echo $PATH |tr ":" "\n" |sort -u |while read L ; do cd "$L" 2>/dev/null && find . \( ! -name . -prune \) \( -type f -o -type l \) 2>/dev/null |sed "s@^\./@@" |egrep -i "${*}" |sed "s@^@$L/@" ; done ; }

##### print shared library dependencies

   func tion ldd(){ objdump -p $1 | grep -i need; }

##### Bash function to see if the day ends in

   func tion ends_in_y() { case $(date +%A) in *y ) true ;; * ) false ;; esac } ; ends_in_y && echo ok

##### OSX script to change Terminal profiles based on machine name;  use with case statement parameter matching

   func tion setTerm() { PROFILE=${1}; echo "tell app \"Terminal\" to set current settings of first window to settings set \"${PROFILE}\""|osascript; };

##### Pretty man pages under X

   func tion manpdf() {man -t $1 | ps2pdf - - | epdfview -}

##### Scroll a message in a terminal titlebar

   func tion titlescroll {   _X=0   _TITLEMSG=$1   _WIDTH=${2:-16}   _TITLEMSG=`printf "%$((${#_TITLEMSG}+$_WIDTH))s" "$_TITLEMSG"`   while `true`     do     _X=$(((_X+1)%${#_TITLEMSG}))     xtitle "${_TITLEMSG:_X:_WIDTH}"   done }

##### command line fu roulette, without all the excessive parsing

   func tion fur () { curl -sL 'http://www.commandlinefu.com/commands/random/plaintext' | grep -v "^# commandlinefu" }

##### Convert files with CR-terminated lines (as created by Mac OS X programs) into NL-terminated lines suitable for Unix programs

   func tion crtonl { perl -i -ape 's/\r\n?/\n/g;' $* ; }

##### Pipe ls output into less

   func tion lsless() { ls "$@" | less; }

##### Bash function to see if the day ends in "y"

   func tion ends_in_y() { if [ `date +%A | sed -e 's/\(^.*\)\(.$\)/\2/'` == "y" ]; then echo 1; else echo 0; fi }

##### Alternative size (human readable) of directories (biggest first)

   func tion duf { du -k $@ | sort -rn | perl -ne '($s,$f)=split(/\t/,$_,2);for(qw(K M G T)){if($s<1024){$x=($s<10?"%.1f":"%3d");printf("$x$_\t%s",$s,$f);last};$s/=1024}' }

##### Alternative size (human readable) of directories (biggest last)

   func tion duf { du -sk "$@" | sort -n | while read size fname; do for unit in k M G T P E Z Y; do if [ $size -lt 1024 ]; then echo -e "${size}${unit}\t${fname}"; break; fi; size=$((size/1024)); done; done; }

##### Expand tabs

   func tion expand-tabs() { expand -t 8 "$1" > "$1.expanded"; mv -f "$1.expanded" "$1"; }

##### Create a directory and change into it at the same time

   func tion mkdcd () {     mkdir "$1" && cd "$1" }

##### ROT13 using the tr command

   func tion rot13 { if [ -r $1 ]; then cat $1 | tr '[N-ZA-Mn-za-m5-90-4]' '[A-Za-z0-9]'; else echo $* | tr '[N-ZA-Mn-za-m5-90-4]' '[A-Za-z0-9]'; fi }

##### Install and run when a command is not found

   func tion command_not_found_handle(){ apt-get install $( apt-file search "$1" | grep bin | grep -w "$1" | head -n1 | cut -d ':' -f 1 ) && $* ; }

##### Fast command-line directory browsing

   func tion cdls { cd $1; ls; }

##### Find out which debian package a command (executable) belongs to on debian-based distros

   func tion whichpkg() { readlink -f "$(which $1)" | xargs no-run-if-empty dpkg -S; }

##### Bitcoin Brainwallet Base58 Encoder

   func tion b58encode () { local b58_lookup_table=({1..9} {A..H} {J..N} {P..Z} {a..k} {m..z}); bc<<<"obase=58;ibase=16;${1^^}"|(read -a s; for b58_index in "${s[@]}" ; do printf %s ${b58_lookup_table[ 10#"$b58_index" ]}; done); }

##### Hostname tab-completion for ssh

   func tion autoCompleteHostname() {   local hosts;   local cur;   hosts=($(awk '{print $1}' ~/.ssh/known_hosts | cut -d, -f1));   cur=${COMP_WORDS[COMP_CWORD]};   COMPREPLY=($(compgen -W '${hosts[@]}'  $cur )) } complete -F autoCompleteHostname ssh

##### move up through directories faster (set in your /etc/profile or .bash_profile)

   func tion up { cd $(eval printf '../'%.0s {1..$1}) && pwd; }

##### Bitcoin Brainwallet Exponent Calculator

   func tion brainwallet_exponent () { printf %s "$1"|sha256sum|head -c 64; }

##### Bitcoin Brainwallet Checksum Calculator

   func tion brainwallet_checksum () { (o='openssl sha256 -binary'; p='printf';($p %b "\x80";$p %s "$1"|$o)|$o|sha256sum|cut -b1-8); }

##### Open up a man page as PDF (#OSX)

   func tion man2pdf(){ man -t ${1:?Specify man as arg} | open -f -a preview; }

##### no more line wrapping in your terminal

   func tion nowrap { export COLS=`tput cols` ; cut -c-$COLS ; unset COLS ; }

##### Mount and umount iso files

   func tion miso () { mkdir ~/ISO_CD && sudo mount -o loop "$@" ~/ISO_CD && cd ~/ISO_CD && ls; } function uiso () { cd ~ && sudo umount ~/ISO_CD && rm -r ~/ISO_CD; }

##### combine `mkdir foo && cd foo`  into a single function `mcd foo`

   func tion mcd() {   [ -n "$1" ] && mkdir -p "$@" && cd "$1";   }

##### gh or "grep history" - define a function gh combining history and grep to save typing

   func tion gh () { history | grep $* ; }  # gh or "grep history"

##### Convert decimal numbers to binary

   func tion decToBin { echo "ibase=10; obase=2; $1" | bc; }

##### cd up a number of levels

   func tion ..(){ for ((j=${1:-1},i=0;i<j;i++));do builtin cd ..;done;}

##### a function to put environment variable in zsh history for editing

   func tion eve (); { eval "print -s ${1?no variable}=\'\$$1\'" }

##### convert single digit to double digits

   func tion rjust_file_nums() {for i in *.ogg; do; mv $i `ruby -e "print ARGV.first.gsub(/\d+/){|d| d.rjust($1,'0')}" $i`; done}

##### encrypt and post or get and decrypt from sprunge using gpg symmetric encryption option

   func tion cpaste () { gpg -o - -a -c $1 | curl -s -F 'sprunge=<-' http://sprunge.us }  function dpaste () { curl -s $1 | gpg -o - -d }

##### Converts multiple youtube links to mp3 files

   func tion ytmp3() { while (($#)); do (cd ~/Music; echo "Extracting mp3 from $(youtube-dl -e $1)"; /usr/bin/youtube-dl -q -t extract-audio audio-format mp3 $1); shift; done ; }

##### Google's Text-To-Speech in command line

   func tion say { wget -q -U Mozilla -O google-tts.mp3 "http://translate.google.com/translate_tts?ie=UTF-8&tl=$1&q=$2" open google-tts.mp3 &>/dev/null || mplayer google-tts.mp3 &>/dev/null; rm google-tts.mp3; }

##### Print every Nth line (to a maximum)

   func tion every() { sed -n -e "${2}q" -e "0~${1}p" ${3:-/dev/stdin}; }

##### search google on os x

   func tion google () { st="$@"; open "http://www.google.com/search?q=${st}"; }

##### Download all images from a 4chan thread

   func tion 4get () { curl $1 | grep -i "File<a href" | awk -F '<a href="' '{print $4}' | awk -F '" ' '{print $1}' | xargs wget }

##### Create subversion undo point

   func tion svnundopoint() { if [ -d .undo ]; then r=`svn info | grep Revision | cut -f 2 -d ' '` && t=`date +%F_%T` && f=${t}rev${r} && svn diff>.undo/$f && svn stat>.undo/stat_$f; else echo Missing .undo directory; fi }

##### Download all images from a 4chan thread

   func tion 4chandl () { wget -e robots=off -nvcdp -t 0 -Hkrl 0 -I \*/src/ -P . "$1" }

##### move up through directories faster (set in your /etc/profile or .bash_profile)

   func tion up { for i in `seq 1 $1`; do cd ../ && pwd; done }

##### convert single digit to double digits

   func tion rjust_file_nums(){for i in *.ogg; do; mv $i `ruby -e "print ARGV.first.gsub(/\d+/){|d| d.rjust($1,'0')}" $i`; done }

##### A function to output a man page as a pdf file

   func tion man2pdf(){ man -t ${1:?Specify man as arg} | ps2pdf -dCompatibility=1.3 - - > ${1}.pdf; }

##### Print every Nth line

   func tion every() { N=$1; S=1; [ "${N:0:1}" = '-' ] && N="${N:1}" || S=0; sed -n "$S~${N}p"; }

##### Search and play MP3 from Skreemr

   func tion skreemplay() { lynx -dump "http://skreemr.com/results.jsp?q=$*" | grep mp3$ | sed 's/^.* //' | xargs mplayer }

##### Countdown Clock

   func tion countdown { case "$1" in -s) shift;; *) set $(($1 * 60));; esac; local S="          "; for i in $(seq "$1" -1 1); do echo -ne "$S\r $i\r"; sleep 1; done; echo -e "$S\rBOOM!"; }

##### Copies currently played song in Audacious to selected directory

   func tion cp_mp3_to { PID=`pidof audacious2`; FILEPATH=`lsof -p $PID| grep mp3| sed s/[^\/]*//`; cp "$FILEPATH" "$1"; }

##### Colorizes an access log

   func tion colorize() { c="line-buffered color=yes"; GREP_COLORS="mt=01;34" egrep $c '(^| 200 | 304 )' "${@}" | GREP_COLORS="mt=02;31" egrep $c '(^|"(GET|POST) .*[^0-9] 4[0-1][0-9] )' | GREP_COLORS="ms=02;37" egrep $c '(^|^[0-9\.]+) ';}

##### Jump to a song in your XMMS2 playlist, based on song title/artist

   func tion jumpTo { xmms2 jump `xmms2 list | grep -i '$1' | head -n 1 | tail -n 1 | sed -re 's@.+\[(.+)/.+\] (.+)@\1@'`; }

##### prints message in given argument on on center of screen

   func tion echox { echo `tput cup $(($(tput lines))) $(( ($(tput cols) - $(echo "${#1}"))/2 ))`"$1"`tput cup $(tput lines) $(( $(tput cols)-1 ))`; }

##### Pipe the result of a command to IRC (channel or query)

   func tion my_irc { tmp=`mktemp`; cat > $tmp; { echo -e "USER $username x x :$ircname\nNICK $nick\nJOIN $target"; while read line; do echo -e "PRIVMSG $target :$line"; done < $tmp; } | nc $server > /dev/null ; rm $tmp; }

##### function to verify an IP address - can be used at the shell prompt or in a shell script

   func tion verifyIP() { octet="(25[0-5]|2[0-4][0-9]|[01]?[0-9]?[0-9])"; ip4="^$octet\.$octet\.$octet\.$octet$"; [[ ${1} =~ $ip4 ]] && return 0 || return 1; }

##### Output files without comments or empty lines

   func tion catv { egrep -v "^$|^#" ${*} ; }

##### summarize a list of IP addresses, verifying IP address and giving counts for each IP found

   func tion summaryIP() { < $1 awk '{print $1}' | while  read ip ; do verifyIP ${ip} && echo ${ip}; done | awk '{ip_array[$1]++} END { for (ip in ip_array) printf("%5d\t%s\n", ip_array[ip], ip)}' | sort -rn; }

##### Google verbatim search on your terminal

   func tion google { Q="$@"; GOOG_URL='https://www.google.de/search?tbs=li:1&q='; AGENT="Mozilla/4.0"; stream=$(curl -A "$AGENT" -skLm 10 "${GOOG_URL}${Q//\ /+}" | grep -oP '\/url\?q=.+?&amp' | sed 's|/url?q=||; s|&amp||'); echo -e "${stream//\%/\x}"; }

##### Remove apps with style: nuke it from orbit

   func tion nuke() { if [ $(whoami) != "root" ] ; then for x in $@; do sudo apt-get autoremove purge $x; done; else for x in $@; do apt-get autoremove purge $x; done; fi }

##### Easily run a program in the background without losing output

   func tion fork () { tf=$(tempfile -d /tmp -p $1.);echo -n "$tf   "; $@ &>$tf& }

##### Suppress output of loud commands you don't want to hear from

   func tion quietly () { $* 2> /dev/null > /dev/null; };

##### Install the Debian-packaged version of a Perl module

   func tion dpan () { PKG=`perl -e '$_=lc($ARGV[0]); s/::/-/g; print "lib$_-perl\n"' $1`; apt-get install $PKG; }

##### Realy remove file from your drive

   func tion rrm(){ for i in $*; do; if [ -f $i ]; then; echo "rrm - Processing $i"; shred force remove zero verbose $i; else; echo "Can't process $i"; type=$(stat "$1" -c %F); echo "File $i is $type"; fi; done;}

##### Quickly create an alias for changing into the current directory

   func tion map() { [ -n "$1" ] && alias $1="cd `pwd`" || alias | grep "'cd "; }

##### Turn shell tracing and verbosity (set -xv) on/off with 1 command!

   func tion setx(){ sed '/[xv]/!Q2' <<< $- && { set +xv; export PS4=">>> "; } || { export PS4="`tput setaf 3`>>> `tput sgr0`"; set -xv; }; }

##### bash/ksh function: given a file, cd to the directory it lives

   func tion fcd () { [ -f $1  ] && { cd $(dirname $1);  } || { cd $1 ;  } pwd }

##### log rm commands

   func tion rm {         workingdir=$( pwdx $$ | awk '{print $2}' )         /usr/bin/rm $*         echo "rm $* issued at $(date) by the user $(who am i| awk '{print $1} ') in the directory ${workingdir}"  >> /tmp/rm.out }

##### bash function to check for something every 5 seconds

   func tion checkfor () { while :; do $*; sleep 5; done; }

##### Key binding to search commandlinefu.com

   func tion ds { echo -n "search : "; read ST; EST=`php -r "echo rawurlencode('$ST');"`; B64=`echo -n $ST| openssl enc -base64`; curl -s "http://www.commandlinefu.com/commands/matching/$EST/$B64/plaintext" | less -p "$ST"; } ; bind '"\C-k"':"\"ds\C-m\""

##### top with progame name

   func tion ptop(){     `ps -ef | grep $*  | awk 'BEGIN{printf "top "}{printf "-p" $2  " " }'` }

##### Dell OMSA version check function

   func tion dellomsaver { snmpwalk -v2c -cmycommunityname $1 1.3.6.1.4.1.674.10892.1.100.2.0; }

##### move up through directories faster (set in your /etc/profile or .bash_profile)

   func tion up { i=$1; while [ $((i)) -gt 0 ]; do cd ../ && pwd; done }

##### map a command over a list of files - map-files /lib *.so ls -la

   func tion map-files() { 	find $1 -name $2 -exec ${@:3} {} \; }

##### List files under current directory, ignoring repository copies.

   func tion have_here { find "${@:-.}" -type d \( -name .git -o -name .svn -o -name .bzr -o -name CVS -o -name .hg -o -name __pycache__ \) -prune -o -type f -print; }

##### function to compute what percentage of X is Y? Where percent/100 = X/Y => percent=100*X/Y

   func tion wpoxiy () {  # What percentage of X is Y? Where percent/100 = X/Y => percent=100*X/Y # Example: wpoxiy 10 5 # 50.00% # Example: wpoxiy 30 10 # 33.33%  echo $(bc <<< "scale=2; y=${1}; x=${2}; percent=x*100/y; percent")"%"; }

##### Averaging columns of numbers

   func tion avg {     awk "/$2/{sum += \$$1; lc += 1;} END {printf \"Average over %d lines: %f\n\", lc, sum/lc}"; }

##### Run a command on all servers using func

   func  "*" call command run "uname -i"

##### Use emacs in place of tail -f

   func tion emon { emacs "$1" eval '(auto-revert-tail-mode)' eval '(setq buffer-read-only t)' eval '(goto-char (point-max))' }

##### Find all bash functions in a file

   func tions(){ read -p "File name> "; sort -d $REPLY | grep "(){" | sed -e 's/(){//g' | less; }

##### Reports file systems with disk usage exceeding 90% on the specified host

   func tion df_func {     local dfts=$(ssh $1 "df -lP | tail -n +2 | sed 's/%//'");     echo $dfts | awk '$5 > 90 {exit 1}' > /dev/null;     if [ $? == 1 ]; then         echo -n "$1 ";         echo $dfts | awk '$5 > 90 {printf "%s %d%%\n", $6, $5}';     fi }

##### Find the package a command belongs to on debian-based distros

   func tion whichpkg { dpkg -S $1 | egrep -w $(which $1)$; }

##### A command's package details

   func tion summpkg { dpkg -s $(dpkg -S $1 | egrep -w $(which $1)$ | awk -F: '{print $1}') ; }

##### Create a database with user and pass without hassle.

   func tion createdb () { mysqladmin -u root -p create $1 && mysql -u root -p -e "GRANT ALL ON $1.* TO '$2'@'localhost' IDENTIFIED BY '$3';" ; }

##### search google from command line

   func tion google() { xdg-open "http://www.google.com/#sclient=psy&q=$1"; }

##### telling you from where your commit come from

   func tion where(){ COUNT=0; while [ `where_arg $1~$COUNT | wc -w` == 0 ]; do let COUNT=COUNT+1; done; echo "$1 is ahead of "; where_arg $1~$COUNT; echo "by $COUNT commits";};function where_arg(){ git log $@ decorate -1 | head -n1 | cut -d ' ' -f3- ;}

##### Fewer keystrokes to search man page of command

   func tion mg(){ man ${1} | egrep ${2} | more; }

##### List aliases that match a regexp

   func tion alls() { alias -p | sed -n "/^alias $1/p" }

##### Provides external IP, Country and City in a formated manner.

   func tion geoip() { curl -s "http://www.geoiptool.com/en/?IP=$1" | html2text | egrep color "IP Address:|Country:|City:|Longitude:|Latitude:|Host Name:" }

##### Find all files modified after a given files last modification time

   func tion findOlderThan () { find . -mmin -$((($(date "+%s") - $(stat -c %Y $1))/60)) -type f ; }

##### Lazy man's vim

   func tion v { if [ -z $1 ]; then vim; else vim *$1*; fi }

##### alias for etckeeper, to commit changes after moification of etc

   func tion ec() { ec_var="`pwd`" && cd /etc/ && sudo bzr commit -m "$@" && cd $ec_var; }

##### convert rar to zip

   func tion rar2zip { rar="$(grealpath "$1")"; zip="$(grealpath "${2:-$(basename "$rar" .rar).zip}")"; d=$(mktemp -d /tmp/rar2zip.XXXXXX); cd "$d"; unrar x "$rar"; zip -r "$zip" *; cd -; rm -r "$d"; }

##### OSX Expand URL and Copy to Clipboard

   func tion expand_url() {   curl -sI $1 | grep Location: | cut -d " " -f 2 | tr -d "\n" | pbcopy }

##### list all instances of a file in your PATH directories (without duplicates) in PATH order

   func tion wherepath () { for DIR in `echo $PATH | tr ":" "\n" | awk '!x[$0]++ {print $0}'`; do  ls ${DIR}/$1 2>/dev/null; done }

##### Clear iptables rules safely

   func tion clearIptables(){iptables -P INPUT ACCEPT; iptables -P FORWARD ACCEPT; iptables -P OUTPUT ACCEPT; iptables -F; iptables -X; iptables -L}

##### Autofocus window after executing some command

   func tion focus() { winID=`xprop -root |awk '/_NET_ACTIVE_WINDOW/ {print $5; exit;}'`; $@; wmctrl -i -a $winID; }

##### find geographical location of an ip address

   func tion ip-where { wget -qO- -U Mozilla http://www.ip-adress.com/ip_tracer/$1  | html2text -nobs -style pretty | sed -n /^$1/,/^$/p;}

##### Search history, return unique results

   func tion hgr() { grep color -i "${1}" ~/.bash_history | sed -e 's/^ *//g' -e 's/ *$//g' | sort | uniq; }

##### A bash function to show the files most recently modified in the named (or current) directory

   func tion t { ls -ltch $* | head -20 ; }

##### Show the ordered header line (with field names) of a CSV file

   func tion headers { head -1 $* | tr ',' '\12' | pr -t -n ; }

##### mkdir and cd

   func tion mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }

##### Get the Nth argument of the last command in $HISTFILE

   func tion garg () { tail -n 1 ${HISTFILE} | awk "{ print \$$1 }" }

##### Parallel XZ with progress bar

   func tion xzv() { THREADS=`grep processor /proc/cpuinfo | wc -l`; for file in $*; do pv -s `stat -c%s $file` < $file | pxz -q -T $THREADS > $file.xz ; done; }

##### Define a bash function to interactively pick a subdirectory to cd into

   func tion cdb() { select dir in $(find -type d -name "$1" -not -path '*/\.*' -prune); do cd "${dir}" && break; done  }

##### Search google.com on your terminal

   func tion google { Q="$@";GOOG_URL='https://www.google.com/search?tbs=li:1&q=';AGENT="Mozilla/4.0";stream=$(curl -A "$AGENT" -skLm 10 "${GOOG_URL}${Q//\ /+}");echo "$stream" | grep -o "href=\"/url[^\&]*&amp;" | sed 's/href=".url.q=\([^\&]*\).*/\1/';}

##### Have Google Translate speak to you using your local speakers

   func tion say { mplayer -really-quiet "http://translate.google.com/translate_tts?tl=en&q=$1"; }

##### Pretty print a simple csv in the command line +header coloring +multiple files support

   func tion csv() { C=`echo -e '\e[0;31m'`; N=`echo -e '\033[0m'`; for i in $@; do column -s, -t < $i | sed "1 s|^\(.*\)$|$C\1$N|gi"; done; }; csv test*.csv

##### display the ttl of a hostname in a human readable form

   func tion ttl { /usr/sbin/timetrans -count $(dig +noquestion +noadditional +noauthority $1 | grep "^$1" | awk '{print $2}') }

##### Pretty man pages under X

   func tion manpdf() {man -t $1 | ps2pdf - - | epdfview -}

##### Fast command-line directory browsing

   func tion cdls { cd $1; ls; }

##### Find out which debian package a command (executable) belongs to on debian-based distros

   func tion whichpkg() { readlink -f "$(which $1)" | xargs no-run-if-empty dpkg -S; }

##### Bitcoin Brainwallet Base58 Encoder

   func tion b58encode () { local b58_lookup_table=({1..9} {A..H} {J..N} {P..Z} {a..k} {m..z}); bc<<<"obase=58;ibase=16;${1^^}"|(read -a s; for b58_index in "${s[@]}" ; do printf %s ${b58_lookup_table[ 10#"$b58_index" ]}; done); }

##### Hostname tab-completion for ssh

   func tion autoCompleteHostname() {   local hosts;   local cur;   hosts=($(awk '{print $1}' ~/.ssh/known_hosts | cut -d, -f1));   cur=${COMP_WORDS[COMP_CWORD]};   COMPREPLY=($(compgen -W '${hosts[@]}'  $cur )) } complete -F autoCompleteHostname ssh

##### move up through directories faster (set in your /etc/profile or .bash_profile)

   func tion up { cd $(eval printf '../'%.0s {1..$1}) && pwd; }

##### Bitcoin Brainwallet Exponent Calculator

   func tion brainwallet_exponent () { printf %s "$1"|sha256sum|head -c 64; }

##### Bitcoin Brainwallet Checksum Calculator

   func tion brainwallet_checksum () { (o='openssl sha256 -binary'; p='printf';($p %b "\x80";$p %s "$1"|$o)|$o|sha256sum|cut -b1-8); }

##### Open up a man page as PDF (#OSX)

   func tion man2pdf(){ man -t ${1:?Specify man as arg} | open -f -a preview; }

##### no more line wrapping in your terminal

   func tion nowrap { export COLS=`tput cols` ; cut -c-$COLS ; unset COLS ; }

##### Mount and umount iso files

   func tion miso () { mkdir ~/ISO_CD && sudo mount -o loop "$@" ~/ISO_CD && cd ~/ISO_CD && ls; } function uiso () { cd ~ && sudo umount ~/ISO_CD && rm -r ~/ISO_CD; }

##### combine `mkdir foo && cd foo`  into a single function `mcd foo`

   func tion mcd() {   [ -n "$1" ] && mkdir -p "$@" && cd "$1";   }

##### gh or "grep history" - define a function gh combining history and grep to save typing

   func tion gh () { history | grep $* ; }  # gh or "grep history"

##### Convert decimal numbers to binary

   func tion decToBin { echo "ibase=10; obase=2; $1" | bc; }

##### cd up a number of levels

   func tion ..(){ for ((j=${1:-1},i=0;i<j;i++));do builtin cd ..;done;}

##### a function to put environment variable in zsh history for editing

   func tion eve (); { eval "print -s ${1?no variable}=\'\$$1\'" }

##### convert single digit to double digits

   func tion rjust_file_nums() {for i in *.ogg; do; mv $i `ruby -e "print ARGV.first.gsub(/\d+/){|d| d.rjust($1,'0')}" $i`; done}

##### encrypt and post or get and decrypt from sprunge using gpg symmetric encryption option

   func tion cpaste () { gpg -o - -a -c $1 | curl -s -F 'sprunge=<-' http://sprunge.us }  function dpaste () { curl -s $1 | gpg -o - -d }

##### Converts multiple youtube links to mp3 files

   func tion ytmp3() { while (($#)); do (cd ~/Music; echo "Extracting mp3 from $(youtube-dl -e $1)"; /usr/bin/youtube-dl -q -t extract-audio audio-format mp3 $1); shift; done ; }

##### Google's Text-To-Speech in command line

   func tion say { wget -q -U Mozilla -O google-tts.mp3 "http://translate.google.com/translate_tts?ie=UTF-8&tl=$1&q=$2" open google-tts.mp3 &>/dev/null || mplayer google-tts.mp3 &>/dev/null; rm google-tts.mp3; }

##### Print every Nth line (to a maximum)

   func tion every() { sed -n -e "${2}q" -e "0~${1}p" ${3:-/dev/stdin}; }

##### search google on os x

   func tion google () { st="$@"; open "http://www.google.com/search?q=${st}"; }

##### Download all images from a 4chan thread

   func tion 4get () { curl $1 | grep -i "File<a href" | awk -F '<a href="' '{print $4}' | awk -F '" ' '{print $1}' | xargs wget }

##### Create subversion undo point

   func tion svnundopoint() { if [ -d .undo ]; then r=`svn info | grep Revision | cut -f 2 -d ' '` && t=`date +%F_%T` && f=${t}rev${r} && svn diff>.undo/$f && svn stat>.undo/stat_$f; else echo Missing .undo directory; fi }

##### Download all images from a 4chan thread

   func tion 4chandl () { wget -e robots=off -nvcdp -t 0 -Hkrl 0 -I \*/src/ -P . "$1" }

##### move up through directories faster (set in your /etc/profile or .bash_profile)

   func tion up { for i in `seq 1 $1`; do cd ../ && pwd; done }

##### convert single digit to double digits

   func tion rjust_file_nums(){for i in *.ogg; do; mv $i `ruby -e "print ARGV.first.gsub(/\d+/){|d| d.rjust($1,'0')}" $i`; done }

##### A function to output a man page as a pdf file

   func tion man2pdf(){ man -t ${1:?Specify man as arg} | ps2pdf -dCompatibility=1.3 - - > ${1}.pdf; }

##### Print every Nth line

   func tion every() { N=$1; S=1; [ "${N:0:1}" = '-' ] && N="${N:1}" || S=0; sed -n "$S~${N}p"; }

##### Search and play MP3 from Skreemr

   func tion skreemplay() { lynx -dump "http://skreemr.com/results.jsp?q=$*" | grep mp3$ | sed 's/^.* //' | xargs mplayer }

##### Countdown Clock

   func tion countdown { case "$1" in -s) shift;; *) set $(($1 * 60));; esac; local S="          "; for i in $(seq "$1" -1 1); do echo -ne "$S\r $i\r"; sleep 1; done; echo -e "$S\rBOOM!"; }

##### Copies currently played song in Audacious to selected directory

   func tion cp_mp3_to { PID=`pidof audacious2`; FILEPATH=`lsof -p $PID| grep mp3| sed s/[^\/]*//`; cp "$FILEPATH" "$1"; }

##### Colorizes an access log

   func tion colorize() { c="line-buffered color=yes"; GREP_COLORS="mt=01;34" egrep $c '(^| 200 | 304 )' "${@}" | GREP_COLORS="mt=02;31" egrep $c '(^|"(GET|POST) .*[^0-9] 4[0-1][0-9] )' | GREP_COLORS="ms=02;37" egrep $c '(^|^[0-9\.]+) ';}

##### Jump to a song in your XMMS2 playlist, based on song title/artist

   func tion jumpTo { xmms2 jump `xmms2 list | grep -i '$1' | head -n 1 | tail -n 1 | sed -re 's@.+\[(.+)/.+\] (.+)@\1@'`; }

##### prints message in given argument on on center of screen

   func tion echox { echo `tput cup $(($(tput lines))) $(( ($(tput cols) - $(echo "${#1}"))/2 ))`"$1"`tput cup $(tput lines) $(( $(tput cols)-1 ))`; }

##### Pipe the result of a command to IRC (channel or query)

   func tion my_irc { tmp=`mktemp`; cat > $tmp; { echo -e "USER $username x x :$ircname\nNICK $nick\nJOIN $target"; while read line; do echo -e "PRIVMSG $target :$line"; done < $tmp; } | nc $server > /dev/null ; rm $tmp; }

##### function to verify an IP address - can be used at the shell prompt or in a shell script

   func tion verifyIP() { octet="(25[0-5]|2[0-4][0-9]|[01]?[0-9]?[0-9])"; ip4="^$octet\.$octet\.$octet\.$octet$"; [[ ${1} =~ $ip4 ]] && return 0 || return 1; }

##### Output files without comments or empty lines

   func tion catv { egrep -v "^$|^#" ${*} ; }

##### summarize a list of IP addresses, verifying IP address and giving counts for each IP found

   func tion summaryIP() { < $1 awk '{print $1}' | while  read ip ; do verifyIP ${ip} && echo ${ip}; done | awk '{ip_array[$1]++} END { for (ip in ip_array) printf("%5d\t%s\n", ip_array[ip], ip)}' | sort -rn; }

##### Google verbatim search on your terminal

   func tion google { Q="$@"; GOOG_URL='https://www.google.de/search?tbs=li:1&q='; AGENT="Mozilla/4.0"; stream=$(curl -A "$AGENT" -skLm 10 "${GOOG_URL}${Q//\ /+}" | grep -oP '\/url\?q=.+?&amp' | sed 's|/url?q=||; s|&amp||'); echo -e "${stream//\%/\x}"; }

##### Remove apps with style: nuke it from orbit

   func tion nuke() { if [ $(whoami) != "root" ] ; then for x in $@; do sudo apt-get autoremove purge $x; done; else for x in $@; do apt-get autoremove purge $x; done; fi }

##### Easily run a program in the background without losing output

   func tion fork () { tf=$(tempfile -d /tmp -p $1.);echo -n "$tf   "; $@ &>$tf& }

##### Suppress output of loud commands you don't want to hear from

   func tion quietly () { $* 2> /dev/null > /dev/null; };

##### Install the Debian-packaged version of a Perl module

   func tion dpan () { PKG=`perl -e '$_=lc($ARGV[0]); s/::/-/g; print "lib$_-perl\n"' $1`; apt-get install $PKG; }

##### Realy remove file from your drive

   func tion rrm(){ for i in $*; do; if [ -f $i ]; then; echo "rrm - Processing $i"; shred force remove zero verbose $i; else; echo "Can't process $i"; type=$(stat "$1" -c %F); echo "File $i is $type"; fi; done;}

##### Quickly create an alias for changing into the current directory

   func tion map() { [ -n "$1" ] && alias $1="cd `pwd`" || alias | grep "'cd "; }

##### Turn shell tracing and verbosity (set -xv) on/off with 1 command!

   func tion setx(){ sed '/[xv]/!Q2' <<< $- && { set +xv; export PS4=">>> "; } || { export PS4="`tput setaf 3`>>> `tput sgr0`"; set -xv; }; }

##### bash/ksh function: given a file, cd to the directory it lives

   func tion fcd () { [ -f $1  ] && { cd $(dirname $1);  } || { cd $1 ;  } pwd }

##### log rm commands

   func tion rm {         workingdir=$( pwdx $$ | awk '{print $2}' )         /usr/bin/rm $*         echo "rm $* issued at $(date) by the user $(who am i| awk '{print $1} ') in the directory ${workingdir}"  >> /tmp/rm.out }

##### bash function to check for something every 5 seconds

   func tion checkfor () { while :; do $*; sleep 5; done; }

##### Key binding to search commandlinefu.com

   func tion ds { echo -n "search : "; read ST; EST=`php -r "echo rawurlencode('$ST');"`; B64=`echo -n $ST| openssl enc -base64`; curl -s "http://www.commandlinefu.com/commands/matching/$EST/$B64/plaintext" | less -p "$ST"; } ; bind '"\C-k"':"\"ds\C-m\""

##### top with progame name

   func tion ptop(){     `ps -ef | grep $*  | awk 'BEGIN{printf "top "}{printf "-p" $2  " " }'` }

##### Dell OMSA version check function

   func tion dellomsaver { snmpwalk -v2c -cmycommunityname $1 1.3.6.1.4.1.674.10892.1.100.2.0; }

##### move up through directories faster (set in your /etc/profile or .bash_profile)

   func tion up { i=$1; while [ $((i)) -gt 0 ]; do cd ../ && pwd; done }

##### map a command over a list of files - map-files /lib *.so ls -la

   func tion map-files() { 	find $1 -name $2 -exec ${@:3} {} \; }

##### List files under current directory, ignoring repository copies.

   func tion have_here { find "${@:-.}" -type d \( -name .git -o -name .svn -o -name .bzr -o -name CVS -o -name .hg -o -name __pycache__ \) -prune -o -type f -print; }

##### function to compute what percentage of X is Y? Where percent/100 = X/Y => percent=100*X/Y

   func tion wpoxiy () {  # What percentage of X is Y? Where percent/100 = X/Y => percent=100*X/Y # Example: wpoxiy 10 5 # 50.00% # Example: wpoxiy 30 10 # 33.33%  echo $(bc <<< "scale=2; y=${1}; x=${2}; percent=x*100/y; percent")"%"; }

##### Averaging columns of numbers

   func tion avg {     awk "/$2/{sum += \$$1; lc += 1;} END {printf \"Average over %d lines: %f\n\", lc, sum/lc}"; }

##### Run a command on all servers using func

   func  "*" call command run "uname -i"

##### Use emacs in place of tail -f

   func tion emon { emacs "$1" eval '(auto-revert-tail-mode)' eval '(setq buffer-read-only t)' eval '(goto-char (point-max))' }

##### Find all bash functions in a file

   func tions(){ read -p "File name> "; sort -d $REPLY | grep "(){" | sed -e 's/(){//g' | less; }

##### Reports file systems with disk usage exceeding 90% on the specified host

   func tion df_func {     local dfts=$(ssh $1 "df -lP | tail -n +2 | sed 's/%//'");     echo $dfts | awk '$5 > 90 {exit 1}' > /dev/null;     if [ $? == 1 ]; then         echo -n "$1 ";         echo $dfts | awk '$5 > 90 {printf "%s %d%%\n", $6, $5}';     fi }

##### Find the package a command belongs to on debian-based distros

   func tion whichpkg { dpkg -S $1 | egrep -w $(which $1)$; }

##### A command's package details

   func tion summpkg { dpkg -s $(dpkg -S $1 | egrep -w $(which $1)$ | awk -F: '{print $1}') ; }

##### Create a database with user and pass without hassle.

   func tion createdb () { mysqladmin -u root -p create $1 && mysql -u root -p -e "GRANT ALL ON $1.* TO '$2'@'localhost' IDENTIFIED BY '$3';" ; }

##### search google from command line

   func tion google() { xdg-open "http://www.google.com/#sclient=psy&q=$1"; }

##### telling you from where your commit come from

   func tion where(){ COUNT=0; while [ `where_arg $1~$COUNT | wc -w` == 0 ]; do let COUNT=COUNT+1; done; echo "$1 is ahead of "; where_arg $1~$COUNT; echo "by $COUNT commits";};function where_arg(){ git log $@ decorate -1 | head -n1 | cut -d ' ' -f3- ;}

##### Fewer keystrokes to search man page of command

   func tion mg(){ man ${1} | egrep ${2} | more; }

##### List aliases that match a regexp

   func tion alls() { alias -p | sed -n "/^alias $1/p" }

##### Provides external IP, Country and City in a formated manner.

   func tion geoip() { curl -s "http://www.geoiptool.com/en/?IP=$1" | html2text | egrep color "IP Address:|Country:|City:|Longitude:|Latitude:|Host Name:" }

##### Find all files modified after a given files last modification time

   func tion findOlderThan () { find . -mmin -$((($(date "+%s") - $(stat -c %Y $1))/60)) -type f ; }

##### Lazy man's vim

   func tion v { if [ -z $1 ]; then vim; else vim *$1*; fi }

##### alias for etckeeper, to commit changes after moification of etc

   func tion ec() { ec_var="`pwd`" && cd /etc/ && sudo bzr commit -m "$@" && cd $ec_var; }

##### convert rar to zip

   func tion rar2zip { rar="$(grealpath "$1")"; zip="$(grealpath "${2:-$(basename "$rar" .rar).zip}")"; d=$(mktemp -d /tmp/rar2zip.XXXXXX); cd "$d"; unrar x "$rar"; zip -r "$zip" *; cd -; rm -r "$d"; }

##### OSX Expand URL and Copy to Clipboard

   func tion expand_url() {   curl -sI $1 | grep Location: | cut -d " " -f 2 | tr -d "\n" | pbcopy }

##### list all instances of a file in your PATH directories (without duplicates) in PATH order

   func tion wherepath () { for DIR in `echo $PATH | tr ":" "\n" | awk '!x[$0]++ {print $0}'`; do  ls ${DIR}/$1 2>/dev/null; done }

##### Clear iptables rules safely

   func tion clearIptables(){iptables -P INPUT ACCEPT; iptables -P FORWARD ACCEPT; iptables -P OUTPUT ACCEPT; iptables -F; iptables -X; iptables -L}

##### Autofocus window after executing some command

   func tion focus() { winID=`xprop -root |awk '/_NET_ACTIVE_WINDOW/ {print $5; exit;}'`; $@; wmctrl -i -a $winID; }

##### find geographical location of an ip address

   func tion ip-where { wget -qO- -U Mozilla http://www.ip-adress.com/ip_tracer/$1  | html2text -nobs -style pretty | sed -n /^$1/,/^$/p;}

##### Search history, return unique results

   func tion hgr() { grep color -i "${1}" ~/.bash_history | sed -e 's/^ *//g' -e 's/ *$//g' | sort | uniq; }

##### A bash function to show the files most recently modified in the named (or current) directory

   func tion t { ls -ltch $* | head -20 ; }

##### Show the ordered header line (with field names) of a CSV file

   func tion headers { head -1 $* | tr ',' '\12' | pr -t -n ; }

##### mkdir and cd

   func tion mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }

##### Get the Nth argument of the last command in $HISTFILE

   func tion garg () { tail -n 1 ${HISTFILE} | awk "{ print \$$1 }" }

##### Parallel XZ with progress bar

   func tion xzv() { THREADS=`grep processor /proc/cpuinfo | wc -l`; for file in $*; do pv -s `stat -c%s $file` < $file | pxz -q -T $THREADS > $file.xz ; done; }
