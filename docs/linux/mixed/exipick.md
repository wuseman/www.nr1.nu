# exipick

##### Purge frozen messages in Exim

   exipick  -zi | xargs exim -Mrm

##### Purge frozen messages in Exim

   exipick  -zi | xargs max-args=1000 exim -Mrm

##### flush (not delete) frozen emails from exim's mail queue

   exipick  -zi | while read x ; do exim -dM  "$x"; sleep 1;done

##### Purge frozen messages in Exim

   exipick  -zi | xargs max-args=1000 exim -Mrm

##### flush (not delete) frozen emails from exim's mail queue

   exipick  -zi | while read x ; do exim -dM  "$x"; sleep 1;done
