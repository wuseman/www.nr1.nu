# rec

##### record audio and use sox to eliminate silence. Results an ogg file that only contains the audio signal exceeding -45dB

   rec  -r 44100 -p | sox -p "audio_name-$(date '+%Y-%m-%d').ogg" silence -l 1 00:00:00.5 -45d -1 00:00:00.5 -45d

##### full text(CJK) search mails and link the result to $MAILDIR/bingo/cur/

   rec oll -t -q "keyword" | grep message/rfc822 | sed -s 's,^.*\('$MAILDIR'[^]]*\)\].*$,\"\1\",' | xargs ln -sft $MAILDIR/bingo/cur/

##### Record live sound from soundcard input to FLAC

   rec  -c 2 -r 44100 -s -t wav - | flac - sign=signed channels=2 endian=big sample-rate=44100 bps=16 -f -o file.flac

##### Modificar o enconding de todos arquivos de um diret?rio

   rec ode

##### Record live sound in Vorbis (eg for bootlegs or to take audio notes)

   rec  -c 2 -r 44100 -s -t wav - | oggenc -q 5 raw raw-chan=2 raw-rate=44100 raw-bits=16 - > MyLiveRecording.ogg

##### record the input of your sound card into ogg file

   rec  -c 2 -r 44100 -s -t wav - | oggenc -q 5 raw raw-chan=2 raw-rate=44100 raw-bits=16 - > MyLiveRecording.ogg

##### Record active input of soundcard to file.wav

   rec  -c 2 -r 44100 -s -t wav file.wav

##### send incoming audio to a Icecast server (giss.tv)

   rec  -c 2 -r 44100 -s -t wav - | oggenc - | tee streamdump.ogg | oggfwd giss.tv 8000 password /mountpoint.ogg

##### Show available conversions

   rec ode -l |less

##### txt2html

   rec ode ..HTML < file.txt > file.html

##### Convert file from UTF8 (no BOM) to UTF16 (with BOM)

   rec ode UTF8..UTF-16LE linux-utf8-file.txt

##### Talk out of another computer's speakers

   rec  -t ogg - | ssh remote_hostname play -t ogg -

##### Record live sound in Vorbis (eg for bootlegs or to take audio notes)

   rec  -c 2 -r 44100 -s -t wav - | oggenc -q 5 raw raw-chan=2 raw-rate=44100 raw-bits=16 - > MyLiveRecording.ogg

##### record the input of your sound card into ogg file

   rec  -c 2 -r 44100 -s -t wav - | oggenc -q 5 raw raw-chan=2 raw-rate=44100 raw-bits=16 - > MyLiveRecording.ogg

##### Record active input of soundcard to file.wav

   rec  -c 2 -r 44100 -s -t wav file.wav

##### send incoming audio to a Icecast server (giss.tv)

   rec  -c 2 -r 44100 -s -t wav - | oggenc - | tee streamdump.ogg | oggfwd giss.tv 8000 password /mountpoint.ogg

##### Show available conversions

   rec ode -l |less

##### txt2html

   rec ode ..HTML < file.txt > file.html

##### Convert file from UTF8 (no BOM) to UTF16 (with BOM)

   rec ode UTF8..UTF-16LE linux-utf8-file.txt
