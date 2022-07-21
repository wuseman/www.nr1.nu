# vi

##### Open all files with a regular expression in vim

   vi m $(grep [REGULAR_EXPRESSION] -R * | cut -d":" -f1 | uniq)

##### find/edit your forgotten buddy pounces for pidgin

   vi m ~/.purple/pounces.xml

##### Find and edit multiple files given a regex in vim buffers

   vi m `find . -iname '*.php'`

##### make comments invisible when editing a file

   vi m -c'highlight Comment ctermfg=white' my.conf

##### Look at logs startring at EOF

   vi ew + LOGFILE

##### Edit all source files of project with vim, each on separate tab

   vi m -p `ls *.java *.xml *.txt *.bnd 2>/dev/null`

##### use vim to get colorful diff output

   vi mdiff file1 file2

##### VIM version 7: edit in tabs

   vi m -p file1 file2 ...

##### Script to rip the audio from the youtube video you have open in firefox

   vi deo=$(ls /tmp | grep -e Flash\w*); ffmpeg -i /tmp/$video -f mp3 -ab 192k ~/ytaudio.mp3

##### Open files in tabs with vim

   vi m -p file1 file2 [...]

##### Edit a file using vi or vim in read-only mode

   vi  -R filename

##### Securely seeing the password file over the network

   vi pw

##### Securely look at the group file over the network

   vi gr

##### Securely edit the sudo file over the network

   vi sudo

##### Open file with sudo when there is no write-permission

   vi 2() {for i in $@; do [ -f "$i" ] && [ ! -w "$i" ] && sudo vim $@ && return; done; vim $@}

##### bash / vim workflow

   vi m -

##### open two files in vim

   vi m file1 file2

##### Go to a specified line in a file

   vi m +143 filename.txt

##### read txt or txt.gz files

   vi m txt.gz

##### Edit Crontab

   vi  ~/.crontab && crontab ~/.crontab

##### Search for the file and open in vi editor.

   vi find() { vi `find . -name "$1"` }

##### Open a file using vim in read only (like less)

   vi m -R /etc/passwd

##### The single most useful thing in bash

   vi m ~/.inputrc

##### Edit the Last Changed File

   vi m $( ls -t | head -n1 )

##### vimdiff local and remote files via ssh

   vi mdiff /path/to/file scp://remotehost//path/to/file

##### open two files on top of each other in vim (one window, two panes)

   vi m -o file1 file2

##### Open files in a split windowed Vim

   vi m -o file1 file2...

##### Remove a range of lines from a file

   vi  +'<start>,<end>d' +wq <filename>

##### Edit a file inside a compressed archive without extracting it

   vi m some-archive.tar.gz

##### Opens vi/vim at pattern in file

   vi  +/pattern [file]

##### Use Vim to convert text to HTML.

   vi mhtml() { [[ -f "$1" ]] || return 1; vim +'syn on | run! syntax/2html.vim | wq | q' "$1";}

##### Open (in vim) all modified files in a git repository

   vi m `git status porcelain | sed -ne 's/^ M //p'`

##### Edit file(s) that has been just listed

   vi  `!!`

##### Add Password Protection to a file your editing in vim.

   vi m -x <FILENAME>

##### Find files containing string and open in vim

   vi m $(grep test *)

##### vimdiff to remotehost

   vi mdiff tera.py <(ssh -A testserver "cat tera.py")

##### Add Password Protection to a file your editing in vim.

   vi m -x <FILENAME>

##### Add Password Protection to a file your editing in vim.

   vi m -x <FILENAME>

##### Add Password Protection to a file your editing in vim.

   vi m -x <FILENAME>

##### Add Password Protection to a file your editing in vim.

   vi m -x <FILENAME>

##### Speed up or slow down video (and audio)

   vi deospeed() { vname="$1"; speedc="$2"; vs=$(python3 -c "print(1/$speedc)"); aspeed=$(python3 -c "print(1*$speedc)"); ffmpeg -i "$vname" -filter:a "atempo=$aspeed" -filter:v "setpts=$vs*PTS" "${3:-converted_$1}"; }

##### vim multiple files at one time, split vertically.

   vi m -O file1 file2

##### Open (in vim) all modified files in a git repository

   vi m `git diff name-only`

