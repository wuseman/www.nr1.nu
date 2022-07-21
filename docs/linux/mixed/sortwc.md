# sortwc

##### Sort output by length of line

   sortwc  () { local L;while read -r L;do builtin printf "${#L}@%s\n" "$L";done|sort -n|sed -u 's/^[^@]*@//'; }

##### Sort output by length of line

   sortwc  () { local L;while read -r L;do builtin printf "${#L}@%s\n" "$L";done|sort -n|sed -u 's/^[^@]*@//'; }
