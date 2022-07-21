# ifs

##### Functions to display, save and restore $IFS

   ifs  () { echo -n "${IFS}"|hexdump -e '""  10/1 "'\''%_c'\''\t" "\n"' -e '"" 10/1 "0x%02x\t" "\n\n"'|sed "s/''\|\t0x[^0-9]//g; $,/^$/d"

##### Display current bandwidth statistics

   ifs tat -nt

##### Functions to display, save and restore $IFS

   ifs  () { echo -n "${IFS}"|hexdump -e '""  10/1 "'\''%_c'\''\t" "\n"' -e '"" 10/1 "0x%02x\t" "\n\n"'|sed "s/''\|\t0x[^0-9]//g; $,/^$/d"

##### Display current bandwidth statistics

   ifs tat -nt
