# mencoder

##### mencoder convert bluray to xvid

   mencoder  input.m2ts -oac mp3lame -lameopts cbr:br=128 -ofps 24 -vf harddup -vf scale=1280:720 -ovc xvid -xvidencopts fixed_quant=3 -o output.xvid.lamp.avi

##### Convert video type from mpg to wmv

   mencoder  -ovc lavc -lavcopts vcodec=mpeg4:vbitrate=1000:vhq -oac mp3lame -lameopts br=98 -o output.wmv input.mpg

##### Use heading subtitle file as watermark using mencoder

   mencoder  -sub heading.ssa -subpos 0 -subfont-text-scale 4 -utf8 -oac mp3lame -lameopts cbr=128 -ovc lavc -lavcopts vcodec=mjpeg -vf scale=320:-2,expand=:240:::1 -o output.avi input.flv

##### slow down/speed up video file

   mencoder  -speed 2 -o output.avi -ovc lavc -oac mp3lame input.avi

##### create a motion jpeg (MJPEG) with the jpg file from current directory with mencoder

   mencoder  mf://image1.jpg,image2.jpg,image3.jpg -mf w=800:h=600:fps=25:type=jpeg -ovc copy -oac copy -o output.avi

##### Convert videos to AVI format

   mencoder  FILENAME.3gp -ovc lavc -lavcopts vcodec=msmpeg4v2 -oac mp3lame -lameopts vbr=3 -o FILENAME.avi

##### Edit video by cutting the part you like without transcoding.

   mencoder  -ss <start point> -endpos <time from start point> -oac copy -ovc copy <invid> -o <outvid>

##### Compress a series of png pictures to an avi movie.

   mencoder  "mf://*.png" -mf fps=2 -o output.avi -ovc lavc -lavcopts vcodec=mpeg4

##### Convert a flv video file to avi using mencoder

   mencoder  your_video.flv -oac mp3lame -ovc xvid -lameopts preset=standard:fast -xvidencopts pass=1 -o your_video.avi

##### Remux an avi video if it won't play easily on your media device

   mencoder  -ovc copy -oac copy -of avi -o remuxed.avi original.avi

##### Record audio and video from webcam using mencoder

   mencoder  tv:// -tv driver=v4l2:width=800:height=600:device=/dev/video0:fps=30:outfmt=yuy2:forceaudio:alsa:adevice=hw.2,0 -ovc lavc -lavcopts vcodec=mpeg4:vbitrate=1800 -ffourcc xvid -oac mp3lame -lameopts cbr=128 -o output.avi

##### create a .avi with many .jpg

   mencoder  "mf://*.jpg" -mf fps=8 -o ./video.avi -ovc lavc

##### Merge video files together using mencoder (part of mplayer)

   mencoder  -oac copy -ovc copy part1.avi part2.avi part3.avi -o full_movie.avi

##### Rip DVD to YouTube ready MPEG-4 AVI file using mencoder

   mencoder  -oac mp3lame -lameopts cbr=128 -ovc lavc -lavcopts vcodec=mpeg4 -ffourcc xvid -vf scale=320:-2,expand=:240:::1 -o output.avi dvd://0

##### Convert video files to XviD

   mencoder  "$1" -ofps 23.976 -ovc lavc -oac copy -o "$1".avi

##### Convert wmv into avi

   mencoder  infile.wmv -ofps 23.976 -ovc lavc -oac copy -o outfile.avi

##### Extract audio stream from an AVI file using mencoder

   mencoder  "${file}" -of rawaudio -oac mp3lame -ovc copy -o audio/"${file/%avi/mp3}"

##### DVD to YouTube ready watermarked MPEG-4 AVI file using mencoder (step 2)

   mencoder  -sub heading.ssa -subpos 0 -subfont-text-scale 4 -utf8 -oac copy -ovc lavc -lavcopts vcodec=mpeg4 -vf scale=320:-2,expand=:240:::1 -ffourcc xvid -o output.avi dvd.avi

##### Convert a flv video file to avi using mencoder

   mencoder  -oac mp3lame -lameopts cbr=128 -ovc xvid -xvidencopts bitrate=1200 inputfile.rmvb -o output.avi

##### Concatenate video files to YouTube ready output

   mencoder  -audiofile input.mp3 -oac copy -ovc lavc -lavcopts vcodec=mpeg4 -ffourcc xvid -vf scale=320:240,harddup input1.avi input2.avi -o output.avi

##### Extract audio track from a video file using mencoder

   mencoder  -of rawaudio -ovc copy -oac mp3lame -o output.mp3 input.avi

##### Convert .flv to .avi

   mencoder  input.flv -ovc lavc -oac mp3lame -o output.avi

