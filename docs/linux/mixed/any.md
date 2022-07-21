# any

##### Prefix every line with a timestamp

   any  command | while read line; do echo "[`date -Iseconds`] $line"; done

##### Prefix every line with a timestamp

   any  command | sed "s/^/\[`date +"%Y%m%d%H%M%S"`]/"

##### create a temporary file in a command line call

   any _script.sh < <(some command)

##### Prefix every line with a timestamp

   any  command | while read line; do echo "[`date -Iseconds`] $line"; done

##### Prefix every line with a timestamp

   any  command | sed "s/^/\[`date +"%Y%m%d%H%M%S"`]/"

##### create a temporary file in a command line call

   any _script.sh < <(some command)
