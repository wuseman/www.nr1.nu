# GNU Parallel

### Remove the annoying citation message

```sh 
echo "will cite"|parallel --citation &> /dev/null
```
### Full installation of GNU Parallel is as simple as:

```sh 
wget http://ftpmirror.gnu.org/parallel/parallel-20160622.tar.bz2
bzip2 -dc parallel-20160622.tar.bz2 | tar xvf -
cd parallel-20160622
./configure && make && sudo make install
```

### Personal Install

```sh 
wget http://ftpmirror.gnu.org/parallel/parallel-20160622.tar.bz2
bzip2 -dc parallel-20160622.tar.bz2 | tar xvf -
cd parallel-20160622
./configure --prefix=$HOME && make && make install
```

### Ping all tld domains of a host

![Full Script](https://pastebin.com/raw/BcYJjDcD)

Save all tld domains into a file: 

```sh 
curl -sL https://raw.githubusercontent.com/samayo/country-json/master/src/country-by-domain-tld.json \
      -A 'Mozilla/5.0 (Idoesnotusephones; Android 1.1; S20 Ultra) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/13.2' \
      |jq -r '.[].tld'|grep -v "null" >  ${wping_tld}.log
```

Check online status with colorized output

```sh 
seq 590 | parallel -j25 -a ${wping_hosts}.log     'ping -c 1 nr1{} >/dev/null \
        && echo -e "{}\r.,........................... [\e[1;32m..up\e[0m]\rHost: nr1{}" \
        || echo -e "{}\r.,........................... [\e[1;31m..dn\e[0m]\rHost: nr1{}"' 2>/dev/null
```

### To print the command before running them use --verbose:

```sh 
parallel --verbose echo {} ::: A B C
```

### This is even more visible when running 4 jobs with 10 arguments. The 10 arguments are being spread over 4 jobs:

```sh 
parallel --jobs 4 -m echo ::: 1 2 3 4 5 6 7 8 9 10
```
### Find all html files and compress them with gzip

```sh
find . -name '*.html' | parallel gzip                                                                                                       
```
###  To compress all html files in the current dir

```sh
parallel gzip ::: *.html                                                                                                                    
```

### Move all log files to destdir
```sh
ls | grep -E '\.log$' | parallel -m mv {} destdir                                                                                           
```

###  To remove the files pict0000.jpg .. pict9999.jpg you could do
```sh
seq -w 0 9999 | parallel rm pict{}.jpg                                                                                                      
```

###  Rn rm as many times needed to keep the command line short
```sh
seq -w 0 9999 | parallel -X rm pict{}.jpg                                                                                                   
```

### Generate an uncompressed version of .gz-files next to the .gz-file:

```sh 
parallel zcat {} ">"{.} ::: *.gz                                                                                                           
```

### Rename uper to lowercase

```sh 
ls | parallel 'mv {} "$(echo {} | tr "[:upper:]" "[:lower:]")"'                                                                             
```

### List all URLs that fail to download. Print theline number and the URL

```sh 
cat urlfile | parallel "wget {} 2>/dev/null || grep -n {} urlfile"
```
### Find the files in a list that do not exist

```sh 
cat file_list | parallel 'if [ ! -e {} ] ; then echo {}; fi'                                                                                
```

### Clone your starred repositories with 25 downloads in parallel 

```sh
 GITUSER=$(whoami); curl "https://api.github.com/users/${GITUSER}/starred?per_page=1000" | grep -o 'git@[^"]*' | parallel -j25 'git clone {}'
```

### Example a normal for loop

```sh
for f in /bin/*; do strings $f > $(basename $f).txt; done
```
### Parallel for loop as above example
    
```sh 
parallel 'strings {} > {/}.txt' ::: /bin/*
```

### This will send 3 ping packets to 3 different hosts in parallel and print the output when they complete.

```sh 
parallel -j0 ping -nc 3 ::: qubes-os.org gnu.org freenetproject.org
```

### Controlling the output

```sh 
parallel --tag echo foo-{} ::: A B C
```

### To see what commands will be run without running them use --dryrun:

```sh 
parallel --dryrun echo {} ::: A B C
```

### Instead of basing the percentage on the number of CPU cores GNU parallel can base it on the number of CPUs:

```sh 
parallel --use-cpus-instead-of-cores -N0 sleep 1 :::: num8
```

### GNU parallel can save the output of each job into files:

```sh 
parallel --files echo ::: A B C
```

### --jobs 0 will run as many jobs in parallel as possible:

```sh 
parallel -N0 --jobs 0 sleep 1 :::: num128
```

### If you have many jobs (e.g. by multiple combinations of input sources), it can be handy to shuffle the jobs, so you get different values run. Use --shuf for that:

```sh 
parallel --shuf echo ::: 1 2 3 ::: a b c ::: A B C
```

### GNU parallel can ask the user if a command should be run using --interactive: same as "read -p"

```sh 
parallel --interactive echo ::: 1 2 3
```

### Some jobs do heavy I/O when they start. To avoid a thundering herd GNU parallel can delay starting new jobs. --delay X will make sure there is at least X seconds between each start:

```sh 
parallel --delay 2.5 echo Starting {}\;date ::: 1 2 3
```

### GNU parallel can give progress information with --progress:

```sh 
parallel --progress sleep ::: 1 3 2 2 1 3 3 2 1
```

### A progress bar can be shown with --bar:

```sh 
parallel --bar sleep ::: 1 3 2 2 1 3 3 2 1
```

### And a graphic bar can be shown with --bar and zenity:

```sh
seq 1000 | parallel -j10 --bar '(echo -n {};sleep 0.1)' \
  2> >(perl -pe 'BEGIN{$/="\r";$|=1};s/\r/\n/g' |
       zenity --progress --auto-kill --auto-close)
```

### GNU parallel can run jobs on remote servers. It uses ssh to communicate with the remote machines.

```sh 
parallel -S $SERVER1 echo running on ::: $SERVER1
```

### To use a different username prepend the server with username@:

```sh 
parallel -S username@$SERVER1 echo running on ::: username@$SERVER1
```

### Use mulitple servrers

```sh 
parallel -S $SERVER1 -S $SERVER2 echo ::: running on more hosts
```

### Or they can be separated by ,:

```sh 
parallel -S $SERVER1,$SERVER2 echo ::: running on more hosts
```

### Or newline:
### This gives a \n between $SERVER1 and $SERVER2

```sh
SERVERS="`echo $SERVER1; echo $SERVER2`"
parallel -S "$SERVERS" echo ::: running on more hosts
```

### To force GNU parallel to treat a server having a given number of CPU cores prepend the number of core followed by / to the sshlogin:

```sh 
parallel -S 4/$SERVER1 echo force {} cpus on server ::: 4

### GNU parallel can transfer the files to be processed to the remote host. It does that using rsync.

```sh
echo This is input_file > input_file
parallel -S $SERVER1 --transferfile {} cat ::: input_file
```

### Save output from \ **ps aux**\  every second into dirs named yyyy-mm-ddThh:mm:ss+zz:zz.

```sh
seq 1000 | parallel -N0 -j1 --delay 1 \
  --results '{= $_=`date -Isec`; chomp=}/' ps aux
```

### Avoid overloading sshd

```sh 
parallel -S $SERVER1 --sshdelay 0.2 echo ::: 1 2 3
```

### Ignore hosts that are down

```sh 
parallel --filter-hosts -S 173.194.32.46,$SERVER1 echo ::: bar
```

### Running the same commands on all hosts

```sh 
parallel --onall -S $SERVER1,$SERVER2 echo ::: foo bar
```

### Digital clock with "blinking

```sh
parallel -k echo {1}'{=3 $_=$_%2?":":" "=}'{2}{3} \
     ::: {0..12} ::: {0..5} ::: {0..9}
```

### Breadth first parallel web crawler/mirrorer

```sh 
PARALLEL=-j100 ./parallel-crawl http://gatt.org.yeslab.org/
```

```sh 
#!/bin/bash

URL=$1
BASEURL=$(echo $URL | perl -pe 's:#.*::; s:(//.*/)[^/]*:$1:')
URLLIST=$(mktemp urllist.XXXX)
URLLIST2=$(mktemp urllist.XXXX)
SEEN=$(mktemp seen.XXXX)

# Spider to get the URLs
echo $URL >$URLLIST
cp $URLLIST $SEEN

while [ -s $URLLIST ] ; do
  cat $URLLIST |
parallel lynx -listonly -image_links -dump {} \; \
      wget -qm -l1 -Q1 {} \; echo Spidered: {} \>\&2 |
      perl -ne 's/#.*//; s/\s+\d+.\s(\S+)$/$1/ and
        do { $seen{$1}++ or print }' |
    grep -F $BASEURL |
    grep -v -x -F -f $SEEN | tee -a $SEEN > $URLLIST2
  mv $URLLIST2 $URLLIST
done

rm -f $URLLIST $URLLIST2 $SEEN
```

### Nested for looop

```sh 
(for colour in red green blue ; do
  for size in S M L XL XXL ; do
    echo $colour $size
  done
done) | sort
```

### Speeding up fast jobs

```sh 
seq -w 0 9999 | parallel touch pict{}.jpg
seq -w 0 9999 | parallel -X touch pict{}.jpg
```

## Parallel Traceroute 

Keep order of output same as order of input, normally the output of a job will be printed as soon as it completes. Sometimes you want the order of the output to remain the same as the order of the input. This is often important, if the output is used as input for another system. -k will make sure the order of output will be in the same order as input even if later jobs end before earlier jobs. Append a string to every line in a text file:

```sh 
cat textfile | parallel -k echo {} append_string
```

### If you remove -k some of the lines may come out in the wrong order.

```sh 
parallel traceroute ::: qubes-os.org debian.org freenetproject.org
```

```sh 
parallel -k traceroute ::: qubes-os.org debian.org freenetproject.org
```

### To download byte 10000000-19999999 you can use curl:

```sh 
curl -r 10000000-19999999 https://example.com/the/big/file >file.part
```
### To download a 1 GB file we need 100 10MB chunks downloaded and combined in the correct order.

```sh 
seq 0 99 | parallel -k curl -r {}0000000-{}9999999 https://example.com/the/big/file > file
```

### This will run 1.5 job per CPU, and give 1000 arguments to grep.

```sh 
find . -type f | parallel -k -j150% -n 1000 -m grep -H -n STRING {}
```

### Parallel Transfering Files

When running jobs that output data, you often do not want the output of multiple jobs to run together. GNU parallel defaults to grouping the output of each job, so the output is printed when the job finishes. If you want full lines to be printed while the job is running you can use --line-buffer. If you want output to be printed as soon as possible you can use -u.

Compare the output of:

```sh 
parallel wget --limit-rate=100k https://ftpmirror.gnu.org/parallel/parallel-20{}0822.tar.bz2 ::: {12..16}
```

```sh 
parallel --line-buffer wget --limit-rate=100k https://ftpmirror.gnu.org/parallel/parallel-20{}0822.tar.bz2 ::: {12..16}
```

```sh 
parallel -u wget --limit-rate=100k https://ftpmirror.gnu.org/parallel/parallel-20{}0822.tar.bz2 ::: {12..16}
```

### Tag output lines

GNU parallel groups the output lines, but it can be hard to see where the different jobs begin. --tag prepends the argument to make that more visible:

```sh 
parallel --tag wget --limit-rate=100k https://ftpmirror.gnu.org/parallel/parallel-20{}0822.tar.bz2 ::: {12..16}
```

### --tag works with --line-buffer but not with -u:

```sh
parallel --tag --line-buffer wget --limit-rate=100k https://ftpmirror.gnu.org/parallel/parallel-20{}0822.tar.bz2 ::: {12..16}
```
### Check the uptime of the servers in ~/.parallel/sshloginfile:

```sh 
parallel --tag -S .. --nonall uptime
```

### Give each job a new color. Most terminals support ANSI colors with the escape code "033[30;3Xm" where 0 <= X <= 7:

```sh 
seq 10 | \
  parallel --tagstring '\033[30;3{=$_=++$::color%8=}m' seq {}
parallel --rpl '{color} $_="\033[30;3".(++$::color%8)."m"' \
  --tagstring {color} seq {} ::: {1..10}
```

### References

![GNU/Parallel Tutorial](https://www.gnu.org/software/parallel/parallel_tutorial.htmlI)
![GNU/Parallel Manual](https://www.gnu.org/software/parallel/man.html)