##### First pass dvd rip... The set of commands was too long, so I had to separate them into two.

   mencoder  dvd://<title> -dvd-device <device> -aid 128 -info srcform='ripped by mencoder' -oac mp3lame -lameopts abr:br=128 -ovc xvid -xvidencopts pass=1:chroma_opt:vhq=4:bvhq=1:quant_type=mpeg -vf pp=de,crop=0:0:0:0, -ofps 30000/1001 -o '/dev/null'

##### Second pass dvd rip... The set of commands was too long, so I had to separate them into two.

   mencoder  dvd://<title> -dvd-device <device> -aid 128 -info srcform='ripped by mencoder' -oac mp3lame -lameopts abr:br=128 -ovc xvid -xvidencopts pass=2:bitrate=-700000 -ofps 30000/1001 -o '<outputfile.avi>'

##### Rip a DVD to AVI format

   mencoder  dvd://1 -aid 128 -o track-1.avi -oac copy -ovc lavc -lavcopts vcodec=mpeg4

##### remove audio trac from a video file

   mencoder  -ovc copy -nosound ./movie.mov -o ./movie_mute.mov

##### Substitute audio track of video file using mencoder

   mencoder  -ovc copy -audiofile input.mp3 -oac copy input.avi -o output.avi

##### Join flv files

   mencoder  -forceidx -of lavf -oac copy -ovc copy -o output.flv clip1.flv clip2.flv clip3.flv

##### Rotate a video file by 90 degrees CW

   mencoder  -vf rotate=1 -ovc lavc -oac copy "$1" -o "$1"-rot.avi

##### FLV to AVI with subtitles and forcing audio sync using mencoder

   mencoder  -sub subs.ssa -utf8 -subfont-text-scale 4 -oac mp3lame -lameopts cbr=128 -ovc lavc -lavcopts vcodec=mpeg4 -ffourcc xvid -o output.avi input.flv

##### Extract audio stream from an video file using mencoder

   mencoder  "${file}" -of rawaudio -oac mp3lame -ovc copy -o "${file%.*}.mp3"

##### convert MTS video file format into xvid/mp3 avi format

   mencoder  YOUR_VIDEO.MTS -ovc xvid -xvidencopts bitrate=5000:pass=2 -demuxer lavf -sws 3  -mc 0 -fps 25 -ofps 50 -oac mp3lame -lameopts cbr:br=128 -o YOUR_VIDEO.avi

##### Record camera's output to a avi file

   mencoder  -tv device=/dev/video1 tv:// -ovc copy -o video.avi

##### Encode a file to MPEG4 format

   mencoder  video.avi lavc -lavcopts vcodec=mpeg4:vbitrate=800 newvideo.avi

##### Remove sound from video file using mencoder

   mencoder  -ovc copy -nosound input.avi -o output.avi

##### convert a .wmv to a .avi

   mencoder  "/path/to/file.wmv" -ofps 23.976 -ovc lavc -oac copy -o "/path/to/file.avi"

##### convert wmv into xvid avi format

   mencoder  -ovc xvid -oac mp3lame -srate 44100 -af lavcresample=44100 -xvidencopts fixed_quant=4 Foo.wmv -o Bar.avi

##### add an mp3 audio track to a video

   mencoder  -idx Your_Input_Video_File -ovc lavc -oac mp3lame -audiofile  Your_Audio_track.mp3  -o  Output_File.avi

##### Encoding from AVI to MPEG format

   mencoder  input.avi -of mpeg -ovc lavc -lavcopts vcodec=mpeg1video \     -oac copy other_options -o output.mpg

##### Create a mpeg4 video from a jpeg picture sequence (e.g. for pencil animation) , from the current directory with mencoder

   mencoder  mf://*.jpg -mf w=800:h=600:fps=25:type=jpeg -ovc lavc -lavcopts vcodec=mpeg4 -oac copy -o output.avi

##### DVD to YouTube ready watermarked MPEG-4 AVI file using mencoder (step 1)

   mencoder  -oac mp3lame -lameopts cbr=128 -ovc lavc -lavcopts vcodec=mjpeg -o dvd.avi dvd://0

##### mencoder convert video to xvid

   mencoder  input_file -o output_file -oac mp3lame -lameopts cbr:br=32 -ofps 30 -vf harddup -ovc xvid -xvidencopts fixed_quant=3

##### Stream video to screen with a delay (cyberart)

   mencoder  tv:// -tv driver=v4l2:width=320:height=240:device=/dev/video1 -nosound -ovc lavc -really-quiet -quiet -o - | (sleep 10m; cat) | mplayer - -cache 512

##### Convert a batch of images to a Video

   mencoder  "mf://frame_*.bmp" -mf w=720:h=480:fps=30:type=bmp -ovc lavc -lavcopts vcodec=mpeg4 -o number_video.mp4

##### convert flv into avi file and mp3 sound

   mencoder  input.flv -ovc lavc -oac mp3lame -o output.avi