##### Find all files currently open in Vim and/or gVim

   vi m -r 2>&1 | grep '\.sw.' -A 5 | grep 'still running' -B 5

##### Delete C style comments using vim

   vi m suite.js -c '%s!/\*\_.\{-}\*/!!g'

##### get colorful side-by-side diffs of files in svn with vim

   vi mdiff <(svn cat "$1") "$1"

##### vi a remote file

   vi  scp://username@host//path/to/somefile

##### vi a remote file with port

   vi  scp://username@host:12345//path/to/somefile

##### start vim in diff mode

   vi mdiff file{1,2}

##### vi a new file with execution mode

   vi x(){ vim +'w | set ar | silent exe "!chmod +x %" | redraw!' $@; }

##### List of all vim features

   vi m version | grep -P '^(\+|\-)' | sed 's/\s/\n/g' | grep -Pv '^ ?$'

##### Colored diff ( via vim ) on 2 remotes files on your local computer.

   vi mdiff scp://root@server-foo.com//etc/snmp/snmpd.conf scp://root@server-bar.com//etc/snmp/snmpd.conf

##### Edit 2 or more files in vim using vim -d

   vi m -d '+diffoff!' file1 file2

##### Load all files (including in subdirs), whose name matches a substring, into Vim

   vi m $(find . ! -path \*.svn\* -type f -iname \*foo\*)

##### Edit 2 or more files in vim using vim -d

   vi m -O file1 file2

##### Start vim without initialization

   vi m -u NONE yourfile

##### Update your journal

   vi  ~/journal/$(date +%F)

##### Edit a file in vim (at the first error) if it is not well formed xml.

   vi mlint(){ eval $(xmllint noout "$1" 2>&1 | awk -F: '/parser error/{print "vim \""$1"\" +"$2; exit}'); }

##### Compare a remote file with a local file

   vi mdiff scp://[user@]host1/<file> scp://[user@]host2/<file>

##### Go to the Nth line of file [text editor]

   vi  +4 /etc/mtab

##### Edit a script that's somewhere in your path.

   vi m `which <scriptname>`

##### Using vim to save and run your python script.

   vi m ... :nmap <F5> :w^M:!python %<CR>

##### Remove a line from a file using sed (useful for updating known SSH server keys when they change)

   vi  +<lineNumber>d +wq <filename>

##### Remove a range of lines from a file

   vi  +{<end>..<start>}d +wq <filename>

##### Remove a range of lines from a file

   vi  +START,ENDd +wq sample.txt

##### Run a command, redirecting output to a file, then edit the file with vim.

   vi mcmd() { $1 > $2 && vim $2; }

##### Load your [git-controlled] working files into the vi arglist.

   vi m $(git diff origin/master name-only)

##### Edit the /etc/sudoers config file the right way.

   vi sudo

##### Open Vim with two windows

   vi m -c new myfile

##### Grep across a directory and open matching files in vim (one tab per file)

   vi m -p `grep -r PATTERN TARGET_DIR | cut -f1 -d: | sort | uniq | xargs echo -n`

##### Open (in vim) all modified files in a git repository

   vi m `git status | grep modified | awk '{print $3}'`

##### open two files side by side in vim (one window, two panes)

   vi m -O file1 file2

##### This little command edits your gitignore from anywhere in your repo

   vi m $(git rev-parse show-toplevel)/.gitignore

##### View latest apache access log

   vi ew `ls -1 access_log.* | tail -n 1`

##### display embeded comments for every opt, usefull for auto documenting your script

   vi m -n -es -c 'g/# CommandParse/+2,/^\s\+esac/-1 d p | % d | put p | %<' -c 'g/^\([-+]\+[^)]\+\))/,/^\(\s\+[^- \t#]\|^$\)/-1 p' -c 'q!' $0

##### Compare local and remote files using SCP/VIM/DIFF

   vi mdiff local_dir1/local_file.xml scp://user@remote_host//remote_absolute_location/remote_file.xml

##### vi a remote file with port

   vi m sftp://[user@]host.domain.tld:[port]/[path/][file]

##### Open multiple files from STDIN with VIM

   vi m -p $(complicated command to list the files you want)

##### Edit a file on a remote host using vim

   vi m scp://username@host//path/to/somefile

