# wmctrl

##### Switch to windows using gpicker

   wmctrl  -i -a `wmctrl -l -x | gpicker -d "\n" -n "\n" - | awk '{print $1}'`

##### Auto Rotate Cube (compiz)

   wmctrl  -o 2560,0 ;sleep 2 ; echo "FIRE 001" | osd_cat -o 470 -s 8 -c red -d 10 -f -*-bitstream\ vera\ sans-*-*-*250-*-*-*-*-*-*-* ; sleep 1; wmctrl -o 0,0

##### Save your open windows to a file so they can be opened after you restart

   wmctrl  -l -p | while read line; do ps -o cmd= "$(echo "$line" | awk '$0=$3')"; done > ~/.windows

##### rotate the compiz cube via command line

   wmctrl  -o 1280,0

##### Get name of running Window Manager

   wmctrl  -m | grep Name: | awk '{print $2}'

##### Switch workspace

   wmctrl  -o 100,0

##### Maximize active window

   wmctrl  -r :ACTIVE: -b add,maximized_vert; wmctrl -r :ACTIVE: -b add,maximized_horz

##### Auto Rotate Cube (compiz)

   wmctrl  -o 2560,0 ;sleep 2 ; echo "FIRE 001" | osd_cat -o 470 -s 8 -c red -d 10 -f -*-bitstream\ vera\ sans-*-*-*250-*-*-*-*-*-*-* ; sleep 1; wmctrl -o 0,0

##### Save your open windows to a file so they can be opened after you restart

   wmctrl  -l -p | while read line; do ps -o cmd= "$(echo "$line" | awk '$0=$3')"; done > ~/.windows

##### rotate the compiz cube via command line

   wmctrl  -o 1280,0

##### Get name of running Window Manager

   wmctrl  -m | grep Name: | awk '{print $2}'

##### Switch workspace

   wmctrl  -o 100,0
