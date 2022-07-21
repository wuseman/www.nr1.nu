# xrandr

##### external projector for presentations

   xrandr  auto

##### Get minimum, current, maximum possible resolution of Xorg

   xrandr  -q | grep -w Screen

##### Configure second monitor to sit to the right of laptop

   xrandr  output LVDS auto output VGA auto right-of LVDS

##### Change display resolution

   xrandr  -s 1280x1024

##### Get your X11 screen mode

   xrandr   | grep \*

##### Get current Xorg resolution via xrandr

   xrandr   | grep \* | cut -d' ' -f4

##### Adjust gamma so monitor doesn't mess up your body's clock

   xrandr  | sed -n 's/ connected.*//p' | xargs -n1 -tri xrandr output {} brightness 0.7 gamma 2:3:4

##### Recover resolution when a fullscreen program crashes and you're stuck with a tiny X resolution

   xrandr  -s 0

##### Get current Xorg resolution via xrandr

   xrandr  | grep \* | awk '{print $1}'

##### highest resolution of your ouputs as screen resolution and scaled versions on other outputs

   xrandr  fb 1920x1080 output LVDS1 scale 1.5x1.35 output HDMI1 mode 1920x1080

##### Adjust brightness [software way]

   xrandr  output LVDS1 brightness 0.4

##### xrandr dual screen desktop

   xrandr  output DVI-I-2 mode 1920x1080 output HDMI-0 off output DVI-I-1 mode 1280x1024 pos 1920x0

##### Get current Xorg resolution via xrandr

   xrandr  -q|sed -n 's/.*current[ ]\([0-9]*\) x \([0-9]*\),.*/\1x\2/p'

##### Get current Xorg resolution via xrandr

   xrandr  -q | awk -F'current' -F',' 'NR==1 {gsub("( |current)","");print $2}'

##### Rotate the X screen via xrandr

   xrandr   output [youroutput] rotate [right|left|normal] -d [yourdisplay]

##### find out true (according to xrandr) monitor DPI

   xrandr  query | sed -n 's@\([A-Z0-1-]*\).* \(.*\)x\(.*\)+.*+.* \([0-9]\+\)mm x \([0-9]\+\)mm@"\1: ";(\2/\4+\3/\5)*12.7@p;'|bc -l

##### external projector for presentations

   xrandr  auto

##### Configure second monitor to sit to the right of laptop

   xrandr  output LVDS auto output VGA auto right-of LVDS

##### Change display resolution

   xrandr  -s 1280x1024

##### Get your X11 screen mode

   xrandr   | grep \*

##### Get current Xorg resolution via xrandr

   xrandr   | grep \* | cut -d' ' -f4

##### Adjust gamma so monitor doesn't mess up your body's clock

   xrandr  | sed -n 's/ connected.*//p' | xargs -n1 -tri xrandr output {} brightness 0.7 gamma 2:3:4

##### Recover resolution when a fullscreen program crashes and you're stuck with a tiny X resolution

   xrandr  -s 0

##### Get current Xorg resolution via xrandr

   xrandr  | grep \* | awk '{print $1}'

##### highest resolution of your ouputs as screen resolution and scaled versions on other outputs

   xrandr  fb 1920x1080 output LVDS1 scale 1.5x1.35 output HDMI1 mode 1920x1080

##### Adjust brightness [software way]

   xrandr  output LVDS1 brightness 0.4

##### xrandr dual screen desktop

   xrandr  output DVI-I-2 mode 1920x1080 output HDMI-0 off output DVI-I-1 mode 1280x1024 pos 1920x0

##### Get current Xorg resolution via xrandr

   xrandr  -q|sed -n 's/.*current[ ]\([0-9]*\) x \([0-9]*\),.*/\1x\2/p'

##### Get current Xorg resolution via xrandr

   xrandr  -q | awk -F'current' -F',' 'NR==1 {gsub("( |current)","");print $2}'
