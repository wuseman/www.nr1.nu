# lam

##### Convert an mp3 and add to it a img

   lam e -v 2 -b 192 ti /path/to/file.jpg audio.mp3 new-audio.mp3

##### create an mp3 with variable bitrate

   lam e -h -V 6 track9.wav track9.mp3

##### Convert wav to mp3

   lam e rec01.wav rec01.mp3

##### reduce mp3 bitrate (and size, of course)

   lam e mp3input -m m resample 24 input.mp3

##### convert wav into mp3 using lame

   lam e -V2 rec01.wav rec01.mp3

##### Convert a mp3 file to CBR 128 kbps high quality

   lam e -m j -V 4 -q 0 lowpass 17 -b 128 cbr "infile" "128/outfile"

##### Laminate files line by line

   lam  -f 1.4 myfile

##### reduce mp3 bitrate (and size, of course)

   lam e mp3input -m m resample 24 input.mp3

##### convert wav into mp3 using lame

   lam e -V2 rec01.wav rec01.mp3
