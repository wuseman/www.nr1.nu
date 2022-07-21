# mpv

##### Search for MP3s from current directory and play them in random order.

   mpv  playlist <(find -type f -iname '*.mp3' -print0 | xargs -0 realpath | sort -R)

##### encode mkv to mp4 with hardsubs

   mpv  file.mkv  -o out.mp4

##### stream a mkv file to facebook from cmd

   mpv  file.mkv -o out.flv oac=libmp3lame oacopts=b=128000;  ffmpeg  -re -i output-003.flv  -f flv 'rtmp://rtmp-api.facebook.com:80/rtmp/facebookkeyandparams'

##### Search for MP3s from current directory and play them in random order.

   mpv  playlist <(find -type f -iname '*.mp3' -print0 | xargs -0 realpath | sort -R)

##### encode mkv to mp4 with hardsubs

   mpv  file.mkv  -o out.mp4

##### stream a mkv file to facebook from cmd

   mpv  file.mkv -o out.flv oac=libmp3lame oacopts=b=128000;  ffmpeg  -re -i output-003.flv  -f flv 'rtmp://rtmp-api.facebook.com:80/rtmp/facebookkeyandparams'
