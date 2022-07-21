# xterm

##### run remote linux desktop

   xterm  -display :12.0 -e ssh -X user@server &

##### cmatrix

   xterm  +u8 -fn mtx -maximized -T "There is no spoon!" -e cmatrix -bxa -u 3 & sleep .1s && wmctrl -r :ACTIVE: -b add,fullscreen && transset-df -a &

##### Start xterm in given directory

   xterm  -e "cd /my/directory; bash"

##### run remote linux desktop

   xterm  -display :12.0 -e ssh -X user@server &