##### Compile all jpegs into 1 video by alphabetical order @ 50 fps

   mencoder  mf://*.jpg -mf fps=50:type=jpg -ovc raw -oac copy -o out50fps.avi

##### Convert a VMWare screencast into a flv file

   mencoder  -of avi -ovc lavc movie.avi -o movie2.avi; ffmpeg -i movie2.avi -r 12  -b 100 movie.flv

##### Convert vcd to avi format

   mencoder  vcd://2 -o sample.avi -oac copy -ovc lavc -lavcopts vcodec=mpeg4

##### Extract an audio track from a multilingual video file, for a specific language.

   mencoder  -aid 2 -oac copy file.avi -o english.mp3

##### Convert .ogg to .avi

   mencoder  -idx a.ogg -ovc lavc -oac mp3lame -o b.avi

##### Concatenate (join) video files

   mencoder  -forceidx -ovc copy -oac copy -o output.avi video1.avi video2.avi

##### Edit video by cutting the part you like without transcoding.

   mencoder  -ss <start point> -endpos <time from start point> -oac copy -ovc copy <invid> -o <outvid>

##### Compress a series of png pictures to an avi movie.

   mencoder  "mf://*.png" -mf fps=2 -o output.avi -ovc lavc -lavcopts vcodec=mpeg4

##### Convert a flv video file to avi using mencoder

   mencoder  your_video.flv -oac mp3lame -ovc xvid -lameopts preset=standard:fast -xvidencopts pass=1 -o your_video.avi

##### Remux an avi video if it won't play easily on your media device

   mencoder  -ovc copy -oac copy -of avi -o remuxed.avi original.avi

##### Record audio and video from webcam using mencoder

   mencoder  tv:// -tv driver=v4l2:width=800:height=600:device=/dev/video0:fps=30:outfmt=yuy2:forceaudio:alsa:adevice=hw.2,0 -ovc lavc -lavcopts vcodec=mpeg4:vbitrate=1800 -ffourcc xvid -oac mp3lame -lameopts cbr=128 -o output.avi

##### create a .avi with many .jpg

   mencoder  "mf://*.jpg" -mf fps=8 -o ./video.avi -ovc lavc

##### Merge video files together using mencoder (part of mplayer)

   mencoder  -oac copy -ovc copy part1.avi part2.avi part3.avi -o full_movie.avi

##### Rip DVD to YouTube ready MPEG-4 AVI file using mencoder

   mencoder  -oac mp3lame -lameopts cbr=128 -ovc lavc -lavcopts vcodec=mpeg4 -ffourcc xvid -vf scale=320:-2,expand=:240:::1 -o output.avi dvd://0

##### Convert video files to XviD

   mencoder  "$1" -ofps 23.976 -ovc lavc -oac copy -o "$1".avi

##### Convert wmv into avi

   mencoder  infile.wmv -ofps 23.976 -ovc lavc -oac copy -o outfile.avi

##### Extract audio stream from an AVI file using mencoder

   mencoder  "${file}" -of rawaudio -oac mp3lame -ovc copy -o audio/"${file/%avi/mp3}"

##### DVD to YouTube ready watermarked MPEG-4 AVI file using mencoder (step 2)

   mencoder  -sub heading.ssa -subpos 0 -subfont-text-scale 4 -utf8 -oac copy -ovc lavc -lavcopts vcodec=mpeg4 -vf scale=320:-2,expand=:240:::1 -ffourcc xvid -o output.avi dvd.avi

##### Convert a flv video file to avi using mencoder

   mencoder  -oac mp3lame -lameopts cbr=128 -ovc xvid -xvidencopts bitrate=1200 inputfile.rmvb -o output.avi

##### Concatenate video files to YouTube ready output

   mencoder  -audiofile input.mp3 -oac copy -ovc lavc -lavcopts vcodec=mpeg4 -ffourcc xvid -vf scale=320:240,harddup input1.avi input2.avi -o output.avi

##### Extract audio track from a video file using mencoder

   mencoder  -of rawaudio -ovc copy -oac mp3lame -o output.mp3 input.avi

##### Convert .flv to .avi

   mencoder  input.flv -ovc lavc -oac mp3lame -o output.avi

##### First pass dvd rip... The set of commands was too long, so I had to separate them into two.

   mencoder  dvd://<title> -dvd-device <device> -aid 128 -info srcform='ripped by mencoder' -oac mp3lame -lameopts abr:br=128 -ovc xvid -xvidencopts pass=1:chroma_opt:vhq=4:bvhq=1:quant_type=mpeg -vf pp=de,crop=0:0:0:0, -ofps 30000/1001 -o '/dev/null'

##### Second pass dvd rip... The set of commands was too long, so I had to separate them into two.

   mencoder  dvd://<title> -dvd-device <device> -aid 128 -info srcform='ripped by mencoder' -oac mp3lame -lameopts abr:br=128 -ovc xvid -xvidencopts pass=2:bitrate=-700000 -ofps 30000/1001 -o '<outputfile.avi>'

