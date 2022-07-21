# hddtemp

##### get the list of temps for your hard-drives

   hddtemp  /dev/sda /dev/sdb /dev/hda /dev/hdb | gawk '{print $NF}' | perl -n -e '$_ =~ s/(\d+)/print "$1 "/eg }{ print "\n"'
