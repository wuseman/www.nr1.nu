# bash

### Delete static and dynamic arp for /24 subnet

for i in {1..254}; do arp -d 192.168.0.$i; done


### Preserve your fingers from cd ..; cd ..; cd..; cd..;

up(){ DEEP=$1; for i in $(seq 1 ${DEEP:-"1"}); do cd ../; done; }



### Get executed script's current working directory

CWD=$(cd "$(dirname "$0")" && pwd)


### 

tty >/dev/null || { urxvt -e /bin/sh -c "tty >/tmp/proc$$; while test x; do sleep 1; done" & while test ! -f /tmp/proc$$; do sleep .1; done; FN=$(cat /tmp/proc$$); rm /tmp/proc$$; exec >$FN 2>$FN <$FN; }

### Scan all open ports without any required program

for i in {1..65535}; do 
	(echo < /dev/tcp/127.0.0.1/$i) &>/dev/null && printf "\n[+] Open Port at\n: \t%d\n" "$i" || printf "."; 
done

### Organise image by portrait and landscape

mkdir "portraits"; mkdir "landscapes"; 
	for f in ./*.jpg; do 
		WIDTH=$(identify -format "%w" "$f")> /dev/null; HEIGHT=$(identify -format "%h" "$f")> /dev/null; 
			if [[ "$HEIGHT" > "$WIDTH" ]]; then 
				mv "$f" portraits/ ; else mv "$f" landscapes/ ; 
			fi; 
	done




### Create a txt files with 10000 rows

for FILE in *.full ; do split -l 100000 $FILE; mv -f xaa `echo "$FILE" | cut -d'.' -f1`.txt; rm -f x*; done

