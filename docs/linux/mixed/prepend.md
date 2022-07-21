# prepend

##### Prepend a text to a file.

   prepend  () { array=("$@"); len=${#array[@]}; file=${array[$len-1]}; text=${array[@]:0:$len-1}; printf '%s\n' 0a "$text" . w | ed -s "$file"; }

##### Prepend a text to a file.

   prepend  () { array=("$@"); len=${#array[@]}; file=${array[$len-1]}; text=${array[@]:0:$len-1}; printf '%s\n' 0a "$text" . w | ed -s "$file"; }
