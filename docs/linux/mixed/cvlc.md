# cvlc

##### Save your webcam to file

   cvlc  "v4l2:///dev/video0" sout "#transcode{vcodec=mp2v,vb=800,scale=0.25,acodec=none}:file{mux=mpeg1,dst=/PATH/TO/OUTPUT/FILE}"

##### Playback music in VLC without the GUI interface

   cvlc  <somemusic.mp3>

##### Create a video screencast (capture screen) of screen portion, with audio (the audio you hear, not your mic)

   cvlc  input-slave pulse://<device> screen:// screen-fps=15 screen-top=0 screen-left=0 screen-width=640 screen-height=480 sout='#transcode{vcodec=FLV1,vb=1600,acodec=aac}:std{access=file,mux=ffmpeg{mux=flv},dst=viewport1.flv}'

##### Instant mirror from your laptop + webcam

   cvlc   v4l2:// :vout-filter=transform :transform-type=vflip :v4l2-width=320 :v4l2-height=240 -f &

##### Webcam view with vlc

   cvlc  v4l2:// &

##### Watch Video Files in the Terminal

   cvlc  /path/to/file.avi -V caca

##### Create a video screencast (capture screen) of screen portion, with audio (the audio you hear, not your mic)

   cvlc  input-slave pulse://<device> screen:// screen-fps=15 screen-top=0 screen-left=0 screen-width=640 screen-height=480 sout='#transcode{vcodec=FLV1,vb=1600,acodec=aac}:std{access=file,mux=ffmpeg{mux=flv},dst=viewport1.flv}'

##### Instant mirror from your laptop + webcam

   cvlc   v4l2:// :vout-filter=transform :transform-type=vflip :v4l2-width=320 :v4l2-height=240 -f &

##### Webcam view with vlc

   cvlc  v4l2:// &
