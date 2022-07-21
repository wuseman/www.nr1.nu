# dvgrab

##### Streaming HTML5 video to icecast server using dvgrab, ffmpeg2theora and oggfwd

   dvgrab  format raw - | tee dvstream.dv | ffmpeg2theora -A 45 -V 400 -c 1 -f dv -x 360 -y 288 -o /dev/stdout - | tee savelivestream.ogv | oggfwd -p -d "Stream description" -n "Streamname" my.icecastserver.com 80 icecastpassword /stream.ogv

##### Grabs video from dv firewire camera and plays it on mplayer.

   dvgrab  - | mplayer -

##### Grabs video from HD firewire camera, saves it on file and plays it scaled down on ffplayer.

   dvgrab  -t -noavc -nostop -f hdv capturefile - | ffplay -x 640 -y 360

##### Streaming HTML5 video to icecast server using dvgrab, ffmpeg2theora and oggfwd

   dvgrab  format raw - | tee dvstream.dv | ffmpeg2theora -A 45 -V 400 -c 1 -f dv -x 360 -y 288 -o /dev/stdout - | tee savelivestream.ogv | oggfwd -p -d "Stream description" -n "Streamname" my.icecastserver.com 80 icecastpassword /stream.ogv

##### Grabs video from dv firewire camera and plays it on mplayer.

   dvgrab  - | mplayer -
