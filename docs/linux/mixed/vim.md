# vim

##### Open all files with a regular expression in vim

   vim  $(grep [REGULAR_EXPRESSION] -R * | cut -d":" -f1 | uniq)

##### find/edit your forgotten buddy pounces for pidgin

   vim  ~/.purple/pounces.xml

##### Find and edit multiple files given a regex in vim buffers

   vim  `find . -iname '*.php'`

##### make comments invisible when editing a file

   vim  -c'highlight Comment ctermfg=white' my.conf

##### Edit all source files of project with vim, each on separate tab

   vim  -p `ls *.java *.xml *.txt *.bnd 2>/dev/null`

##### use vim to get colorful diff output

   vim diff file1 file2

##### VIM version 7: edit in tabs

   vim  -p file1 file2 ...

##### Open files in tabs with vim

   vim  -p file1 file2 [...]

##### bash / vim workflow

   vim  -

##### open two files in vim

   vim  file1 file2

##### Go to a specified line in a file

   vim  +143 filename.txt

##### read txt or txt.gz files

   vim  txt.gz

##### Open a file using vim in read only (like less)

   vim  -R /etc/passwd

##### The single most useful thing in bash

   vim  ~/.inputrc

##### Edit the Last Changed File

   vim  $( ls -t | head -n1 )

##### vimdiff local and remote files via ssh

   vim diff /path/to/file scp://remotehost//path/to/file

##### open two files on top of each other in vim (one window, two panes)

   vim  -o file1 file2

##### Open files in a split windowed Vim

   vim  -o file1 file2...

##### Edit a file inside a compressed archive without extracting it

   vim  some-archive.tar.gz

##### Use Vim to convert text to HTML.

   vim html() { [[ -f "$1" ]] || return 1; vim +'syn on | run! syntax/2html.vim | wq | q' "$1";}

##### Open (in vim) all modified files in a git repository

   vim  `git status porcelain | sed -ne 's/^ M //p'`

##### Add Password Protection to a file your editing in vim.

   vim  -x <FILENAME>

##### Find files containing string and open in vim

   vim  $(grep test *)

##### vimdiff to remotehost

   vim diff tera.py <(ssh -A testserver "cat tera.py")

##### Add Password Protection to a file your editing in vim.

   vim  -x <FILENAME>

##### Add Password Protection to a file your editing in vim.

   vim  -x <FILENAME>

##### Add Password Protection to a file your editing in vim.

   vim  -x <FILENAME>

##### Add Password Protection to a file your editing in vim.

   vim  -x <FILENAME>

##### vim multiple files at one time, split vertically.

   vim  -O file1 file2

##### Open (in vim) all modified files in a git repository

   vim  `git diff name-only`

##### Find all files currently open in Vim and/or gVim

   vim  -r 2>&1 | grep '\.sw.' -A 5 | grep 'still running' -B 5

##### Delete C style comments using vim

   vim  suite.js -c '%s!/\*\_.\{-}\*/!!g'

##### get colorful side-by-side diffs of files in svn with vim

   vim diff <(svn cat "$1") "$1"

##### start vim in diff mode

   vim diff file{1,2}

##### List of all vim features

   vim  version | grep -P '^(\+|\-)' | sed 's/\s/\n/g' | grep -Pv '^ ?$'

##### Colored diff ( via vim ) on 2 remotes files on your local computer.

   vim diff scp://root@server-foo.com//etc/snmp/snmpd.conf scp://root@server-bar.com//etc/snmp/snmpd.conf

##### Edit 2 or more files in vim using vim -d

   vim  -d '+diffoff!' file1 file2

##### Load all files (including in subdirs), whose name matches a substring, into Vim

   vim  $(find . ! -path \*.svn\* -type f -iname \*foo\*)

##### Edit 2 or more files in vim using vim -d

   vim  -O file1 file2

##### Start vim without initialization

   vim  -u NONE yourfile

##### Edit a file in vim (at the first error) if it is not well formed xml.

   vim lint(){ eval $(xmllint noout "$1" 2>&1 | awk -F: '/parser error/{print "vim \""$1"\" +"$2; exit}'); }

