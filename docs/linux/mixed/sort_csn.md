# sort_csn

##### sort a list of comma separated numbers: sort_csn

   sort_csn  () { echo "${1}" | sed -e "s/,/\n/g"| sort -nu | awk '{printf("%s,",$0)} END {printf("\n")}' | sed -e "s/,$//"; }

##### sort a list of comma separated numbers: sort_csn

   sort_csn  () { echo "${1}" | sed -e "s/,/\n/g"| sort -nu | awk '{printf("%s,",$0)} END {printf("\n")}' | sed -e "s/,$//"; }
