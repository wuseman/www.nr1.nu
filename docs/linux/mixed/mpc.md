# mpc

##### one-liner mpc track changer using dmenu

   mpc  play $(sed -n "s@^[ >]\([0-9]\+\)) $(mpc playlist|cut -d' ' -f3-|dmenu -i -p 'song name'||echo void)@\1@p" < <(mpc playlist))

##### Listen to TWiT with mpd/mpc

   mpc  clear && mpc add http://twit.am:80/listen && mpc play

##### Finds the track no of songs, to be played

   mpc  playlist | grep -in bar

##### one-liner mpc track changer using dmenu

   mpc  play $(sed -n "s@^[ >]\([0-9]\+\)) $(mpc playlist|cut -d' ' -f3-|dmenu -i -p 'song name'||echo void)@\1@p" < <(mpc playlist))

##### Listen to TWiT with mpd/mpc

   mpc  clear && mpc add http://twit.am:80/listen && mpc play

##### Finds the track no of songs, to be played

   mpc  playlist | grep -in bar
