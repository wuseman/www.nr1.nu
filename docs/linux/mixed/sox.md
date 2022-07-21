# sox

##### Stream audio over ssh

   sox  Klaxon.mp3 -t wav - |ssh thelab@company.com paplay

##### Convert mp3/wav file to asterisk ulaw for music on hold (moh)

   sox  -v 0.125 -V <mp3.mp3> -t au -r 8000 -U -b -c 1 <ulaw.ulaw> resample -ql

##### Resample a WAV file with sox

   sox  infile.wav -r 44100 outfile.wav resample

##### Truncate 0.3 sec from an audio file using sox

   sox  input.wav output.wav reverse trim 00:00:00.3 reverse

##### SoX recording audio and trimming silence

   sox  -t alsa default ./recording.flac silence 1 0.1 5% 1 1.0 5%

##### Stream system sounds over rtmp

   sox  -d -p | ffmpeg -i pipe:0 -f flv -preset ultrafast -tune zerolatency rtmp://localhost/live/livestream

##### Apply fade effect to a audio

   sox  input.mp3 output.mp3 fade h 5 00:02:58 5

##### Merge - Concate MP3 files

   sox  *.mp3 -t wavpcm - | lame - > bunch.mp3

##### Get the total length of all video / audio in the current dir (and below) in H:m:s

   sox i -D * | awk '{SUM += $1} END { printf "%d:%d:%d\n",SUM/3600,SUM%3600/60,SUM%60}'

##### Convert a .wav file to .sln file

   sox  is_that_correct.wav -t raw -r 8000 -s -w -c 1 is_that_correct.sln

##### Stream audio over ssh

   sox  Klaxon.mp3 -t wav - |ssh thelab@company.com paplay

##### Convert mp3/wav file to asterisk ulaw for music on hold (moh)

   sox  -v 0.125 -V <mp3.mp3> -t au -r 8000 -U -b -c 1 <ulaw.ulaw> resample -ql

##### Resample a WAV file with sox

   sox  infile.wav -r 44100 outfile.wav resample

##### Truncate 0.3 sec from an audio file using sox

   sox  input.wav output.wav reverse trim 00:00:00.3 reverse

##### SoX recording audio and trimming silence

   sox  -t alsa default ./recording.flac silence 1 0.1 5% 1 1.0 5%

##### Stream system sounds over rtmp

   sox  -d -p | ffmpeg -i pipe:0 -f flv -preset ultrafast -tune zerolatency rtmp://localhost/live/livestream

##### Apply fade effect to a audio

   sox  input.mp3 output.mp3 fade h 5 00:02:58 5

##### Merge - Concate MP3 files

   sox  *.mp3 -t wavpcm - | lame - > bunch.mp3
