# range

##### shell function to turn start and length in to a range suitable for using in cut.

   range  () { end=$(echo "$1 + $2 - 1" | bc); echo "$1-$end"; }
