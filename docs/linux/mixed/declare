# declare

##### check open ports without netstat or lsof

   declare  -a array=($(tail -n +2 /proc/net/tcp | cut -d":" -f"3"|cut -d" " -f"1")) && for port in ${array[@]}; do echo $((0x$port)); done | sort | uniq

##### declare variable as integer

   declare  -i aa ; aa=3*8 ; echo $aa

##### Numerate files, rename files in a directory by incremental number

   declare  -i i; i=0; for file in *; do i=`expr $i+1`; mv "$file" $i; done;

##### Numerate files, rename files in a directory by incremental number

   declare  -i i=0 ; for file in * ; do i=$[$i+1] ; mv "$file" $i; done

##### Show bash's function definitions you defined in .bash_profile or .bashrc

   declare  -f [ function_name ]

##### List bash functions defined in .bash_profile or .bashrc

   declare  -F | cut -d ' ' -f 3

##### check open ports without netstat or lsof

   declare  -a array=($(tail -n +2 /proc/net/tcp | cut -d":" -f"3"|cut -d" " -f"1")) && for port in ${array[@]}; do echo $((0x$port)); done

##### Indent a one-liner.

   declare  -f <function name>

##### Adding Color Escape Codes to global CC array for use by echo -e

   declare  -ax CC; for i in `seq 0 7`;do ii=$(($i+7)); CC[$i]="\033[1;3${i}m"; CC[$ii]="\033[0;3${i}m"; done

##### My PS1

   declare  -x PS1="[\[\e[01;35m\]\u\[\e[00m\]@\[\e[01;31m\]\h\[\e[00m\]](\j):\[\e[01;36m\]\w\n\\$ \[\e[00m\]"

##### List bash functions defined in .bash_profile or .bashrc

   declare  -F | sed 's/^declare -f //'

##### Show bash's function definitions you defined in .bash_profile or .bashrc

   declare  -f [ function_name ]

##### List bash functions defined in .bash_profile or .bashrc

   declare  -F | cut -d ' ' -f 3

##### check open ports without netstat or lsof

   declare  -a array=($(tail -n +2 /proc/net/tcp | cut -d":" -f"3"|cut -d" " -f"1")) && for port in ${array[@]}; do echo $((0x$port)); done

##### Indent a one-liner.

   declare  -f <function name>

##### Adding Color Escape Codes to global CC array for use by echo -e

   declare  -ax CC; for i in `seq 0 7`;do ii=$(($i+7)); CC[$i]="\033[1;3${i}m"; CC[$ii]="\033[0;3${i}m"; done

##### My PS1

   declare  -x PS1="[\[\e[01;35m\]\u\[\e[00m\]@\[\e[01;31m\]\h\[\e[00m\]](\j):\[\e[01;36m\]\w\n\\$ \[\e[00m\]"

##### List bash functions defined in .bash_profile or .bashrc

   declare  -F | sed 's/^declare -f //'
