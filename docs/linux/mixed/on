# on

##### Copy files over network using compression

   on  the listening side: sudo nc -lp 2022 | sudo tar -xvf -    and on the sending side:      tar -cvzf - ./*| nc -w 3 name_of_listening_host 2022

##### run a command whenever a file is touched

   on touchdo(){ while :; do a=$(stat -c%Y "$1"); [ "$b" != "$a" ] && b="$a" && sh -c "$2"; sleep 1; done }

##### this toggles mute on the Master channel of an alsa soundcard

   on ="off"; off="on"; now=$(amixer get Master | tr -d '[]' | grep "Playback.*%" |head -n1 |awk '{print $7}'); amixer sset Master ${!now}

##### run a command whenever a file is touched

   on touchdo(){ while :; do a=$(stat -c%Y "$1"); [ "$b" != "$a" ] && b="$a" && sh -c "$2"; sleep 1; done }
