# lame

##### Convert an mp3 and add to it a img

   lame  -v 2 -b 192 ti /path/to/file.jpg audio.mp3 new-audio.mp3

##### create an mp3 with variable bitrate

   lame  -h -V 6 track9.wav track9.mp3

##### Convert wav to mp3

   lame  rec01.wav rec01.mp3

##### reduce mp3 bitrate (and size, of course)

   lame  mp3input -m m resample 24 input.mp3

##### convert wav into mp3 using lame

   lame  -V2 rec01.wav rec01.mp3

##### Convert a mp3 file to CBR 128 kbps high quality

   lame  -m j -V 4 -q 0 lowpass 17 -b 128 cbr "infile" "128/outfile"

##### reduce mp3 bitrate (and size, of course)

   lame  mp3input -m m resample 24 input.mp3

##### convert wav into mp3 using lame

   lame  -V2 rec01.wav rec01.mp3
