# read

##### Capitalize first letter of each word in a string

   read  -ra words <<< "<sentence>" && echo "${words[@]^}"

##### Figure out what shell you're running

   read link -f /proc/$$/exe

##### Find the full path of an already running process

   read link -f /proc/<pid>/cmdline

##### Press Any Key to Continue

   read  enterKey

##### Simple calculus

   read  c; while [ -n "$c" ]; do clear; echo -e "$c = "$(echo "$c" |bc -l)"\n"; read c; done

##### split a string (2)

   read  VAR1 VAR2 VAR3 < <(echo aa bb cc); echo $VAR2

##### Read choice from user instantaneously

   read  -N1

##### Get the full path to a file

   read link -e /bin/ls

##### Press Any Key to Continue

   read  -sn 1 -p 'Press any key to continue...';echo

##### Encrypt and password-protect execution of any bash script, Version 2

   read  -p 'Script: ' S && C=$S.crypt H='eval "$((dd if=$0 bs=1 skip=//|gpg -d)2>/dev/null)"; exit;' && gpg -c<$S|cat >$C <(echo $H|sed s://:$(echo "$H"|wc -c):) - <(chmod +x $C)

##### bash pause command

   read  -sn1 -p "Press any key to continue..."; echo

##### Create strong, but easy to remember password

   read  -s pass; echo $pass | md5sum | base64 | cut -c -16

##### Press Any Key to Continue

   read  -sn 1 -p "Press any key to continue..."

##### Binary clock

   read  -a A<<<".*.**..*....*** 8 9 5 10 6 0 2 11 7 4";for C in `date +"%H%M"|fold -w1`;do echo "${A:${A[C+1]}:4}";done

##### execute your commands hiding secret bits from history records

   read  -e -s -p "Password: " password

##### bash pause command

   read  -p "Press enter to continue.."

##### Propagate X session cookies on a different user and login as that user

   read  -p 'Username: ' u;sudo -H -u $u xauth add $(xauth list|grep :$(echo ${DISPLAY: -4:2}));sudo su - $u

##### Binary clock

   read  -a A <<<"8 9 5 10 6 0 3 11 7 4";B='.*.**..*....***';for C in $(date +"%H%M"|fold -w1);do echo "${B:${A[C]}:4}";done

##### Find out current working directory of a process

   read link /proc/self/cwd

##### get absolute file path

   read link -f myfile.txt

##### Create a CD/DVD ISO image from disk.

   read om dev=/dev/scd0 f=/path/to/image.iso

##### Create a CD/DVD ISO image from disk.

   read om dev=/dev/scd0 f=/path/to/image.iso

##### Press enter and take a WebCam picture.

   read  && ffmpeg -y -r 1 -t 3 -f video4linux2 -vframes 1 -s sxga -i /dev/video0 ~/webcam-$(date +%m_%d_%Y_%H_%M).jpeg

##### Ask for a password, the passwd-style

   read  -s -p"Password: " USER_PASSWORD_VARIABLE; echo

##### Read null character seperated fields from a file

   read  -d ""

##### create and md5 sum of your password

   read  -s p && echo -n $p | md5sum;p=

##### Download all images on a 4chan thread

   read  -p "Please enter the 4chan url: "|egrep '//i.4cdn.org/[a-z0-9]+/src/([0-9]*).(jpg|png|gif)' - -o|nl -s https:|cut -c7-|uniq|wget -nc -i - random-wait

##### In URL converts %XX to chars

   read  -p "> " URL; echo -e "> `echo $URL | sed 's|%|\\\\x|g'`"

##### Toggle MPD speaker output

   read  -r -a MOUT <<< `mpc outputs | grep Local`; if [ ${MOUT[-1]} == "disabled" ]; then mpc enable ${MOUT[1]} 2&>1 > /dev/null; else mpc disable ${MOUT[1]} 2&>1 > /dev/null; fi

##### flush stdin in bash

   read  -t 0.1 -N 255

##### encrypt sensitive image using password

   read  -s PASS; echo $PASS | convert sensitive.jpg -encipher - -depth 8 png24:hidden.png

##### bin file of a pid

   read link -f /proc/$pid/exe

##### flush stdin in bash

   read  -d ^D

##### Multiple variable assignments from command output in BASH

   read  day month year <<< $(date +'%d %m %y')

##### Multiple variable assignments from command output in BASH

   read  day month year <<< $(date +'%d %m %y')

##### Get the canonical, absolute path given a relative and/or noncanonical path

   read link -f ../super/symlink_bon/ahoy

##### Plays Music from SomaFM

   read  -p "Which station? "; mplayer reallyquiet -vo none -ao sdl http://somafm.com/startstream=${REPLY}.pls

##### Multiple variable assignments from command output in BASH

   read  day month year < <(date +'%d %m %y')

##### Function to split a string into an array

   read  -a ARR <<<'world domination now!'; echo ${ARR[2]};

##### Prompt the user for input of y or n, wait for input then continue.

   read  -p "Question that you want an answer to?" yn

##### Find out actual full path of <file>

   read link -f <file>

##### Get a url, preview it, and save as text - with prompts

   read  -p "enter url:" a ; w3m -dump $a > /dev/shm/e1q ; less /dev/shm/e1q ; read -p "save file as text (y/n)?" b ; if [ $b = "y" ] ; then read -p "enter path with filename:" c && touch $(eval echo "$c")  ; mv /dev/shm/e1q $(eval echo "$c") ; fi ; echo DONE

##### split a string (2)

   read  VAR1 VAR2 VAR3 <<< aa bb cc; echo $VAR2

##### Copy canonical path of file 'foo' in the clipboard

   read link -fn foo | xsel -ib

##### Capitalize first letter of each word in a string

   read  -ra words <<< "<sentence>" && echo "${words[@]^}"

##### Figure out what shell you're running

   read link -f /proc/$$/exe

##### split a string (2)

   read  VAR1 VAR2 VAR3 < <(echo aa bb cc); echo $VAR2

##### Read choice from user instantaneously

   read  -N1

##### Get the full path to a file

   read link -e /bin/ls

##### Press Any Key to Continue

   read  -sn 1 -p 'Press any key to continue...';echo

##### Encrypt and password-protect execution of any bash script, Version 2

   read  -p 'Script: ' S && C=$S.crypt H='eval "$((dd if=$0 bs=1 skip=//|gpg -d)2>/dev/null)"; exit;' && gpg -c<$S|cat >$C <(echo $H|sed s://:$(echo "$H"|wc -c):) - <(chmod +x $C)

##### bash pause command

   read  -sn1 -p "Press any key to continue..."; echo

##### Create strong, but easy to remember password

   read  -s pass; echo $pass | md5sum | base64 | cut -c -16

##### Press Any Key to Continue

   read  -sn 1 -p "Press any key to continue..."

##### Binary clock

   read  -a A<<<".*.**..*....*** 8 9 5 10 6 0 2 11 7 4";for C in `date +"%H%M"|fold -w1`;do echo "${A:${A[C+1]}:4}";done

##### execute your commands hiding secret bits from history records

   read  -e -s -p "Password: " password

##### bash pause command

   read  -p "Press enter to continue.."

##### Propagate X session cookies on a different user and login as that user

   read  -p 'Username: ' u;sudo -H -u $u xauth add $(xauth list|grep :$(echo ${DISPLAY: -4:2}));sudo su - $u

##### Binary clock

   read  -a A <<<"8 9 5 10 6 0 3 11 7 4";B='.*.**..*....***';for C in $(date +"%H%M"|fold -w1);do echo "${B:${A[C]}:4}";done

##### Find out current working directory of a process

   read link /proc/self/cwd

##### get absolute file path

   read link -f myfile.txt

##### Create a CD/DVD ISO image from disk.

   read om dev=/dev/scd0 f=/path/to/image.iso

##### Press enter and take a WebCam picture.

   read  && ffmpeg -y -r 1 -t 3 -f video4linux2 -vframes 1 -s sxga -i /dev/video0 ~/webcam-$(date +%m_%d_%Y_%H_%M).jpeg

##### Ask for a password, the passwd-style

   read  -s -p"Password: " USER_PASSWORD_VARIABLE; echo

##### Read null character seperated fields from a file

   read  -d ""

##### create and md5 sum of your password

   read  -s p && echo -n $p | md5sum;p=

##### Download all images on a 4chan thread

   read  -p "Please enter the 4chan url: "|egrep '//i.4cdn.org/[a-z0-9]+/src/([0-9]*).(jpg|png|gif)' - -o|nl -s https:|cut -c7-|uniq|wget -nc -i - random-wait

##### In URL converts %XX to chars

   read  -p "> " URL; echo -e "> `echo $URL | sed 's|%|\\\\x|g'`"

##### Toggle MPD speaker output

   read  -r -a MOUT <<< `mpc outputs | grep Local`; if [ ${MOUT[-1]} == "disabled" ]; then mpc enable ${MOUT[1]} 2&>1 > /dev/null; else mpc disable ${MOUT[1]} 2&>1 > /dev/null; fi

##### flush stdin in bash

   read  -t 0.1 -N 255

##### encrypt sensitive image using password

   read  -s PASS; echo $PASS | convert sensitive.jpg -encipher - -depth 8 png24:hidden.png

##### bin file of a pid

   read link -f /proc/$pid/exe

##### flush stdin in bash

   read  -d ^D

##### Multiple variable assignments from command output in BASH

   read  day month year <<< $(date +'%d %m %y')

##### Get the canonical, absolute path given a relative and/or noncanonical path

   read link -f ../super/symlink_bon/ahoy

##### Plays Music from SomaFM

   read  -p "Which station? "; mplayer reallyquiet -vo none -ao sdl http://somafm.com/startstream=${REPLY}.pls

##### Multiple variable assignments from command output in BASH

   read  day month year < <(date +'%d %m %y')

##### Function to split a string into an array

   read  -a ARR <<<'world domination now!'; echo ${ARR[2]};

##### Prompt the user for input of y or n, wait for input then continue.

   read  -p "Question that you want an answer to?" yn

##### Find out actual full path of <file>

   read link -f <file>
