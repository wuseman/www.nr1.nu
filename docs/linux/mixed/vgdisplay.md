# vgdisplay

##### Print full LVM LV paths (for copy&paste)

   vgdisplay  -v 2>/dev/null | grep "^  LV Name" | while read A B LVDEV; do echo $LVDEV; done