##### Compare a remote file with a local file

   vim diff scp://[user@]host1/<file> scp://[user@]host2/<file>

##### Edit a script that's somewhere in your path.

   vim  `which <scriptname>`

##### Using vim to save and run your python script.

   vim  ... :nmap <F5> :w^M:!python %<CR>

##### Run a command, redirecting output to a file, then edit the file with vim.

   vim cmd() { $1 > $2 && vim $2; }

##### Load your [git-controlled] working files into the vi arglist.

   vim  $(git diff origin/master name-only)

##### Open Vim with two windows

   vim  -c new myfile

##### Grep across a directory and open matching files in vim (one tab per file)

   vim  -p `grep -r PATTERN TARGET_DIR | cut -f1 -d: | sort | uniq | xargs echo -n`

##### Open (in vim) all modified files in a git repository

   vim  `git status | grep modified | awk '{print $3}'`

##### open two files side by side in vim (one window, two panes)

   vim  -O file1 file2

##### This little command edits your gitignore from anywhere in your repo

   vim  $(git rev-parse show-toplevel)/.gitignore

##### display embeded comments for every opt, usefull for auto documenting your script

   vim  -n -es -c 'g/# CommandParse/+2,/^\s\+esac/-1 d p | % d | put p | %<' -c 'g/^\([-+]\+[^)]\+\))/,/^\(\s\+[^- \t#]\|^$\)/-1 p' -c 'q!' $0

##### Compare local and remote files using SCP/VIM/DIFF

   vim diff local_dir1/local_file.xml scp://user@remote_host//remote_absolute_location/remote_file.xml

##### vi a remote file with port

   vim  sftp://[user@]host.domain.tld:[port]/[path/][file]

##### Open multiple files from STDIN with VIM

   vim  -p $(complicated command to list the files you want)

##### Edit a file on a remote host using vim

   vim  scp://username@host//path/to/somefile

##### Edit a file on a remote host using vim

   vim  scp://username@host//path/to/somefile

##### Compare a file with the output of a command or compare the output of two commands

   vim diff foo.c <(bzr cat -r revno:-2 foo.c)

##### use !$ to retrieve filename used with last command

   vim  !$

##### Display a block of text with vim with offset, like with AWK

   vim  -e -s -c 'g/start_pattern/+1,/stop_pattern/-1 p' -cq file.txt

##### To get you started!

   vim tutor

##### Compare a remote file with a local file

   vim diff <file> scp://[<user>@]<host>/<file>

##### Quickly write and run a C program.

   vim  test.c && gcc -x c -o a.out test.c && ./a.out && rm a.out test.c

##### Format source code noninteractively (possibly en masse) using vim's formatting functionality

   vim  +"bufdo norm gg=G" +wa +qa FILES

##### Open (in vim) all modified files in a git repository

   vim  -p `git porcelain | awk {print $2}`

##### VIM version 7: edit in tabs

   vim  -p file1 file2 ...

##### Edit the Last Changed File

   vim  $( ls -t | head -n1 )

##### vimdiff local and remote files via ssh

   vim diff /path/to/file scp://remotehost//path/to/file

##### open two files on top of each other in vim (one window, two panes)

   vim  -o file1 file2

##### Open files in a split windowed Vim

   vim  -o file1 file2...

##### Edit a file inside a compressed archive without extracting it

   vim  some-archive.tar.gz

##### Use Vim to convert text to HTML.

   vim html() { [[ -f "$1" ]] || return 1; vim +'syn on | run! syntax/2html.vim | wq | q' "$1";}

##### Open (in vim) all modified files in a git repository

   vim  `git status porcelain | sed -ne 's/^ M //p'`

##### Add Password Protection to a file your editing in vim.

   vim  -x <FILENAME>

##### Find files containing string and open in vim

   vim  $(grep test *)

##### vimdiff to remotehost

   vim diff tera.py <(ssh -A testserver "cat tera.py")

##### Add Password Protection to a file your editing in vim.

   vim  -x <FILENAME>

##### Add Password Protection to a file your editing in vim.

   vim  -x <FILENAME>

##### Add Password Protection to a file your editing in vim.

   vim  -x <FILENAME>

