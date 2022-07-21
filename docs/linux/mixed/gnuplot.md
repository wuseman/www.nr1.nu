# gnuplot

##### Quickly graph a list of numbers

   gnuplot  -persist <(echo "plot '<(sort -n listOfNumbers.txt)' with lines")

##### histogram of file size

   gnuplot  -p <(echo "set style data hist; set xtic rot by -45; plot '<(stat -c \"%n %s\" *)' u 2:xtic(1)")

##### histogram of file size

   gnuplot  -p <(echo "set terminal wxt size `xrandr|grep -P '\s{3}(\d+x\d+).*\+$'|tr -s ' ' '\t'|cut -f2|sort -n|tail -n1|tr 'x' ','`; set logscale y; set style data hist; set xtic rot by -90; plot '<(stat -c \"%n %s\" *)' u 2:xtic(1)")

##### Quickly graph a list of numbers

   gnuplot  -persist <(echo "plot '<(sort -n listOfNumbers.txt)' with lines")

##### histogram of file size

   gnuplot  -p <(echo "set style data hist; set xtic rot by -45; plot '<(stat -c \"%n %s\" *)' u 2:xtic(1)")

##### histogram of file size

   gnuplot  -p <(echo "set terminal wxt size `xrandr|grep -P '\s{3}(\d+x\d+).*\+$'|tr -s ' ' '\t'|cut -f2|sort -n|tail -n1|tr 'x' ','`; set logscale y; set style data hist; set xtic rot by -90; plot '<(stat -c \"%n %s\" *)' u 2:xtic(1)")
