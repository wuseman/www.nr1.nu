# pwd

##### Ensure path permissions from '.' prior to root

   pwd |grep -o '/'|perl -ne '$x.="./.";print`readlink -f $x`'|xargs -tn1 chmod 755

##### Display your current working directory.

   pwd 

##### show current directory

   pwd 

##### Show current working directory of a process

   pwd x pid

##### copy string to clipboard

   pwd  | xclip

##### Copy current/working directory to clipboard

   pwd  | tr -d '\n' | xsel -b

##### Find out current working directory of a process

   pwd x $(pgrep command)

##### How to expire the password to force her change [AIX]

   pwd adm -f ADMCHG [user]

##### Show current working directory of a process

   pwd x pid

##### copy string to clipboard

   pwd  | xclip

##### Copy current/working directory to clipboard

   pwd  | tr -d '\n' | xsel -b

##### Find out current working directory of a process

   pwd x $(pgrep command)
