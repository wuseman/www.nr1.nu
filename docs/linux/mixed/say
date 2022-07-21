# say

##### Gets the english pronunciation of a phrase

   say () { wget -q -U Mozilla -O output.mp3 "http://translate.google.com/translate_tts?tl=en&q=$1"; gnome-terminal -x bash -c "totem output.mp3"; sleep 4; totem quit;}

##### echo text in fancy manner

   say speed() { for i in $(seq 1 `echo "$1"|wc -c`); do echo -n "`echo $1 |cut -c ${i}`"; sleep 0.1s; done; echo "";}

##### Timer with sound alarm

   say (){ mplayer -user-agent Mozilla "http://translate.google.com/translate_tts?tl=en&q=$(echo $* | sed 's#\ #\+#g')" > /dev/null 2>&1 ;  }; sleep 3s && say "wake up, you bastard"

##### Google text-to-speech in local language or language of choice

   say () { if [[ "${1}" =~ -[a-z]{2} ]]; then local lang=${1#-}; local text="${*#$1}"; else local lang=${LANG%_*}; local text="$*";fi; mplayer "http://translate.google.com/translate_tts?ie=UTF-8&tl=${lang}&q=${text}" &> /dev/null ; }

##### Read aloud a text file in Mac OS X

   say  `cat /path/to/textfile.txt`

##### Mac OS X command line hilarity

   say  sofa king great

##### Read aloud a text file in Mac OS X

   say  -f file.txt

##### use google's text-to-speech and play in media player

   say () {   wget -q -U Mozilla -O output.mp3 "http://translate.google.com/translate_tts?ie=UTF-8&tl=en&q=$1"   open output.mp3 &>/dev/null || xdg-open output.mp3 &>/dev/null }

##### OSX: Hear pronunciation of a word

   say  WORD

##### google tts

   say () { curl -sA Mozilla -d q=`python3 -c 'from urllib.parse import quote_plus; from sys import stdin; print(quote_plus(stdin.read()[:100]))' <<<"$@"` 'http://translate.google.com/translate_tts' | mpg123 -q -; }

##### read unixtimestamp with festival

   say ='festival tts'; S=$(date +%s); echo $(echo $S | cut -b 1-1)" billion" | $say ; echo $(echo $S | cut -b 2-4 | sed 's/0*//')" million"| $say; echo $(echo $S | cut -b 5-7 | sed 's/0*//')" thousand"| $say

##### Gets the english pronunciation of a phrase

   say () { mplayer "http://translate.google.com/translate_tts?q=$1"; }

##### Google text-to-speech in mp3 format

   say (){ mplayer -user-agent Mozilla "http://translate.google.com/translate_tts?tl=en&q=$(echo $* | sed 's#\ #\+#g')" > /dev/null 2>&1 ;  }

##### Gets the english pronunciation of a phrase

   say () { local IFS=+;mplayer "http://translate.google.com/translate_tts?q=$*"; }

##### Let google say something for you! (mpv can be replaced by any mp3-decoder)

   say  () { mpv $(sed -E "s;([a-Z]*)( |$);http://ssl.gstatic.com/dictionary/static/sounds/de/0/\1.mp3 ;g" <<< $*); }; say hello world "how is it" going

##### Get your mac to talk to you

   say  -v Vicki "Hi, I'm a mac"

##### Timer with sound alarm

   say (){ mplayer -user-agent Mozilla "http://translate.google.com/translate_tts?tl=en&q=$(echo $* | sed 's#\ #\+#g')" > /dev/null 2>&1 ;  }; sleep 3s && say "wake up, you bastard"

##### Google text-to-speech in local language or language of choice

   say () { if [[ "${1}" =~ -[a-z]{2} ]]; then local lang=${1#-}; local text="${*#$1}"; else local lang=${LANG%_*}; local text="$*";fi; mplayer "http://translate.google.com/translate_tts?ie=UTF-8&tl=${lang}&q=${text}" &> /dev/null ; }

##### Read aloud a text file in Mac OS X

   say  -f file.txt

##### use google's text-to-speech and play in media player

   say () {   wget -q -U Mozilla -O output.mp3 "http://translate.google.com/translate_tts?ie=UTF-8&tl=en&q=$1"   open output.mp3 &>/dev/null || xdg-open output.mp3 &>/dev/null }

##### OSX: Hear pronunciation of a word

   say  WORD

##### google tts

   say () { curl -sA Mozilla -d q=`python3 -c 'from urllib.parse import quote_plus; from sys import stdin; print(quote_plus(stdin.read()[:100]))' <<<"$@"` 'http://translate.google.com/translate_tts' | mpg123 -q -; }

##### read unixtimestamp with festival

   say ='festival tts'; S=$(date +%s); echo $(echo $S | cut -b 1-1)" billion" | $say ; echo $(echo $S | cut -b 2-4 | sed 's/0*//')" million"| $say; echo $(echo $S | cut -b 5-7 | sed 's/0*//')" thousand"| $say

##### Gets the english pronunciation of a phrase

   say () { mplayer "http://translate.google.com/translate_tts?q=$1"; }

##### Google text-to-speech in mp3 format

   say (){ mplayer -user-agent Mozilla "http://translate.google.com/translate_tts?tl=en&q=$(echo $* | sed 's#\ #\+#g')" > /dev/null 2>&1 ;  }

##### Gets the english pronunciation of a phrase

   say () { local IFS=+;mplayer "http://translate.google.com/translate_tts?q=$*"; }

##### Let google say something for you! (mpv can be replaced by any mp3-decoder)

   say  () { mpv $(sed -E "s;([a-Z]*)( |$);http://ssl.gstatic.com/dictionary/static/sounds/de/0/\1.mp3 ;g" <<< $*); }; say hello world "how is it" going

##### Get your mac to talk to you

   say  -v Vicki "Hi, I'm a mac"
