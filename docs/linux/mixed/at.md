# at

##### set fan speed (ATI cards)

   at iconfig pplib-cmd "set fanspeed 0 <number>"

##### System load information alongside process information in a similar style to top.

   at op

##### Set up alarm with fade-in, for graceful awakening

   at  8:30 <<<'mpc volume 20; mpc play; for i in `seq 1 16`; do sleep 2; mpc volume +5; done'

##### An alarm clock using xmms2 and at

   at  6:00 <<< "xmms2 play"

##### Execute a command at a given time

   at  midnight<<<'ls -l'

##### scheduled jobs

   at  <date> < jobs.sh

##### remove at jobs

   at rm $(atq|cut -f1)

##### Escape potential tarbombs

   at b() { l=$(tar tf $1); if [ $(echo "$l" | wc -l) -eq $(echo "$l" | grep $(echo "$l" | head -n1) | wc -l) ]; then tar xf $1; else mkdir ${1%.tar.gz} && tar xf $1 -C ${1%.tar.gz}; fi ;}

##### Universal archive extractor

   at ool -x filename

##### Get the headlines of an atom feed

   at omtitles () { curl silent $1 | xmlstarlet sel -N atom="http://www.w3.org/2005/Atom" -t -m /atom:feed/atom:entry -v atom:title -n}

##### sort at jobs chronogically

   at q |sort -k 6n -k 3M -k 4n -k 5 -k 7 -k 1

##### Set up alarm with fade-in, for graceful awakening

   at  8:30 <<<'mpc volume 20; mpc play; for i in `seq 1 16`; do sleep 2; mpc volume +5; done'

##### An alarm clock using xmms2 and at

   at  6:00 <<< "xmms2 play"

##### Execute a command at a given time

   at  midnight<<<'ls -l'

##### scheduled jobs

   at  <date> < jobs.sh

##### remove at jobs

   at rm $(atq|cut -f1)

##### Escape potential tarbombs

   at b() { l=$(tar tf $1); if [ $(echo "$l" | wc -l) -eq $(echo "$l" | grep $(echo "$l" | head -n1) | wc -l) ]; then tar xf $1; else mkdir ${1%.tar.gz} && tar xf $1 -C ${1%.tar.gz}; fi ;}

##### Universal archive extractor

   at ool -x filename

##### Get the headlines of an atom feed

   at omtitles () { curl silent $1 | xmlstarlet sel -N atom="http://www.w3.org/2005/Atom" -t -m /atom:feed/atom:entry -v atom:title -n}
