# zenity

##### Send pop-up notifications on Gnome

   zenity  info text="I'am a popup"

##### sets desktop background using zenity

   zenity  list width 500 height 500 column 'Wallpapers'  $(ls) | xargs xsetbg  -center -smooth -fullscreen

##### Open a file in a GTK+ dialog window

   zenity  title passwd width 800 height 600 text-info filename /etc/passwd

##### Choose from a nice graphical menu which DI.FM radio station to play

   zenity  list width 500 height 500 column 'radio' column 'url' print-column 2 $(curl -s http://www.di.fm/ | awk -F '"' '/href="http:.*\.pls.*96k/ {print $2}' | sort | awk -F '/|\.' '{print $(NF-1) " " $0}') | xargs mplayer

##### Post a message to another users screen via SSH

   zenity  info text "Your welcome! Lunch?" display=:0

##### Open a file in a GTK+ dialog window

   zenity  title passwd width 800 height 600 text-info filename /etc/passwd

##### Choose from a nice graphical menu which DI.FM radio station to play

   zenity  list width 500 height 500 column 'radio' column 'url' print-column 2 $(curl -s http://www.di.fm/ | awk -F '"' '/href="http:.*\.pls.*96k/ {print $2}' | sort | awk -F '/|\.' '{print $(NF-1) " " $0}') | xargs mplayer

##### Post a message to another users screen via SSH

   zenity  info text "Your welcome! Lunch?" display=:0
