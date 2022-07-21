# amixer

##### sets volume via command line

   amixer  -c 0 set Master 1dB+

##### sets volume via command line

   amixer  -c 0 set PCM 2dB+

##### Set audio card 0 master volumn to maximum

   amixer  -c 0 set Master 100%

##### Mute Master sound channel, printing only the percent volume

   amixer  -c 0 set Master toggle | sed -n "$ p" | awk '{print $4}' | sed "s/[^0-9]//g"

##### Unmuting master channel, printing only percent value, while suppressing other outputs

   amixer  -c 0 set Master toggle | tail -1 | awk '{print $4}' | sed "s/[^0-9]//g" ; amixer -c 0 set Speaker toggle >/dev/null; amixer -c 0 set Front toggle >/dev/null

##### this toggles mute on the Master channel of an alsa soundcard

   amixer  sset Master toggle

##### Set audio card 0 master volumn to maximum

   amixer  -c 0 set Master 100%

##### this toggles mute on the Master channel of an alsa soundcard

   amixer  sset Master toggle
