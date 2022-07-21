# x11vnc

##### connect to X login screen via vnc

   x11vnc  -display :0 -auth $(ps -ef|awk '/xauth/ {print $15}'|head -1) -forever -bg &

##### X11vnc starting session command

   x11vnc  -rfbauth /etc/x11vnc.pass -o /tmp/x11vnc.log -forever -bg -noxdamage -rfbport 5900 -avahi -display :0

##### x11vnc store password

   x11vnc  -storepasswd "password" ~/my_vnc_pass

##### Start x11vnc session

   x11vnc  -many -rfbauth ~/.vnc_passwd -forever -nevershared

##### Create x11vnc server authentication file

   x11vnc  -storepasswd your_new_apssword ~/my_vnc_pass

##### Start the x11vnc server

   x11vnc  -display :0 -scale 6/7 -rfbauth vncpass -forever

##### connect to X login screen via vnc

   x11vnc  -display :0 -auth $(ps -ef|awk '/xauth/ {print $15}'|head -1) -forever -bg &

##### X11vnc starting session command

   x11vnc  -rfbauth /etc/x11vnc.pass -o /tmp/x11vnc.log -forever -bg -noxdamage -rfbport 5900 -avahi -display :0

##### x11vnc store password

   x11vnc  -storepasswd "password" ~/my_vnc_pass

##### Start x11vnc session

   x11vnc  -many -rfbauth ~/.vnc_passwd -forever -nevershared