##### Edit a file on a remote host using vim

   vi m scp://username@host//path/to/somefile

##### Open a file using vim in read only (like less)

   vi ew /file/name

##### Compare a file with the output of a command or compare the output of two commands

   vi mdiff foo.c <(bzr cat -r revno:-2 foo.c)

##### edit list of files in last command

   vi  `!!`

##### use !$ to retrieve filename used with last command

   vi m !$

##### Display a block of text with vim with offset, like with AWK

   vi m -e -s -c 'g/start_pattern/+1,/stop_pattern/-1 p' -cq file.txt

##### To get you started!

   vi mtutor

##### Compare a remote file with a local file

   vi mdiff <file> scp://[<user>@]<host>/<file>

##### Quickly write and run a C program.

   vi m test.c && gcc -x c -o a.out test.c && ./a.out && rm a.out test.c

##### [Ubuntu] Create a Python virtualenv

   vi rtualenv no-site-packages distribute -p /usr/bin/python3.3 ~/.virtualenvs/pywork3

##### Format source code noninteractively (possibly en masse) using vim's formatting functionality

   vi m +"bufdo norm gg=G" +wa +qa FILES

##### edit a executable script

   vi e(){vi $(which $1)}

##### Open (in vim) all modified files in a git repository

   vi m -p `git porcelain | awk {print $2}`

##### VIM version 7: edit in tabs

   vi m -p file1 file2 ...

##### Edit the Last Changed File

   vi m $( ls -t | head -n1 )

##### vimdiff local and remote files via ssh

   vi mdiff /path/to/file scp://remotehost//path/to/file

##### open two files on top of each other in vim (one window, two panes)

   vi m -o file1 file2

##### Open files in a split windowed Vim

   vi m -o file1 file2...

##### Remove a range of lines from a file

   vi  +'<start>,<end>d' +wq <filename>

##### Edit a file inside a compressed archive without extracting it

   vi m some-archive.tar.gz

##### Opens vi/vim at pattern in file

   vi  +/pattern [file]

##### Use Vim to convert text to HTML.

   vi mhtml() { [[ -f "$1" ]] || return 1; vim +'syn on | run! syntax/2html.vim | wq | q' "$1";}

##### Open (in vim) all modified files in a git repository

   vi m `git status porcelain | sed -ne 's/^ M //p'`

##### Edit file(s) that has been just listed

   vi  `!!`

##### Add Password Protection to a file your editing in vim.

   vi m -x <FILENAME>

##### Find files containing string and open in vim

   vi m $(grep test *)

##### vimdiff to remotehost

   vi mdiff tera.py <(ssh -A testserver "cat tera.py")

##### Add Password Protection to a file your editing in vim.

   vi m -x <FILENAME>

##### Add Password Protection to a file your editing in vim.

   vi m -x <FILENAME>

##### Add Password Protection to a file your editing in vim.

   vi m -x <FILENAME>

##### Speed up or slow down video (and audio)

   vi deospeed() { vname="$1"; speedc="$2"; vs=$(python3 -c "print(1/$speedc)"); aspeed=$(python3 -c "print(1*$speedc)"); ffmpeg -i "$vname" -filter:a "atempo=$aspeed" -filter:v "setpts=$vs*PTS" "${3:-converted_$1}"; }

##### vim multiple files at one time, split vertically.

   vi m -O file1 file2

##### Open (in vim) all modified files in a git repository

   vi m `git diff name-only`

##### Find all files currently open in Vim and/or gVim

   vi m -r 2>&1 | grep '\.sw.' -A 5 | grep 'still running' -B 5

##### Delete C style comments using vim

   vi m suite.js -c '%s!/\*\_.\{-}\*/!!g'

##### get colorful side-by-side diffs of files in svn with vim

   vi mdiff <(svn cat "$1") "$1"

##### vi a remote file

   vi  scp://username@host//path/to/somefile

##### vi a remote file with port

   vi  scp://username@host:12345//path/to/somefile

##### start vim in diff mode

   vi mdiff file{1,2}

##### vi a new file with execution mode

   vi x(){ vim +'w | set ar | silent exe "!chmod +x %" | redraw!' $@; }

