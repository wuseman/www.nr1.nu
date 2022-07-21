# mksnap_ffs

##### snapshot partition for consistent backups with minimal downtime

   mksnap_ffs  /var /var/.snap/snap_var_`date "+%Y-%m-%d"` ;  mdconfig -a -t vnode -f /var/.snap/snap_var_`date "+%Y-%m-%d"` -u 1; mount -r /dev/md1 /mnt
