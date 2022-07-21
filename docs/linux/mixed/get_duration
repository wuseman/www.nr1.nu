# get_duration

##### Get duration of an audio file in seconds.

   get_duration () { durline=$(sox "$1" -n stat 2>&1|grep "Length (seconds):");echo ${durline#*\: }; }

##### Get duration of an audio file in seconds.

   get_duration  () { IFS=.: read -r _ h m s _ < <(ffmpeg -i "$1" 2>&1 | grep Duration);echo $(( h * 3600 + m * 60 + s )); }

##### Get duration of an audio file in seconds.

   get_duration () { durline=$(sox "$1" -n stat 2>&1|grep "Length (seconds):");echo ${durline#*\: }; }
