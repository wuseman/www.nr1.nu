# yt

##### Download Entire YouTube Channel - all of a user's videos

   yt -chanrip() { for i in $(curl -s http://gdata.youtube.com/feeds/api/users/"$1"/uploads | grep -Eo "watch\?v=[^[:space:]\"\'\\]{11}" | uniq); do youtube-dl title no-overwrites http://youtube.com/"$i"; done }

##### Download Entire YouTube Channel - all of a user's videos

   yt -chanrip() { for i in $(curl -s http://gdata.youtube.com/feeds/api/users/"$1"/uploads | grep -Eo "watch\?v=[^[:space:]\"\'\\]{11}" | uniq); do youtube-dl title no-overwrites http://youtube.com/"$i"; done }

##### Stream YouTube URL directly to MPlayer

   yt  () mplayer -fs -quiet $(youtube-dl -g "$1")

##### Download YouTube music playlist and convert it to mp3 files

   yt -pl2mp3() {umph -m 50 $1 | cclive -f mp4_720p; IFS=$(echo -en "\n\b"); for track in $(ls | grep mp4 | awk '{print $0}' | sed -e 's/\.mp4//'); do (ffmpeg -i $track.mp4 -vn -ar 44100 -ac 2 -ab 320 -f mp3 $track.mp3); done; rm -f *.mp4}

##### Download Entire YouTube Channel - all of a user's videos

   yt -chanrip() { for i in $(curl -s http://gdata.youtube.com/feeds/api/users/"$1"/uploads | grep -Eo "watch\?v=[^[:space:]\"\'\\]{11}" | uniq); do youtube-dl title no-overwrites http://youtube.com/"$i"; done }

##### Stream YouTube URL directly to MPlayer

   yt  () mplayer -fs -quiet $(youtube-dl -g "$1")
