# zcat

##### Read manpages without the man(1) command

   zcat  /usr/share/man/man1/man.1.gz | nroff -man | less

##### Search gzipped files

   zcat  /usr/share/man/man1/grep.1.gz | grep "color"

##### Restore mysql database uncompressing on the fly.

   zcat  database.sql.gz | mysql -uroot -p'passwd' database

##### Analyse compressed Apache access logs for the most commonly requested pages

   zcat  access_log.*.gz | awk '{print $7}' | sort | uniq -c | sort -n | tail -n 20

##### concatenate compressed and uncompressed logs

   zcat  -f $(ls -tr access.log*)

##### Parse compressed apache error log file and show top errors

   zcat  error.log.gz | sed 's^\[.*\]^^g' | sed 's^\, referer: [^\n]*^^g' | sort | uniq -c | sort -n

##### Scan a gz file for non-printable characters and display each line number and line that contains them.

   zcat  a_big_file.gz | sed -ne "$(zcat a_big_file.gz | tr -d "[:print:]" | cat -n | grep -vP "^ *\d+\t$" | cut -f 1 | sed -e "s/\([0-9]\+\)/\1=;\1p;/" | xargs)" | tr -c "[:print:]\n" "?"

##### Pipe a textfile to vim and move the cursor to a certain line

   zcat  /usr/share/doc/vim-common/README.gz | vim -g +23 -

##### Quick searching with less

   zcat  file.gz | less +/search_pattern

##### grep compressed log files without extracting

   zcat  log.tar.gz | grep -a -i "string"

##### save manpage as html file

   zcat  `man -w manpage` | groff -mandoc -T html - > filename.html

##### Restore mysql database uncompressing on the fly.

   zcat  database.sql.gz | mysql -uroot -p'passwd' database

##### Analyse compressed Apache access logs for the most commonly requested pages

   zcat  access_log.*.gz | awk '{print $7}' | sort | uniq -c | sort -n | tail -n 20

##### concatenate compressed and uncompressed logs

   zcat  -f $(ls -tr access.log*)

##### Parse compressed apache error log file and show top errors

   zcat  error.log.gz | sed 's^\[.*\]^^g' | sed 's^\, referer: [^\n]*^^g' | sort | uniq -c | sort -n

##### Scan a gz file for non-printable characters and display each line number and line that contains them.

   zcat  a_big_file.gz | sed -ne "$(zcat a_big_file.gz | tr -d "[:print:]" | cat -n | grep -vP "^ *\d+\t$" | cut -f 1 | sed -e "s/\([0-9]\+\)/\1=;\1p;/" | xargs)" | tr -c "[:print:]\n" "?"

##### Pipe a textfile to vim and move the cursor to a certain line

   zcat  /usr/share/doc/vim-common/README.gz | vim -g +23 -

##### Quick searching with less

   zcat  file.gz | less +/search_pattern

##### grep compressed log files without extracting

   zcat  log.tar.gz | grep -a -i "string"

##### save manpage as html file

   zcat  `man -w manpage` | groff -mandoc -T html - > filename.html
