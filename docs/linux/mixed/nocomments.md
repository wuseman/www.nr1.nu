# nocomments

##### Hide comments

   nocomments  () { cat $1 | egrep -v '^[[:space:]]*#|^[[:space:]]*$|^[[:space:]]*;' | sed '/<!.*>/d' | sed '/<!/,/>/d'; }

##### Hide comments

   nocomments  () { cat $1 | egrep -v '^[[:space:]]*#|^[[:space:]]*$|^[[:space:]]*;' | sed '/<!.*>/d' | sed '/<!/,/>/d'; }
