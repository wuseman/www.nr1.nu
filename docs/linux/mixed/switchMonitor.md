# switchMonitor

##### shut of the screen ( Fool proof )

   switchMonitor  () { LF=/tmp/screen-lock; if [ -f $LF ]; then rm $LF; else touch $LF; sleep .5; while [ -f  $LF ]; do xset dpms force off; sleep 2; done; fi };

##### shut of the screen ( Fool proof )

   switchMonitor  () { LF=/tmp/screen-lock; if [ -f $LF ]; then rm $LF; else touch $LF; sleep .5; while [ -f  $LF ]; do xset dpms force off; sleep 2; done; fi };
