# paste

##### Join the lines with comma

   paste  -sd, <<< $'line1\nline2'

##### Merges given files line by line

   paste  -d ',:' file1 file2 file3

##### Add a list of numbers

   paste  -sd'+' file|bc -l

##### Prints "hello, world" to the console in very large letters

   paste  <(banner hello,\ ) <(banner world)

##### pastebinit - command-line pastebin client

   paste binit [file]

##### generate random tone

   paste  <(seq 7 | shuf | tr 1-7 A-G) <(seq 7 | shuf) | while read i j; do play -qn synth 1 pluck $i synth 1 pluck mix $2; done

##### Arch Linux sort installed packages by size

   paste  <(pacman -Q | awk '{ print $1; }' | xargs pacman -Qi | grep 'Size' | awk '{ print $4$5; }') <(pacman -Q | awk '{print $1; }') | sort -n | column -t

##### Merge files, joining each line in one line

   paste  file1 file2 fileN > merged

##### Paste command output to www.pastehtml.com in txt format.

   paste (){ curl -s -S data-urlencode "txt=$($*)" "http://pastehtml.com/upload/create?input_type=txt&result=address";echo;}

##### paste one file at a time instead of in parallel

   paste  serial file1 file2 file3

##### Create unique email addresses directly from the US census site*Full command in comments

   paste  -d "." <(curl http://.../dist.female.first http://.../dist.male.first | cut -d " " -f 1 | sort -uR) <(curl http://..../dist.all.last | cut -d " " -f 1 | sort -R | head -5163) | tr "[:upper:]" "[:lower:]" | sed 's/$/@test.domain/g'

##### no log to trace you

   paste  <(cut -f1 log.txt) <(cut -f2- log.txt | shuf)

##### Merges given files line by line

   paste  -d ',:' file1 file2 file3

##### generate random tone

   paste  <(seq 7 | shuf | tr 1-7 A-G) <(seq 7 | shuf) | while read i j; do play -qn synth 1 pluck $i synth 1 pluck mix $2; done

##### Arch Linux sort installed packages by size

   paste  <(pacman -Q | awk '{ print $1; }' | xargs pacman -Qi | grep 'Size' | awk '{ print $4$5; }') <(pacman -Q | awk '{print $1; }') | sort -n | column -t

##### Merge files, joining each line in one line

   paste  file1 file2 fileN > merged

##### Paste command output to www.pastehtml.com in txt format.

   paste (){ curl -s -S data-urlencode "txt=$($*)" "http://pastehtml.com/upload/create?input_type=txt&result=address";echo;}

##### paste one file at a time instead of in parallel

   paste  serial file1 file2 file3

##### Create unique email addresses directly from the US census site*Full command in comments

   paste  -d "." <(curl http://.../dist.female.first http://.../dist.male.first | cut -d " " -f 1 | sort -uR) <(curl http://..../dist.all.last | cut -d " " -f 1 | sort -R | head -5163) | tr "[:upper:]" "[:lower:]" | sed 's/$/@test.domain/g'

##### no log to trace you

   paste  <(cut -f1 log.txt) <(cut -f2- log.txt | shuf)
