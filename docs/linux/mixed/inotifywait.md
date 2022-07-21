# inotifywait

##### Trigger a command each time a file is created in a directory (inotify)

   inotifywait  -mrq -e CREATE format %w%f /path/to/dir | while read FILE; do chmod g=u "$FILE"; done

##### Immediately put execute permission on any file saved/created in $HOME/bin

   inotifywait  -mr -e CREATE $HOME/bin/ | while read i; do chmod +x $(echo "$i" | sed 's/ \S* //'); done

##### Debug how files are being accessed by a process

   inotifywait  -m -r .

##### Trigger a command each time a file is created in a directory (inotify)

   inotifywait  -mrq -e CREATE format %w%f /path/to/dir | while read FILE; do chmod g=u "$FILE"; done

##### Immediately put execute permission on any file saved/created in $HOME/bin

   inotifywait  -mr -e CREATE $HOME/bin/ | while read i; do chmod +x $(echo "$i" | sed 's/ \S* //'); done

##### Debug how files are being accessed by a process

   inotifywait  -m -r .
