# paste and pr

### Print 2 files in columns

paste 1 2 | pr -t -e120                                                    

### Print 2 files in columns
paste -d '\n' 1 2 | xargs -d '\n' printf '%-50s  %-50s\n'                 

### Print 2 files in table

pr --output-tabs=' 1' -2 -t tmp1                                         

paste <(printf %s "$varA") <(printf %s "$varB")
paste -d' ' <(cut -f1 1) <(cut -d' ' -f2 2) |column -t
