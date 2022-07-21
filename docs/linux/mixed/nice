# nice

##### play all songs under current directory smoothly as background job

   nice  -n0 ls | mpg321 -@- &

##### Real time duplication of Apache app traffic to a second server

   nice  -n -20 ssh SOURCE_SERVER  "tail -f /var/log/httpd/access.log " | awk '{print $7}' | grep jsp | parallel 'curl TARGET_SERVER{} 2>&1 /dev/null'

##### Backup a filesystem to a remote machine and use cstream to throttle bandwidth of the backup

   nice  -n19 dump -0af - /<filesystem> -z9|gpg -e -r <gpg key id>|cstream -v 1 -t 60k|ssh <user@host> "cat > backup.img"

##### Animated Desktop: electricsheep

   nice  -n 5 electricsheep -window-id `xwininfo -root|head -n 2|grep xwininfo|cut -c 22-26`

##### Real time duplication of Apache app traffic to a second server

   nice  -n -20 ssh SOURCE_SERVER  "tail -f /var/log/httpd/access.log " | awk '{print $7}' | grep jsp | parallel 'curl TARGET_SERVER{} 2>&1 /dev/null'

##### Backup a filesystem to a remote machine and use cstream to throttle bandwidth of the backup

   nice  -n19 dump -0af - /<filesystem> -z9|gpg -e -r <gpg key id>|cstream -v 1 -t 60k|ssh <user@host> "cat > backup.img"
