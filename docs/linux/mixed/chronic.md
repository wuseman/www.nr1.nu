# chronic

##### The Chronic: run a command every N seconds in the background

   chronic  () { t=$1; shift; while true; do $@; sleep $t; done & }

##### The Chronic: run a command every N seconds in the background

   chronic  () { t=$1; shift; while true; do $@; sleep $t; done & }
