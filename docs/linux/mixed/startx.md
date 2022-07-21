# startx

##### Graphic mode for root

   startx   :1

##### startx output to log file

   startx  > startx.log 2>&1

##### Start another X session in a window

   startx   /usr/bin/Xephyr :2

##### Start another instance of X via SSH

   startx   /usr/X11R6/bin/Xnest :5 -geometry 800x600

##### Avoid killing the X server with CTRL+C on the tty it was started from

   startx  &! exit

##### How to run X without any graphics hardware

   startx   `which Xvfb` :1 -screen 0 800x600x24 && DISPLAY=:1 x11vnc

##### cygwin startx

   startx   -fullscreen -noresize -unixkill

##### Start another X session in a window

   startx   /usr/bin/Xephyr :2

##### Start another instance of X via SSH

   startx   /usr/X11R6/bin/Xnest :5 -geometry 800x600

##### Avoid killing the X server with CTRL+C on the tty it was started from

   startx  &! exit

##### How to run X without any graphics hardware

   startx   `which Xvfb` :1 -screen 0 800x600x24 && DISPLAY=:1 x11vnc

##### cygwin startx

   startx   -fullscreen -noresize -unixkill
