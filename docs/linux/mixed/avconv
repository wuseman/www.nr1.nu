# avconv

##### Burn a simple DVD-Video without menu using any given video file

   avconv  -i input.avi -target pal-dvd dvd.mpg && echo PAL > ~/.config/video_format && dvdauthor -o dvd/ -t dvd.mpg && dvdauthor -o dvd/ -T && growisofs -Z /dev/dvd -dvd-video dvd/

##### Screencast of your PC Display with mp4 output

   avconv  -v warning -f alsa -i default -f x11grab -r 15 -s wxga -i :0.0 -vcodec libx264 -preset ultrafast -threads auto -y -metadata title="Title here" ~/Video/AVCONV_REG.mp4

##### Remove audio stream from a media file

   avconv  -i infile.avi -an outfile.avi

##### Convert flv without re-encoding

   avconv  -i ka-ching.flv -acodec copy -vcodec copy ka-ching.mkv

##### Transcode an interlaced video

   avconv  -i interlaced.avi -c:v libx264 -preset slow -tune film -flags +ilme+ildct -c:a copy transcoded.mp4

##### Capture desktop at resolution 1600x900 and camera video files also captures mic audio to file

   avconv   -y -f x11grab -r 12 -s 1600x900 -i :0.0 -f video4linux2 -i /dev/video0 -f alsa -i pulse -map 0:0 -vcodec rawvideo -pix_fmt yuv420p desktop.y4m -map 1:0 -vcodec rawvideo -pix_fmt yuv420p camera.y4m -map 2:0 audio.mp3

##### Screencast of your PC Display with webm output

   avconv  -v warning -f alsa -ac 2 -i default -f x11grab -r 15 -s wxga -i :0.0 -acodec libvorbis -ab 320k -vcodec libvpx -qmax 2 -qmin 1 -threads auto -y -metadata title="Title here" ~/Video/AVCONV_REG.webm

##### Create video clip from single image.

   avconv  -loop 1 -i company-logo-1920x992.png -t 2 -r 2 logo.avi

##### Conver video file to be MPEG2 to be transferred to DVD project

   avconv  -i FILE.mp4" -f dvd -c:v:0 mpeg2video -s 720x576 -r 25 -g 15 -b:v:0 8000000 -maxrate:v:0 8000000 -minrate:v:0 8000000 -bufsize:v:0 1835008 -packetsize 2048 -muxrate 10080000 -b:a 192000 -ar 48000 -c:a:0 ac3 -map 0:v -map 0:a FILE.mpeg

##### Screencast of your PC Display with mp4 output

   avconv  -v warning -f alsa -i default -f x11grab -r 15 -s wxga -i :0.0 -vcodec libx264 -preset ultrafast -threads auto -y -metadata title="Title here" ~/Video/AVCONV_REG.mp4

##### Remove audio stream from a media file

   avconv  -i infile.avi -an outfile.avi

##### Convert flv without re-encoding

   avconv  -i ka-ching.flv -acodec copy -vcodec copy ka-ching.mkv

##### Transcode an interlaced video

   avconv  -i interlaced.avi -c:v libx264 -preset slow -tune film -flags +ilme+ildct -c:a copy transcoded.mp4

##### Capture desktop at resolution 1600x900 and camera video files also captures mic audio to file

   avconv   -y -f x11grab -r 12 -s 1600x900 -i :0.0 -f video4linux2 -i /dev/video0 -f alsa -i pulse -map 0:0 -vcodec rawvideo -pix_fmt yuv420p desktop.y4m -map 1:0 -vcodec rawvideo -pix_fmt yuv420p camera.y4m -map 2:0 audio.mp3

##### Screencast of your PC Display with webm output

   avconv  -v warning -f alsa -ac 2 -i default -f x11grab -r 15 -s wxga -i :0.0 -acodec libvorbis -ab 320k -vcodec libvpx -qmax 2 -qmin 1 -threads auto -y -metadata title="Title here" ~/Video/AVCONV_REG.webm

##### Create video clip from single image.

   avconv  -loop 1 -i company-logo-1920x992.png -t 2 -r 2 logo.avi
