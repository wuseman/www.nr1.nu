# qstat

##### delete PBS jobs based on strings from qstat output

   qstat  | awk '$6 ~ "STRING" {cmd="qdel " $1; system(cmd); close(cmd)}'

##### delete PBS jobs based on strings from qstat output

   qstat  | awk '$6 ~ "STRING" {cmd="qdel " $1; system(cmd); close(cmd)}'
