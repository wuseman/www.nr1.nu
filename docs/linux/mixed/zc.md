# zc

##### Read manpages without the man(1) command

   zc at /usr/share/man/man1/man.1.gz | nroff -man | less

##### command line calculator (zsh version)

   zc  () { for exp in $argv; do print "$exp = $(( exp ))"; done; }

##### Search gzipped files

   zc at /usr/share/man/man1/grep.1.gz | grep "color"

##### Restore mysql database uncompressing on the fly.

   zc at database.sql.gz | mysql -uroot -p'passwd' database

##### Analyse compressed Apache access logs for the most commonly requested pages

   zc at access_log.*.gz | awk '{print $7}' | sort | uniq -c | sort -n | tail -n 20

##### concatenate compressed and uncompressed logs

   zc at -f $(ls -tr access.log*)

##### Parse compressed apache error log file and show top errors

   zc at error.log.gz | sed 's^\[.*\]^^g' | sed 's^\, referer: [^\n]*^^g' | sort | uniq -c | sort -n

##### Scan a gz file for non-printable characters and display each line number and line that contains them.

   zc at a_big_file.gz | sed -ne "$(zcat a_big_file.gz | tr -d "[:print:]" | cat -n | grep -vP "^ *\d+\t$" | cut -f 1 | sed -e "s/\([0-9]\+\)/\1=;\1p;/" | xargs)" | tr -c "[:print:]\n" "?"

##### Pipe a textfile to vim and move the cursor to a certain line

   zc at /usr/share/doc/vim-common/README.gz | vim -g +23 -

##### Quick searching with less

   zc at file.gz | less +/search_pattern

##### grep compressed log files without extracting

   zc at log.tar.gz | grep -a -i "string"

##### save manpage as html file

   zc at `man -w manpage` | groff -mandoc -T html - > filename.html

##### Restore mysql database uncompressing on the fly.

   zc at database.sql.gz | mysql -uroot -p'passwd' database

##### Analyse compressed Apache access logs for the most commonly requested pages

   zc at access_log.*.gz | awk '{print $7}' | sort | uniq -c | sort -n | tail -n 20

##### concatenate compressed and uncompressed logs

   zc at -f $(ls -tr access.log*)

##### Parse compressed apache error log file and show top errors

   zc at error.log.gz | sed 's^\[.*\]^^g' | sed 's^\, referer: [^\n]*^^g' | sort | uniq -c | sort -n

##### Scan a gz file for non-printable characters and display each line number and line that contains them.

   zc at a_big_file.gz | sed -ne "$(zcat a_big_file.gz | tr -d "[:print:]" | cat -n | grep -vP "^ *\d+\t$" | cut -f 1 | sed -e "s/\([0-9]\+\)/\1=;\1p;/" | xargs)" | tr -c "[:print:]\n" "?"

##### Pipe a textfile to vim and move the cursor to a certain line

   zc at /usr/share/doc/vim-common/README.gz | vim -g +23 -

##### Quick searching with less

   zc at file.gz | less +/search_pattern

##### grep compressed log files without extracting

   zc at log.tar.gz | grep -a -i "string"

##### save manpage as html file

   zc at `man -w manpage` | groff -mandoc -T html - > filename.html
