# newest

##### A function to find the newest file in a directory

   newest  () { find ${1:-\.} -type f |xargs ls -lrt ; }

##### A function to find the newest file of a set.

   newest  () { candidate=''; for i in "$@"; do [[ -f $i ]] || continue;  [[ -z $candidate || $i -nt $candidate ]] && candidate="$i"; done; echo "$candidate"; }

##### A function to find the newest file in a directory

   newest  () { DIR=${1:-'.'};  CANDIDATE=`find $DIR -type f|head -n1`; while [[ ! -z $CANDIDATE ]]; do BEST=$CANDIDATE; CANDIDATE=`find $DIR -newer "$BEST" -type f|head -n1`; done; echo "$BEST"; }

##### A function to find the newest file in a directory

   newest  () { find ${1:-\.} -type f |xargs ls -lrt ; }

##### A function to find the newest file of a set.

   newest  () { candidate=''; for i in "$@"; do [[ -f $i ]] || continue;  [[ -z $candidate || $i -nt $candidate ]] && candidate="$i"; done; echo "$candidate"; }

##### A function to find the newest file in a directory

   newest  () { DIR=${1:-'.'};  CANDIDATE=`find $DIR -type f|head -n1`; while [[ ! -z $CANDIDATE ]]; do BEST=$CANDIDATE; CANDIDATE=`find $DIR -newer "$BEST" -type f|head -n1`; done; echo "$BEST"; }
