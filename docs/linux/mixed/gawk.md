# gawk

##### # Multiline paragraph sort; with case insensitive option (-i)

   gawk  'BEGIN {RS="\n\n"; if (ARGV[1]=="-i"){IGNORECASE=1; ARGC=1}};{Text[NR]=$0};END {asort(Text);for (i=1;i<=NR;i++) printf "%s\n\n",Text[i] }' -i<Zip.txt

##### # Multiline unique paragraph sort; with case insensitive option (-i)

   gawk  'BEGIN {RS="\n\n"; if (ARGV[1]=="-i")IGNORECASE=1;ARGC=1}{if (IGNORECASE)Text[tolower($0)]=$0;else Text[$0]=$0 };END {N=asort(Text);for(i=1;i<=N;i++)printf "%s\n\n",Text[i]}' -i<Test.txt

##### Fibonacci numbers with awk

   gawk  '{n=$1;a=0;b=1;c=1;for(i=1;i<n;i++){c=a+b;a=b;b=c};print c}' << eof

##### File without comments or blank lines.

   gawk  '!/^[\t\ ]*#/{print $0}' filename | strings

##### File without comments or blank lines.

   gawk  '!/^[\t\ ]*#/{print $0}' filename | strings
