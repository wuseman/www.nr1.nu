# source

##### get function's source

   source _print(){ set | sed -n "/^$1/,/^}$/p"; };

##### Use exit codes that actually means something.

   source  <(egrep '^#define EX_.*' /usr/include/sysexits.h  | sed -e 's/#define/declare -r/g' | sed 's/\//#/g' | sed -e 's/\s\{1,\}/ /g' | sed -e 's/ \([0-9]\)/\=\1/'g )

##### Execute external code

   source   filename_script.sh

##### reload bash_profile

   source  ~/.bash_profile

##### Make changes in .bashrc immediately available

   source  ~/.bashrc

##### reload config

   source  .bashrc

##### import sql

   source  MYFILE.sql

##### Make changes in .bashrc immediately available

   source  ~/.bashrc

##### reload config

   source  .bashrc
