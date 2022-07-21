# vmstat

##### Visualizing system performance data

   vmstat  2 10 | awk 'NR > 2 {print NR, $13}' | gnuplot -e "set terminal png;set output 'v.png';plot '-' u 1:2 t 'cpu' w linespoints;"

##### vmstat/iostat with timestamp

   vmstat  1 | awk '{now=strftime("%Y-%m-%d %T "); print now $0}'

##### Replace Solaris vmstat numbers with human readable format

   vmstat  1 10 | /usr/xpg4/bin/awk -f ph-vmstat.awk

##### vmstat/iostat with timestamp

   vmstat  1 | awk '{now=strftime("%Y-%m-%d %T "); print now $0}'

##### Replace Solaris vmstat numbers with human readable format

   vmstat  1 10 | /usr/xpg4/bin/awk -f ph-vmstat.awk