##### List of all vim features

   vi m version | grep -P '^(\+|\-)' | sed 's/\s/\n/g' | grep -Pv '^ ?$'

##### Colored diff ( via vim ) on 2 remotes files on your local computer.

   vi mdiff scp://root@server-foo.com//etc/snmp/snmpd.conf scp://root@server-bar.com//etc/snmp/snmpd.conf

##### Edit 2 or more files in vim using vim -d

   vi m -d '+diffoff!' file1 file2

##### Load all files (including in subdirs), whose name matches a substring, into Vim

   vi m $(find . ! -path \*.svn\* -type f -iname \*foo\*)

##### Edit 2 or more files in vim using vim -d

   vi m -O file1 file2

##### Start vim without initialization

   vi m -u NONE yourfile

##### Update your journal

   vi  ~/journal/$(date +%F)

##### Edit a file in vim (at the first error) if it is not well formed xml.

   vi mlint(){ eval $(xmllint noout "$1" 2>&1 | awk -F: '/parser error/{print "vim \""$1"\" +"$2; exit}'); }

##### Compare a remote file with a local file

   vi mdiff scp://[user@]host1/<file> scp://[user@]host2/<file>

##### Go to the Nth line of file [text editor]

   vi  +4 /etc/mtab

##### Edit a script that's somewhere in your path.

   vi m `which <scriptname>`

##### Using vim to save and run your python script.

   vi m ... :nmap <F5> :w^M:!python %<CR>

##### Remove a line from a file using sed (useful for updating known SSH server keys when they change)

   vi  +<lineNumber>d +wq <filename>

##### Remove a range of lines from a file

   vi  +{<end>..<start>}d +wq <filename>

##### Remove a range of lines from a file

   vi  +START,ENDd +wq sample.txt

##### Run a command, redirecting output to a file, then edit the file with vim.

   vi mcmd() { $1 > $2 && vim $2; }

##### Load your [git-controlled] working files into the vi arglist.

   vi m $(git diff origin/master name-only)

##### Edit the /etc/sudoers config file the right way.

   vi sudo

##### Open Vim with two windows

   vi m -c new myfile

##### Grep across a directory and open matching files in vim (one tab per file)

   vi m -p `grep -r PATTERN TARGET_DIR | cut -f1 -d: | sort | uniq | xargs echo -n`

##### Open (in vim) all modified files in a git repository

   vi m `git status | grep modified | awk '{print $3}'`

##### open two files side by side in vim (one window, two panes)

   vi m -O file1 file2

##### This little command edits your gitignore from anywhere in your repo

   vi m $(git rev-parse show-toplevel)/.gitignore

##### View latest apache access log

   vi ew `ls -1 access_log.* | tail -n 1`

##### display embeded comments for every opt, usefull for auto documenting your script

   vi m -n -es -c 'g/# CommandParse/+2,/^\s\+esac/-1 d p | % d | put p | %<' -c 'g/^\([-+]\+[^)]\+\))/,/^\(\s\+[^- \t#]\|^$\)/-1 p' -c 'q!' $0

##### Compare local and remote files using SCP/VIM/DIFF

   vi mdiff local_dir1/local_file.xml scp://user@remote_host//remote_absolute_location/remote_file.xml

##### vi a remote file with port

   vi m sftp://[user@]host.domain.tld:[port]/[path/][file]

##### Open multiple files from STDIN with VIM

   vi m -p $(complicated command to list the files you want)

##### Edit a file on a remote host using vim

   vi m scp://username@host//path/to/somefile

##### Open a file using vim in read only (like less)

   vi ew /file/name

##### Compare a file with the output of a command or compare the output of two commands

   vi mdiff foo.c <(bzr cat -r revno:-2 foo.c)

##### edit list of files in last command

   vi  `!!`

##### use !$ to retrieve filename used with last command

   vi m !$

##### Display a block of text with vim with offset, like with AWK

   vi m -e -s -c 'g/start_pattern/+1,/stop_pattern/-1 p' -cq file.txt

##### To get you started!

   vi mtutor

##### Compare a remote file with a local file

   vi mdiff <file> scp://[<user>@]<host>/<file>

##### Quickly write and run a C program.

   vi m test.c && gcc -x c -o a.out test.c && ./a.out && rm a.out test.c
