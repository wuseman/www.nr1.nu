# ga

##### # Multiline paragraph sort; with case insensitive option (-i)

   ga wk 'BEGIN {RS="\n\n"; if (ARGV[1]=="-i"){IGNORECASE=1; ARGC=1}};{Text[NR]=$0};END {asort(Text);for (i=1;i<=NR;i++) printf "%s\n\n",Text[i] }' -i<Zip.txt

##### # Multiline unique paragraph sort; with case insensitive option (-i)

   ga wk 'BEGIN {RS="\n\n"; if (ARGV[1]=="-i")IGNORECASE=1;ARGC=1}{if (IGNORECASE)Text[tolower($0)]=$0;else Text[$0]=$0 };END {N=asort(Text);for(i=1;i<=N;i++)printf "%s\n\n",Text[i]}' -i<Test.txt

##### Fibonacci numbers with awk

   ga wk '{n=$1;a=0;b=1;c=1;for(i=1;i<n;i++){c=a+b;a=b;b=c};print c}' << eof

##### vim display hex value char under cursor

   ga 

##### Create a single-use TCP proxy with copy to stdout

   ga te() { mkfifo /tmp/sock1 /tmp/sock2 &> /dev/null && nc -p $1 -l < /tmp/sock1 | tee /tmp/sock2 & PID=$! && nc $2 $3 < /tmp/sock2 | tee /tmp/sock1; kill -KILL $PID; rm -f /tmp/sock1 /tmp/sock2 ; }

##### File without comments or blank lines.

   ga wk '!/^[\t\ ]*#/{print $0}' filename | strings

##### Create a single-use TCP proxy with copy to stdout

   ga te() { mkfifo /tmp/sock1 /tmp/sock2 &> /dev/null && nc -p $1 -l < /tmp/sock1 | tee /tmp/sock2 & PID=$! && nc $2 $3 < /tmp/sock2 | tee /tmp/sock1; kill -KILL $PID; rm -f /tmp/sock1 /tmp/sock2 ; }

##### File without comments or blank lines.

   ga wk '!/^[\t\ ]*#/{print $0}' filename | strings
