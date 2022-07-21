# arecord

##### Pulseaudio: play line-in through your speakers

   arecord |aplay

##### output your microphone to a remote computer's speaker

   arecord  -f dat | ssh -C user@host aplay -f dat

##### Spy audio, it only records if detects a sound or noise

   arecord  -q -f cd -d 1 recvol.wav;sox recvol.wav -n stat 2>&1|grep RMS|grep amplitude|cut -d"." -f2|cut -c 1-2>recvol;echo $((`cat recvol`+1))>recvol;rec -t wav - silence 1 0.1 `cat recvol` -1 1.0 `cat recvol`%|lame -s 44.1 -a -v - >record.mp3

##### Record microphone input and output to date stamped mp3 file

   arecord  -q -f cd -r 44100 -c2 -t raw | lame -S -x -h -b 128 - `date +%Y%m%d%H%M`.mp3

##### Realtime delay effect

   arecord  -D plughw:1,0 | play -d echos 0.3 0.2 700 0.25 800 0.3

##### output your microphone to a remote computer's speaker

   arecord  -f dat | ssh -C user@host aplay -f dat

##### Spy audio, it only records if detects a sound or noise

   arecord  -q -f cd -d 1 recvol.wav;sox recvol.wav -n stat 2>&1|grep RMS|grep amplitude|cut -d"." -f2|cut -c 1-2>recvol;echo $((`cat recvol`+1))>recvol;rec -t wav - silence 1 0.1 `cat recvol` -1 1.0 `cat recvol`%|lame -s 44.1 -a -v - >record.mp3

##### Record microphone input and output to date stamped mp3 file

   arecord  -q -f cd -r 44100 -c2 -t raw | lame -S -x -h -b 128 - `date +%Y%m%d%H%M`.mp3

##### Realtime delay effect

   arecord  -D plughw:1,0 | play -d echos 0.3 0.2 700 0.25 800 0.3
