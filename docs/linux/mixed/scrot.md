# scrot

##### Take a screenshot of the screen, upload it to ompldr.org and put link to the clipboard and to the screenshots.log (with a date stamp) in a home directory.

   scrot  $1 /tmp/screenshot.png && curl -s -F file1=@/tmp/screenshot.png -F submit="OMPLOAD\!" http://ompldr.org/upload | egrep '(View file: <a href="v([A-Za-z0-9+\/]+)">)' | sed 's/^.*\(http:\/\/.*\)<.*$/\1/' | xsel -b -i ? (full in a sample output)

##### Take and post a screenshot in 3 seconds to imgur using scrot

   scrot  -d 3 '/tmp/%Y-%m-%d_$wx$h.png' -e 'cat $f'|curl -F "image=@-" -F "key=1913b4ac473c692372d108209958fd15" http://api.imgur.com/2/upload.xml|grep -Eo "<original>(.)*</original>" | grep -Eo "http://i.imgur.com/[^<]*"

##### Easily create and share X screen shots (remote webserver version)

   scrot  -e 'mv $f \$HOME/shots/; sitecopy -u shots; echo "\$BASE/$f" | xsel -i; feh `xsel -o`'

##### Take a screenshot of the focused window with a 4 second countdown

   scrot  -ucd4 -e 'eog $f'

##### capture selected window

   scrot  -s /tmp/file.png

##### scrot screenshot without window appearing

   scrot  '%Y-%m-%d_$wx$h_scrot.png'

##### Screenshot in $1 seconds, upload and retrieve URI from ompdlr.org

   scrot it(){ echo "Screenshot in $1 seconds...";scrot -d $1 '%Y%m%d%h.png' -e 'curl -sF file1=@- http://ompldr.org/upload < $f | grep -P -o "(?<=File:).*(http://ompldr.org/.*)\<\/a\>";rm $f'| sed -r 's@.*(http://ompldr.org/\w{1,7}).*@\1@';}

##### Easily create and share X screen shots (local webserver version)

   scrot  -e 'mv $f \$HOME/public_html/shots/; echo "http://\$HOSTNAME/~\$USER/shots/$f" | xsel -i; feh `xsel -o`'

##### Take a screenshot of the focused window with a 4 second countdown

   scrot  -ucd4 -e 'eog $f'

##### capture selected window

   scrot  -s /tmp/file.png

##### scrot screenshot without window appearing

   scrot  '%Y-%m-%d_$wx$h_scrot.png'

##### Screenshot in $1 seconds, upload and retrieve URI from ompdlr.org

   scrot it(){ echo "Screenshot in $1 seconds...";scrot -d $1 '%Y%m%d%h.png' -e 'curl -sF file1=@- http://ompldr.org/upload < $f | grep -P -o "(?<=File:).*(http://ompldr.org/.*)\<\/a\>";rm $f'| sed -r 's@.*(http://ompldr.org/\w{1,7}).*@\1@';}