##### vim multiple files at one time, split vertically.

   vim  -O file1 file2

##### Open (in vim) all modified files in a git repository

   vim  `git diff name-only`

##### Find all files currently open in Vim and/or gVim

   vim  -r 2>&1 | grep '\.sw.' -A 5 | grep 'still running' -B 5

##### Delete C style comments using vim

   vim  suite.js -c '%s!/\*\_.\{-}\*/!!g'

##### get colorful side-by-side diffs of files in svn with vim

   vim diff <(svn cat "$1") "$1"

##### start vim in diff mode

   vim diff file{1,2}

##### List of all vim features

   vim  version | grep -P '^(\+|\-)' | sed 's/\s/\n/g' | grep -Pv '^ ?$'

##### Colored diff ( via vim ) on 2 remotes files on your local computer.

   vim diff scp://root@server-foo.com//etc/snmp/snmpd.conf scp://root@server-bar.com//etc/snmp/snmpd.conf

##### Edit 2 or more files in vim using vim -d

   vim  -d '+diffoff!' file1 file2

##### Load all files (including in subdirs), whose name matches a substring, into Vim

   vim  $(find . ! -path \*.svn\* -type f -iname \*foo\*)

##### Edit 2 or more files in vim using vim -d

   vim  -O file1 file2

##### Start vim without initialization

   vim  -u NONE yourfile

##### Edit a file in vim (at the first error) if it is not well formed xml.

   vim lint(){ eval $(xmllint noout "$1" 2>&1 | awk -F: '/parser error/{print "vim \""$1"\" +"$2; exit}'); }

##### Compare a remote file with a local file

   vim diff scp://[user@]host1/<file> scp://[user@]host2/<file>

##### Edit a script that's somewhere in your path.

   vim  `which <scriptname>`

##### Using vim to save and run your python script.

   vim  ... :nmap <F5> :w^M:!python %<CR>

##### Run a command, redirecting output to a file, then edit the file with vim.

   vim cmd() { $1 > $2 && vim $2; }

##### Load your [git-controlled] working files into the vi arglist.

   vim  $(git diff origin/master name-only)

##### Open Vim with two windows

   vim  -c new myfile

##### Grep across a directory and open matching files in vim (one tab per file)

   vim  -p `grep -r PATTERN TARGET_DIR | cut -f1 -d: | sort | uniq | xargs echo -n`

##### Open (in vim) all modified files in a git repository

   vim  `git status | grep modified | awk '{print $3}'`

##### open two files side by side in vim (one window, two panes)

   vim  -O file1 file2

##### This little command edits your gitignore from anywhere in your repo

   vim  $(git rev-parse show-toplevel)/.gitignore

##### display embeded comments for every opt, usefull for auto documenting your script

   vim  -n -es -c 'g/# CommandParse/+2,/^\s\+esac/-1 d p | % d | put p | %<' -c 'g/^\([-+]\+[^)]\+\))/,/^\(\s\+[^- \t#]\|^$\)/-1 p' -c 'q!' $0

##### Compare local and remote files using SCP/VIM/DIFF

   vim diff local_dir1/local_file.xml scp://user@remote_host//remote_absolute_location/remote_file.xml

##### vi a remote file with port

   vim  sftp://[user@]host.domain.tld:[port]/[path/][file]

##### Open multiple files from STDIN with VIM

   vim  -p $(complicated command to list the files you want)

##### Edit a file on a remote host using vim

   vim  scp://username@host//path/to/somefile

##### Compare a file with the output of a command or compare the output of two commands

   vim diff foo.c <(bzr cat -r revno:-2 foo.c)

##### use !$ to retrieve filename used with last command

   vim  !$

##### Display a block of text with vim with offset, like with AWK

   vim  -e -s -c 'g/start_pattern/+1,/stop_pattern/-1 p' -cq file.txt

##### To get you started!

   vim tutor

##### Compare a remote file with a local file

   vim diff <file> scp://[<user>@]<host>/<file>

##### Quickly write and run a C program.

   vim  test.c && gcc -x c -o a.out test.c && ./a.out && rm a.out test.c
