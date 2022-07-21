# star

##### Graphic mode for root

   star tx  :1

##### startx output to log file

   star tx > startx.log 2>&1

##### Start another X session in a window

   star tx  /usr/bin/Xephyr :2

##### Start another instance of X via SSH

   star tx  /usr/X11R6/bin/Xnest :5 -geometry 800x600

##### Avoid killing the X server with CTRL+C on the tty it was started from

   star tx &! exit

##### How to run X without any graphics hardware

   star tx  `which Xvfb` :1 -screen 0 800x600x24 && DISPLAY=:1 x11vnc

##### python2 -m CGIHTTPServer

   star ts a CGI web server

##### cygwin startx

   star tx  -fullscreen -noresize -unixkill

##### Create a tar archive from a text list without trailing slash in directories

   star  -c -v -f myarchive.tar -no-dirslash list=list.txt

##### Start another X session in a window

   star tx  /usr/bin/Xephyr :2

##### Start another instance of X via SSH

   star tx  /usr/X11R6/bin/Xnest :5 -geometry 800x600

##### Avoid killing the X server with CTRL+C on the tty it was started from

   star tx &! exit

##### How to run X without any graphics hardware

   star tx  `which Xvfb` :1 -screen 0 800x600x24 && DISPLAY=:1 x11vnc

##### python2 -m CGIHTTPServer

   star ts a CGI web server

##### cygwin startx

   star tx  -fullscreen -noresize -unixkill
