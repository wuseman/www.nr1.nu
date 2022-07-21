# tail

##### Monitor a file with tail with timestamps added

   tail  -f file | awk '{now=strftime("%F %T%z\t");sub(/^/, now);print}'

##### display emerge.log date in a human friendly way

   tail  /var/log/emerge.log | awk -F: '{print strftime("%Y%m%d %X %Z", $1),$2}'

##### show filenames in tail output with color

   tail  -f *.log | grep color=always '|==>.+<=='

##### Realtime lines per second in a log file

   tail  -F /var/log/nginx/access.log | python -c 'exec("import sys,time\nl=0\ne=int(time.time())\nfor line in sys.stdin:\n\tt = int(time.time())\n\tl += 1\n\tif t > e:\n\t\te = t\n\t\tprint l\n\t\tl = 0")'

##### Watch end of files real time, especially log files

   tail  -f ~/.bash_history

##### speak a chat log file while it's running

   tail  -f LOGFILE | awk '{system("say \"" $0 "\"");}'

##### Realtime lines per second in a log file

   tail  -f logfile | logtop

##### a tail function for automatic smart output

   tail () { thbin="/usr/bin/tail"; if [ "${1:0:1}" != "-" ]; then fc=$(($#==0?1:$#)); lpf="$((($LINES - 3 - 2 * $fc) / $fc))"; lpf="$(($lpf<1?2:$lpf))"; [ $fc -eq 1 ] && $thbin -n $lpf "$@" | /usr/bin/fold -w $COLUMNS | $thbin -n $lpf || $thbin -n $lpf...

##### View new log messages in real time

   tail  -f /var/log/messages

##### tail, with specific pattern colored

   tail  -f file | egrep color=always $\|PATTERN

##### View last 100 lines of your SSH log

   tail  /var/log/auth.log -n 100

##### Quick scrape of recent mobile home dir file sync for Mac Admins - tested with shell: bash, Mac OSX 10.5

   tail  -n 20 ~/Library/Logs/FileSyncAgent.log

##### colorize and continuously tail two files

   tail  -f to.log | colorize.pl +l10:".*" &

##### Print just line 4 from a textfile

   tail  -n +4 | head -n 1

##### To print a specific line from a file

   tail  -n +<N> <file> | head -n 1

##### Print just line 4 from a textfile

   tail  -n 4 | head -n 1

##### Look at logs startring at EOF

   tail  -f <file>

##### Monitor a file with tail with timestamps added

   tail  -f file | while read line; do echo -n $(date -u -Ins); echo -e "\t$line"; done

##### tail, with specific pattern colored

   tail  -F file | egrep color 'pattern|$'

##### tail: watch a filelog

   tail  -n 50 -f /var/log/apache2/access_log /var/log/apache2/error_log

##### Follow the flow of a log file

   tail f file.log

##### Always tail/edit/grep the latest file in a directory of timestamped files

   tail  -f /path/to/timestamped/files/file-*(om[1])

##### useful tail on /var/log to avoid old logs or/and gzipped files

   tail  -f *[!.1][!.gz]

##### Live filter a log file using grep and show x# of lines above and below

   tail  -f <filename> | grep -C <# of lines to show above and below> <text>

##### monitor a tail -f command with multiple processes

   tail  -f somefile |tee >(grep line-buffered '1' > one.txt) |tee >(grep line-buffered '2' > two.txt)

##### Realtime apache hits per second

   tail  -f access_log | cut -c2-21 | uniq -c

##### Annotate tail -f with timestamps

   tail  -f file | while read; do echo "$(date +%T.%N) $REPLY"; done

##### Analyse an Apache access log for the most common IP addresses

   tail  -10000 access_log | awk '{print $1}' | sort | uniq -c | sort -n | tail

##### Count number of hits per IP address in last 2000 lines of apache logs and print the IP and hits if hits > 20

   tail  -n2000 /var/www/domains/*/*/logs/access_log | awk '{print $1}' | sort | uniq -c | sort -n | awk '{ if ($1 > 20)print $1,$2}'

##### Monitor a file with tail with timestamps added

   tail  -f file | while read line; do printf "$(date -u '+%F %T%z')\t$line\n"; done

##### Realtime lines per second in a log file

   tail  -f  /var/log/logfile|perl -e 'while (<>) {$l++;if (time > $e) {$e=time;print "$l\n";$l=0}}'

##### Deleting / Ignoring lines from the top of a file

   tail  -n +2 foo.txt

##### Prints new content of files

   tail  -f file1 (file2 .. fileN)

##### Watch contents of a file grow

   tail  -n 0 -f /var/log/messages

##### read squid logs with human-readable timestamp

   tail  -f /var/log/squid/access.log | perl -p -e 's/^([0-9]*)/"[".localtime($1)."]"/e'

##### Tail a log file with long lines truncated

   tail  -f logfile.log | cut -b 1-80

##### Tail a log-file over the network

   tail  -f error_log | nc -l 1234

##### Monitor a file with tail with timestamps added

   tail  -f file |xargs -IX printf "$(date -u)\t%s\n" X

##### Lines per second in a log file

   tail  -F some.log | perl -ne 'print time(), "\n";' | uniq -c

##### Pipe STDOUT to vim

   tail  -1000 /some/file | vim -

##### coloured tail

   tail  -f FILE | perl -pe 's/KEYWORD/\e[1;31;43m$&\e[0m/g'

##### Annotate tail -f with timestamps

   tail  -f file | ts '%H:%M:%.S'

##### Anti DDOS

   tail  -f /var/www/logs/domain.com.log | grep "POST /scripts/blog-post.php" | grep -v 192.168. | awk '{print $1}' | xargs -I{}  iptables -I DDOS -s {} -j DROP

##### Follow tail by name (fix for rolling logs with tail -f)

   tail  -F file

##### make computer speaking to you :)

   tail  -f /var/log/messages | espeak

##### Tail postfix current maillog and grep for "criteria"

   tail  -f `ls -alst /var/log/maillog* | awk '{print $10} NR>0{exit};0'` | grep "criteria"

##### print/scan lines starting at record ###

   tail  +### MYFILE

##### Lines per second in a log file

   tail  -n0 -f access.log>/tmp/tmp.log & sleep 10; kill $! ; wc -l /tmp/tmp.log

##### show each new entry in system messages as a popup

   tail  -n0 -f /var/log/messages | while read line; do notify-send "System Message" "$line"; done

##### Run a command for blocks of output of another command

   tail  -f /var/log/messages | while read line; do accu="$line"; while read -t 1 more; do accu=`echo -e "$accu\n$more"`; done; notify-send "Syslog" "$accu"; done

##### Fill up disk space (for testing)

   tail  $0 >> $0

##### Print unique ipaddresses as they come in from Apache Access Log File

   tail  -f /var/log/apache2/access.log | awk -W interactive '!x[$1]++ {print $1}'

##### Log colorizer for OSX (ccze alternative)

   tail  -f /var/log/system.log | colorizer

##### Show and update a log file

   tail  -F logfile

##### Log Lines Per Second apache, nginx, haproxy and/or squid

   tail  -F /var/log/apache2/access.log | pv -N RAW -lc 1>/dev/null

##### Grep live log tailing

   tail  -f some_log_file.log | grep line-buffered the_thing_i_want

##### Check the last 15 package operations (on yum systems)

   tail  -n 15 /var/log/yum.log | tac

##### Watch PHP log, without knowing it's location (gets from php.ini)

   tail  -v -f $(php -i | grep "^[ \t]*error_log" | awk -F"=>" '{ print $2; }' | sed 's/^[ ]*//g')

##### Use tail -f effectively by omiting unwanted lines containing particular pattern of words using grep -v.

   tail  -f test | grep -v "bea"

##### Tail -f: truncate and search

   tail  -f LOG_FILE | grep line-buffered SEARCH_STR | cut -d " " -f 7-

##### filter rails log to count requests sliced in seconds

   tail  -f production.log | perl -ne 'if (/^Completed.in.(\d+)/){$d = int($1/1000);print "\n";$f{$d}++;for $t (sort(keys(%f))){print $t."s: ".$f{$t}."\n"}}'

##### coloured tail

   tail  -f FILE | ccze

##### speak a chat log file while it's running

   tail  -f LOGFILE | perl -ne '`say "$_"`;'

##### Grep live log tailing

   tail  -f some_log_file.log | grep the_thing_i_want

##### compute the qps according to the latest n lines of logs

   tail  -n 1000 access.log | grep "200 POST" | awk '{print substr($3,0,9)}' | awk '{data[$0]++}END{for(item in data){print item, data[item]}}'

##### This is a specialized command for Ericsson CS5.2 - Getting the test case trace on SDP

   tail  -1f /var/opt/fds/logs/TraceEventLogFile.txt.0 | grep <msisdn> | tee <test-case-id>.trace |  tr '|' '\n'

##### count & sort one field of the log files

   tail  -1000 `ls -ltr /var/log/CF* |tail -1|awk '{print $9}'`|cut -d "," -f 17|sort|uniq -c |sort -k2

##### Grep live log tailing, tracks file open/close

   tail  -F some_log_file.log | grep the_thing_i_want

##### Realtime lines per second in a log file

   tail  -f access.log | pv -l -i10 -r >/dev/null

##### Watch who requests what page from apache logs

   tail  -f access_log | awk '{print $1 , $12}'

##### Grep live log tailing

   tail  -F some_log_file.log | grep line-buffered the_thing_i_want

##### Syslog System Reporting in a shell

   tail  -f retry /var/log/syslog /var/log/auth.log | ccze -A

##### Read Squid logs with human-readable timestamp in Pfsense

   tail  -f /var/squid/logs/access.log | perl -pe 's/(\d+)/localtime($1)/e'

##### read squid logs with human-readable timestamp

   tail  -f /var/log/squid/access.loc | ccze -CA

##### Tail -f at your own pace

   tail  -fs 1 somefile

##### delete first X lines of a file

   tail  +56 file > newfile

##### Pipe system log to espeak

   tail  -f /var/log/messages.log | while read line ; do echo $line | cut -d \  -f5- | sed s/\\[[0-9]*\\]// | espeak ; done

##### Colorized tail using sed

   tail  -f ~/make.out | sed -e 's/\(...%\)/\o033[32m\1\o033[39m/' -e 's/\(.*[Ww][Aa][Rr][Nn][Ii][Nn][Gg].*\)/\o033[33m\1\o033[39m/' -e 's/\(.*[Ee][Rr][Rr][Oo][Rr].*\)/\o033[31m\1\o033[39m/'

##### colored tail

   tail  -f FILE | grep color=always KEYWORD

##### Monitor a file with tail with timestamps added

   tail  -f file | awk '{now=strftime("%F %T%z\t");sub(/^/, now);print}'

##### Monitor a file with tail with timestamps added

   tail  -f file | while read line; do echo -n $(date -u -Ins); echo -e "\t$line"; done

##### tail, with specific pattern colored

   tail  -F file | egrep color 'pattern|$'

##### tail: watch a filelog

   tail  -n 50 -f /var/log/apache2/access_log /var/log/apache2/error_log

##### Follow the flow of a log file

   tail f file.log

##### Always tail/edit/grep the latest file in a directory of timestamped files

   tail  -f /path/to/timestamped/files/file-*(om[1])

##### useful tail on /var/log to avoid old logs or/and gzipped files

   tail  -f *[!.1][!.gz]

##### Live filter a log file using grep and show x# of lines above and below

   tail  -f <filename> | grep -C <# of lines to show above and below> <text>

##### monitor a tail -f command with multiple processes

   tail  -f somefile |tee >(grep line-buffered '1' > one.txt) |tee >(grep line-buffered '2' > two.txt)

##### Realtime apache hits per second

   tail  -f access_log | cut -c2-21 | uniq -c

##### Annotate tail -f with timestamps

   tail  -f file | while read; do echo "$(date +%T.%N) $REPLY"; done

##### Analyse an Apache access log for the most common IP addresses

   tail  -10000 access_log | awk '{print $1}' | sort | uniq -c | sort -n | tail

##### Count number of hits per IP address in last 2000 lines of apache logs and print the IP and hits if hits > 20

   tail  -n2000 /var/www/domains/*/*/logs/access_log | awk '{print $1}' | sort | uniq -c | sort -n | awk '{ if ($1 > 20)print $1,$2}'

##### Monitor a file with tail with timestamps added

   tail  -f file | while read line; do printf "$(date -u '+%F %T%z')\t$line\n"; done

##### Realtime lines per second in a log file

   tail  -f  /var/log/logfile|perl -e 'while (<>) {$l++;if (time > $e) {$e=time;print "$l\n";$l=0}}'

##### Deleting / Ignoring lines from the top of a file

   tail  -n +2 foo.txt

##### Prints new content of files

   tail  -f file1 (file2 .. fileN)

##### Watch contents of a file grow

   tail  -n 0 -f /var/log/messages

##### read squid logs with human-readable timestamp

   tail  -f /var/log/squid/access.log | perl -p -e 's/^([0-9]*)/"[".localtime($1)."]"/e'

##### Tail a log file with long lines truncated

   tail  -f logfile.log | cut -b 1-80

##### Tail a log-file over the network

   tail  -f error_log | nc -l 1234

##### Monitor a file with tail with timestamps added

   tail  -f file |xargs -IX printf "$(date -u)\t%s\n" X

##### Lines per second in a log file

   tail  -F some.log | perl -ne 'print time(), "\n";' | uniq -c

##### Pipe STDOUT to vim

   tail  -1000 /some/file | vim -

##### coloured tail

   tail  -f FILE | perl -pe 's/KEYWORD/\e[1;31;43m$&\e[0m/g'

##### Annotate tail -f with timestamps

   tail  -f file | ts '%H:%M:%.S'

##### Anti DDOS

   tail  -f /var/www/logs/domain.com.log | grep "POST /scripts/blog-post.php" | grep -v 192.168. | awk '{print $1}' | xargs -I{}  iptables -I DDOS -s {} -j DROP

##### Follow tail by name (fix for rolling logs with tail -f)

   tail  -F file

##### make computer speaking to you :)

   tail  -f /var/log/messages | espeak

##### Tail postfix current maillog and grep for "criteria"

   tail  -f `ls -alst /var/log/maillog* | awk '{print $10} NR>0{exit};0'` | grep "criteria"

##### print/scan lines starting at record ###

   tail  +### MYFILE

##### Lines per second in a log file

   tail  -n0 -f access.log>/tmp/tmp.log & sleep 10; kill $! ; wc -l /tmp/tmp.log

##### show each new entry in system messages as a popup

   tail  -n0 -f /var/log/messages | while read line; do notify-send "System Message" "$line"; done

##### Run a command for blocks of output of another command

   tail  -f /var/log/messages | while read line; do accu="$line"; while read -t 1 more; do accu=`echo -e "$accu\n$more"`; done; notify-send "Syslog" "$accu"; done

##### Fill up disk space (for testing)

   tail  $0 >> $0

##### Print unique ipaddresses as they come in from Apache Access Log File

   tail  -f /var/log/apache2/access.log | awk -W interactive '!x[$1]++ {print $1}'

##### Log colorizer for OSX (ccze alternative)

   tail  -f /var/log/system.log | colorizer

##### Show and update a log file

   tail  -F logfile

##### Log Lines Per Second apache, nginx, haproxy and/or squid

   tail  -F /var/log/apache2/access.log | pv -N RAW -lc 1>/dev/null

##### Grep live log tailing

   tail  -f some_log_file.log | grep line-buffered the_thing_i_want

##### Check the last 15 package operations (on yum systems)

   tail  -n 15 /var/log/yum.log | tac

##### Watch PHP log, without knowing it's location (gets from php.ini)

   tail  -v -f $(php -i | grep "^[ \t]*error_log" | awk -F"=>" '{ print $2; }' | sed 's/^[ ]*//g')

##### Use tail -f effectively by omiting unwanted lines containing particular pattern of words using grep -v.

   tail  -f test | grep -v "bea"

##### Tail -f: truncate and search

   tail  -f LOG_FILE | grep line-buffered SEARCH_STR | cut -d " " -f 7-

##### filter rails log to count requests sliced in seconds

   tail  -f production.log | perl -ne 'if (/^Completed.in.(\d+)/){$d = int($1/1000);print "\n";$f{$d}++;for $t (sort(keys(%f))){print $t."s: ".$f{$t}."\n"}}'

##### coloured tail

   tail  -f FILE | ccze

##### speak a chat log file while it's running

   tail  -f LOGFILE | perl -ne '`say "$_"`;'

##### Grep live log tailing

   tail  -f some_log_file.log | grep the_thing_i_want

##### compute the qps according to the latest n lines of logs

   tail  -n 1000 access.log | grep "200 POST" | awk '{print substr($3,0,9)}' | awk '{data[$0]++}END{for(item in data){print item, data[item]}}'

##### This is a specialized command for Ericsson CS5.2 - Getting the test case trace on SDP

   tail  -1f /var/opt/fds/logs/TraceEventLogFile.txt.0 | grep <msisdn> | tee <test-case-id>.trace |  tr '|' '\n'

##### count & sort one field of the log files

   tail  -1000 `ls -ltr /var/log/CF* |tail -1|awk '{print $9}'`|cut -d "," -f 17|sort|uniq -c |sort -k2

##### Grep live log tailing, tracks file open/close

   tail  -F some_log_file.log | grep the_thing_i_want

##### Realtime lines per second in a log file

   tail  -f access.log | pv -l -i10 -r >/dev/null

##### Watch who requests what page from apache logs

   tail  -f access_log | awk '{print $1 , $12}'

##### Grep live log tailing

   tail  -F some_log_file.log | grep line-buffered the_thing_i_want

##### Syslog System Reporting in a shell

   tail  -f retry /var/log/syslog /var/log/auth.log | ccze -A

##### Read Squid logs with human-readable timestamp in Pfsense

   tail  -f /var/squid/logs/access.log | perl -pe 's/(\d+)/localtime($1)/e'

##### read squid logs with human-readable timestamp

   tail  -f /var/log/squid/access.loc | ccze -CA

##### Tail -f at your own pace

   tail  -fs 1 somefile

##### delete first X lines of a file

   tail  +56 file > newfile
