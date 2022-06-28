# df

### Print % in how much we filled drives

df -h | sort -rnk 5 | head -3 |awk '{ print "Partition " $6 "\t: " $5 " full!" }'
