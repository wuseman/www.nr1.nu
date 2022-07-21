# test

##### Display which distro is installed

   test  `uname` = Linux && lsb_release -a 2>/dev/null || ( test `uname` = SunOS && cat /etc/release || uname -rms )

##### Succeed or fail randomly (Schr?dinger's code)

   test  $((RANDOM%2)) -eq 0

##### Display which distro is installed

   test  `uname` = Linux && lsb_release -a || ( test `uname` = SunOS && cat /etc/release || uname -rms )

##### List system's users

   test e.txt < cut -d : -f 1,5 /etc/passwd | tr : \\t | tr a-z A-Z | cat teste.txt

##### How to send parameters to a batch file

   test .bat parm1 parm2 parm3

##### View all file operator expressions for any file, test, stat

   test t(){ o=abcdefghLkprsStuwxOGN;echo $@;for((i=0;i<${#o};i++));do c=${o:$i:1};test -$c $1 && help test | sed "/^ *-$c/!d;1q;s/^[^T]*/-$c /;s/ if/ -/";done; }

##### Compare a remote file with a local file

   test  "$(md5sum /local/file | cut -d' ' -f1)" == "$(ssh root@xen  md5sum /remote/file | cut -d' ' -f1)" && echo "Match" || echo "Differ"

##### Create a folder  but first you can test if it exists

   test  -d folder || mkdir folder

##### View all file operator expressions for any file, test, stat

   test t(){ o=abcdefghLkprsStuwxOGN;echo $@;for((i=0;i<${#o};i++));do c=${o:$i:1};test -$c $1 && help test | sed "/^ *-$c/!d;1q;s/^[^T]*/-$c /;s/ if/ -/";done; }

##### Compare a remote file with a local file

   test  "$(md5sum /local/file | cut -d' ' -f1)" == "$(ssh root@xen  md5sum /remote/file | cut -d' ' -f1)" && echo "Match" || echo "Differ"

##### Create a folder  but first you can test if it exists

   test  -d folder || mkdir folder
