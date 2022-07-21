# import

##### Python unicode `explain`

   import  unicodedata; map(unicodedata.name, '\u2022'.decode('ascii'))

##### Take screenshots with imagemagick

   import  -window root -quality 98 screenshot.png

##### capture selected window

   import  -window `xwininfo | awk '/Window id/{print $4; exit}'` `uuidgen`.png

##### Take screenshots with imagemagick

   import  -quality 90 screenshot.png

##### Quick screenshot

   import  -pause 5 -window root desktop_screenshot.jpg

##### Take screenshots with imagemagick

   import  -window root -quality 98 screenshot.png

##### capture selected window

   import  -window `xwininfo | awk '/Window id/{print $4; exit}'` `uuidgen`.png

##### Take screenshots with imagemagick

   import  -quality 90 screenshot.png

##### Quick screenshot

   import  -pause 5 -window root desktop_screenshot.jpg
