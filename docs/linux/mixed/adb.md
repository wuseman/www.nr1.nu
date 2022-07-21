# adb

##### Android PNG screenshot

   adb  pull /dev/graphics/fb0 /dev/stdout | ffmpeg -vframes 1 -vcodec rawvideo -f rawvideo -pix_fmt rgb32 -s 480x800 -i pipe:0 -f image2 -vcodec png screenshot.png

##### Takes and displays screenshot of Android phone over adb.

   adb  shell "screencap -p | base64" | sed 's/\r$//' | base64 -d | display

##### Dump android contacts, sms

   adb  pull /data/data/com.android.providers.contacts/databases/contacts2.db ; sqlite3 -batch <<EOF contacts2.db <CR> .header on <CR> .mode tabs <CR> select * from data; <CR> EOF

##### Take screenshot of Android device using adb and save to filesystem

   adb  shell screencap -p | sed 's/\r$//' > FILENAME.PNG

##### kill an arbitrary process running on an Android device attached via USB debug cable

   adb  shell ps | grep <process name> | awk '{print $2}' | xargs adb shell kill

##### Android PNG screenshot

   adb  exec-out screencap -p > screenshot.png

##### Filter Android log output by PID

   adb  shell ps | grep my.app.packagename | awk '{print $2}' | xargs -I ? sh -c "adb logcat -v time | grep ?"

##### Android PNG screenshot

   adb  pull /dev/graphics/fb0 /dev/stdout | ffmpeg -vframes 1 -vcodec rawvideo -f rawvideo -pix_fmt rgb32 -s 480x800 -i pipe:0 -f image2 -vcodec png screenshot.png

##### Takes and displays screenshot of Android phone over adb.

   adb  shell "screencap -p | base64" | sed 's/\r$//' | base64 -d | display

##### Dump android contacts, sms

   adb  pull /data/data/com.android.providers.contacts/databases/contacts2.db ; sqlite3 -batch <<EOF contacts2.db <CR> .header on <CR> .mode tabs <CR> select * from data; <CR> EOF

##### Take screenshot of Android device using adb and save to filesystem

   adb  shell screencap -p | sed 's/\r$//' > FILENAME.PNG

##### kill an arbitrary process running on an Android device attached via USB debug cable

   adb  shell ps | grep <process name> | awk '{print $2}' | xargs adb shell kill

##### Android PNG screenshot

   adb  exec-out screencap -p > screenshot.png
