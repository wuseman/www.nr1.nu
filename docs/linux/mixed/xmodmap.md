# xmodmap

##### remap Caps_Lock to Escape

   xmodmap  -e 'clear Lock' -e 'keycode 0x42 = Escape'

##### left-right mouse buttons (left-handed)

   xmodmap  -e "pointer = 3 2 1"

##### Replace Caps-lock with Control-key

   xmodmap  -e 'remove Lock = Caps_Lock' && xmodmap -e 'add control = Caps_Lock'

##### disable caps lock

   xmodmap  -e "remove Lock = Caps_Lock"

##### Mouse Remap Trolling

   xmodmap  -e "pointer = $(shuf -i 1-5 | tr '\n' ' ')"

##### reassign pipe key from AltGr-1 to AltGr-7 in X11

   xmodmap  -e 'keycode 10 = 1 plus brokenbar exclamdown brokenbar exclamdown' ;  xmodmap -e 'keycode 16 = 7 slash bar seveneighths bar seveneighths'

##### remap Caps_Lock to Escape

   xmodmap  -e 'clear Lock' -e 'keycode 0x42 = Escape'

##### left-right mouse buttons (left-handed)

   xmodmap  -e "pointer = 3 2 1"

##### Replace Caps-lock with Control-key

   xmodmap  -e 'remove Lock = Caps_Lock' && xmodmap -e 'add control = Caps_Lock'

##### disable caps lock

   xmodmap  -e "remove Lock = Caps_Lock"

##### Mouse Remap Trolling

   xmodmap  -e "pointer = $(shuf -i 1-5 | tr '\n' ' ')"

##### reassign pipe key from AltGr-1 to AltGr-7 in X11

   xmodmap  -e 'keycode 10 = 1 plus brokenbar exclamdown brokenbar exclamdown' ;  xmodmap -e 'keycode 16 = 7 slash bar seveneighths bar seveneighths'