##### Rip a DVD to AVI format

   mencoder  dvd://1 -aid 128 -o track-1.avi -oac copy -ovc lavc -lavcopts vcodec=mpeg4

##### remove audio trac from a video file

   mencoder  -ovc copy -nosound ./movie.mov -o ./movie_mute.mov

##### Substitute audio track of video file using mencoder

   mencoder  -ovc copy -audiofile input.mp3 -oac copy input.avi -o output.avi

##### Join flv files

   mencoder  -forceidx -of lavf -oac copy -ovc copy -o output.flv clip1.flv clip2.flv clip3.flv

##### Rotate a video file by 90 degrees CW

   mencoder  -vf rotate=1 -ovc lavc -oac copy "$1" -o "$1"-rot.avi

##### FLV to AVI with subtitles and forcing audio sync using mencoder

   mencoder  -sub subs.ssa -utf8 -subfont-text-scale 4 -oac mp3lame -lameopts cbr=128 -ovc lavc -lavcopts vcodec=mpeg4 -ffourcc xvid -o output.avi input.flv

##### Extract audio stream from an video file using mencoder

   mencoder  "${file}" -of rawaudio -oac mp3lame -ovc copy -o "${file%.*}.mp3"

##### convert MTS video file format into xvid/mp3 avi format

   mencoder  YOUR_VIDEO.MTS -ovc xvid -xvidencopts bitrate=5000:pass=2 -demuxer lavf -sws 3  -mc 0 -fps 25 -ofps 50 -oac mp3lame -lameopts cbr:br=128 -o YOUR_VIDEO.avi

##### Record camera's output to a avi file

   mencoder  -tv device=/dev/video1 tv:// -ovc copy -o video.avi

##### Encode a file to MPEG4 format

   mencoder  video.avi lavc -lavcopts vcodec=mpeg4:vbitrate=800 newvideo.avi

##### Remove sound from video file using mencoder

   mencoder  -ovc copy -nosound input.avi -o output.avi

##### convert a .wmv to a .avi

   mencoder  "/path/to/file.wmv" -ofps 23.976 -ovc lavc -oac copy -o "/path/to/file.avi"

##### convert wmv into xvid avi format

   mencoder  -ovc xvid -oac mp3lame -srate 44100 -af lavcresample=44100 -xvidencopts fixed_quant=4 Foo.wmv -o Bar.avi

##### add an mp3 audio track to a video

   mencoder  -idx Your_Input_Video_File -ovc lavc -oac mp3lame -audiofile  Your_Audio_track.mp3  -o  Output_File.avi

##### Encoding from AVI to MPEG format

   mencoder  input.avi -of mpeg -ovc lavc -lavcopts vcodec=mpeg1video \     -oac copy other_options -o output.mpg

##### Create a mpeg4 video from a jpeg picture sequence (e.g. for pencil animation) , from the current directory with mencoder

   mencoder  mf://*.jpg -mf w=800:h=600:fps=25:type=jpeg -ovc lavc -lavcopts vcodec=mpeg4 -oac copy -o output.avi

##### DVD to YouTube ready watermarked MPEG-4 AVI file using mencoder (step 1)

   mencoder  -oac mp3lame -lameopts cbr=128 -ovc lavc -lavcopts vcodec=mjpeg -o dvd.avi dvd://0

##### mencoder convert video to xvid

   mencoder  input_file -o output_file -oac mp3lame -lameopts cbr:br=32 -ofps 30 -vf harddup -ovc xvid -xvidencopts fixed_quant=3

##### Stream video to screen with a delay (cyberart)

   mencoder  tv:// -tv driver=v4l2:width=320:height=240:device=/dev/video1 -nosound -ovc lavc -really-quiet -quiet -o - | (sleep 10m; cat) | mplayer - -cache 512

##### Convert a batch of images to a Video

   mencoder  "mf://frame_*.bmp" -mf w=720:h=480:fps=30:type=bmp -ovc lavc -lavcopts vcodec=mpeg4 -o number_video.mp4

##### convert flv into avi file and mp3 sound

   mencoder  input.flv -ovc lavc -oac mp3lame -o output.avi

##### Compile all jpegs into 1 video by alphabetical order @ 50 fps

   mencoder  mf://*.jpg -mf fps=50:type=jpg -ovc raw -oac copy -o out50fps.avi

##### Convert a VMWare screencast into a flv file

   mencoder  -of avi -ovc lavc movie.avi -o movie2.avi; ffmpeg -i movie2.avi -r 12  -b 100 movie.flv

##### Concatenate (join) video files

   mencoder  -forceidx -ovc copy -oac copy -o output.avi video1.avi video2.avi
