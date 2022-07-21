# fdisk

##### see the partition

   fdisk  -l

##### See size of partitions

   fdisk  -l /dev/sda

##### Check if you partition are aligned

   fdisk  -l /dev/sda | grep -E sda[0-9]+ | sed s/*// |  awk '{printf ("%s %f ",$1,$2/512); if($2%512){ print "BAD" }else {print "Good"} }' | column -t

##### list all hd partitions

   fdisk  -l |grep -e '^/' |awk '{print $1}'|sed -e "s|/dev/||g"

##### Check if you partition are aligned

   fdisk  -l /dev/sda | grep -E sda[0-9]+ | sed s/*// |  awk '{printf ("%s %f ",$1,$2/512); if($2%512){ print "BAD" }else {print "Good"} }' | column -t
