# ffmpeg

## Cut mp3 file from 30 seconds to 70

ffmpeg -ss 30 -t 70 -i inputfile.mp3 -acodec copy outputfile.mp3

### extract sound from movie file (-vn = no video)

ffmpeg -i input-video.mkv -vn -acodec copy output-audio.mp3

### same as above (it's best to use -q:a 0 for various bitrate)

ffmpeg -i sample.avi -q:a 0 -map a sample.mp3

### Cut mp3 file from 30 seconds to 70 only audi

ffmpeg -i Molle_Musikvideo_Jobba,_Jobba,_Jobba-26tzRuurdgo.mkv -ss 56 -t 61 -q:a 0 -map a molle_-_jobba.jobba.mp3

### Convert mp3 to ogg

ffmpeg -i input.mp3 -c:a libvorbis -q:a 4 output.ogg

### Convert all mp3 fifles in current dir to ogg

for f in ./*.mp3; do ffmpeg -i "$f" -c:a libvorbis -q:a 4 "${f/%mp3/ogg}"; done

### Convert all mp3 fifles in current dir to ogg recursive

find . -type f -name '*.mp3' -exec bash -c 'ffmpeg -i "$0" -c:a libvorbis -q:a 4 "${0/%mp3/ogg}"' '{}' \;

### Convert webm to mp3

ffmpeg -i "${FILE}" -vn -ab 128k -ar 44100 -y "${FILE%.webm}.mp3";

### Convert many webm to mp3

find . -type f -iname "*.webm" -exec bash -c 'FILE="$1"; ffmpeg -i "${FILE}" -vn -ab 128k -ar 44100 -y "${FILE%.webm}.mp3";' _ '{}' \;

### Convert many mkv to mp3

find . -type f -name "*.mkv" -exec bash -c 'FILE="$1"; ffmpeg -i "${FILE}" -vn -c:a libmp3lame -y "${FILE%.mkv}.mp3";' _ '{}' \;


### Cut from start to 34 seconds in video

ffmpeg -ss 00:00:00 -to 00:00:34 -i 20220404_235437.mp4 -c copy output.mp4

### Cut from start to 34 seconds in video and remove sound

ffmpeg -ss 00:00:00 -to 00:00:34 -i 20220404_235437.mp4 -c copy -an output.mp4



### Convert all flac files in dir to mp3 320kbps using ffmpeg

for FILE in *.flac; do ffmpeg -i "$FILE" -b:a 320k "${FILE[@]/%flac/mp3}"; done;

###  Convert a music file (mp3) to a mp4 video with a static image 

ffmpeg -loop_input -i cover.jpg -i soundtrack.mp3 -shortest -acodec copy output_video.mp4

