# prep

##### Prepend a text to a file.

   prep end () { array=("$@"); len=${#array[@]}; file=${array[$len-1]}; text=${array[@]:0:$len-1}; printf '%s\n' 0a "$text" . w | ed -s "$file"; }

##### Use Perl like grep

   prep  () { perl -nle 'print if '"$1"';' $2 }

##### Prepend a text to a file.

   prep end () { array=("$@"); len=${#array[@]}; file=${array[$len-1]}; text=${array[@]:0:$len-1}; printf '%s\n' 0a "$text" . w | ed -s "$file"; }

##### Use Perl like grep

   prep  () { perl -nle 'print if '"$1"';' $2 }
