# google

##### Edit a google doc with vim

   google  docs edit title "To-Do List" editor vim

##### Edit a google doc with vim

   google  docs edit title "To-Do List" editor vim

##### Upload a video to youtube

   google  youtube post title "My\ Video" category Education ~/myvideo.avi

##### Do Google search from that command line opening into a new Firefox tab.

   google () { gg="https://www.google.com/search?q="; ff="firefox"; if [[ $1 ]]; then "$ff" -new-tab "$gg"$(echo ${1//[^a-zA-Z0-9]/+}); else echo 'Usage: google "[seach term]"'; fi }

##### Create commands to download all of your Picasaweb albums

   google  picasa list-albums |awk 'BEGIN { FS = "," }; {print "\""$1"\""}'|sed s/^/google\ picasa\ get\ /|awk ' {print $0,"."}'

##### List upcoming events on google calendar

   google  calendar list date `date date="next thursday" +%Y-%m-%d`

##### Convert GoogleCL gmail contacts to cone adress book

   google  contacts list name,name,email|perl -pne 's%^((?!N\/A)(.+?)),((?!N\/A)(.+?)),([a-z0-9\._-]+\@([a-z0-9][a-z0-9-]*[a-z0-9]\.)+([a-z]+\.)?([a-z]+))%${1}:${3} <${5}>%imx' #see below for full command

##### Create commands to download all of your Google docs

   google  docs list |awk 'BEGIN { FS = "," }; {print "\""$1"\""}'|sed s/^/google\ docs\ get\ /|awk ' {print $0,"."}'

##### Return the one-liner google response for queries like "12*24" or "what time is it in the uk"

   google () {   Q="$@"; GOOG_URL='https://www.google.com/search?q=';  AGENT="Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36" elinks -dump "${GOOG_URL}${Q//\ /+}" | grep "\*" | head -1 }

##### Do Google search from the shell, opening into Chromium or a new Firefox tab if not installed.

   google () { gg="https://www.google.com/search?q=";q="";if [[ $1 ]]; then for arg in "$@" ; do q="$q+$arg"; done ; if [[ -f /usr/bin/chromium ]]; then chromium "$gg"$q; else firefox -new-tab "$gg"$q; fi else echo 'Usage: google "[seach term]"'; fi }

##### search google on any OS

   google  "search terms" #see description for more details

##### Edit a google doc with vim

   google  docs edit title "To-Do List" editor vim

##### Upload a video to youtube

   google  youtube post title "My\ Video" category Education ~/myvideo.avi

##### Do Google search from that command line opening into a new Firefox tab.

   google () { gg="https://www.google.com/search?q="; ff="firefox"; if [[ $1 ]]; then "$ff" -new-tab "$gg"$(echo ${1//[^a-zA-Z0-9]/+}); else echo 'Usage: google "[seach term]"'; fi }

##### Create commands to download all of your Picasaweb albums

   google  picasa list-albums |awk 'BEGIN { FS = "," }; {print "\""$1"\""}'|sed s/^/google\ picasa\ get\ /|awk ' {print $0,"."}'

##### List upcoming events on google calendar

   google  calendar list date `date date="next thursday" +%Y-%m-%d`

##### Convert GoogleCL gmail contacts to cone adress book

   google  contacts list name,name,email|perl -pne 's%^((?!N\/A)(.+?)),((?!N\/A)(.+?)),([a-z0-9\._-]+\@([a-z0-9][a-z0-9-]*[a-z0-9]\.)+([a-z]+\.)?([a-z]+))%${1}:${3} <${5}>%imx' #see below for full command

##### Create commands to download all of your Google docs

   google  docs list |awk 'BEGIN { FS = "," }; {print "\""$1"\""}'|sed s/^/google\ docs\ get\ /|awk ' {print $0,"."}'

##### Return the one-liner google response for queries like "12*24" or "what time is it in the uk"

   google () {   Q="$@"; GOOG_URL='https://www.google.com/search?q=';  AGENT="Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.152 Safari/537.36" elinks -dump "${GOOG_URL}${Q//\ /+}" | grep "\*" | head -1 }

##### Do Google search from the shell, opening into Chromium or a new Firefox tab if not installed.

   google () { gg="https://www.google.com/search?q=";q="";if [[ $1 ]]; then for arg in "$@" ; do q="$q+$arg"; done ; if [[ -f /usr/bin/chromium ]]; then chromium "$gg"$q; else firefox -new-tab "$gg"$q; fi else echo 'Usage: google "[seach term]"'; fi }

##### search google on any OS

   google  "search terms" #see description for more details
