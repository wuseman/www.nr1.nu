# vlc

##### PlayTweets from the command line

   vlc  $(curl -s http://twitter.com/statuses/user_timeline/18855500.rss|grep play|sed -ne '/<title>/s/^.*\(http.*\)<\/title/\1/gp'|awk '{print $1}')

##### Watch your freebox flux, through a other internet connection (for French users)

   vlc  -vvv http://mafreebox.freebox.fr/freeboxtv/playlist.m3u sout '#transcode{vcodec=mp2v,vb=384,scale=0.5,acodec=vorbis,ab=48,channels=1}:standard{access=http,mux=ogg,url=:12345}' -I ncurses 2> /dev/null

##### Vlc ncurses mode browsing local directorys.

   vlc  -I ncurses <MEDIA_DIR>

##### Stream the latest offering from your fave netcasts/podcasts

   vlc   one-instance playlist-enqueue -q $(while read netcast; do wget -q $netcast -O - |grep enclosure | tr '\r' '\n' | tr \' \" | sed -n 's/.*url="\([^"]*\)".*/\1/p'|head -n1; done <netcast.txt)

##### Stream your desktop to a remote machine.

   vlc  screen:// :screen-fps=30 :screen-caching=100 sout '#transcode{vcodec=mp4v,vb=4096,acodec=mpga,ab=256,scale=1,width=1280,height=800}:rtp{dst=192.168.1.2,port=1234,access=udp,mux=ts}'

##### Opens up cached flash plugin video files(linux)

   vlc  $(for f in /proc/$(pgrep -f libflashplayer.so |head -n 1)/fd/*; do ;if  $(file ${f} |grep -q "broken symbolic link to \`/tmp/FlashXX"); then echo  ${f};fi;done)

##### Watch Weather Channel live video stream without a browser

   vlc  mms://twcilivewm.fplive.net/twcilive-live/twci_350

##### Watch your freebox flux, through a other internet connection (for French users)

   vlc  -vvv http://mafreebox.freebox.fr/freeboxtv/playlist.m3u sout '#transcode{vcodec=mp2v,vb=384,scale=0.5,acodec=vorbis,ab=48,channels=1}:standard{access=http,mux=ogg,url=:12345}' -I ncurses 2> /dev/null

##### Vlc ncurses mode browsing local directorys.

   vlc  -I ncurses <MEDIA_DIR>

##### Stream the latest offering from your fave netcasts/podcasts

   vlc   one-instance playlist-enqueue -q $(while read netcast; do wget -q $netcast -O - |grep enclosure | tr '\r' '\n' | tr \' \" | sed -n 's/.*url="\([^"]*\)".*/\1/p'|head -n1; done <netcast.txt)

##### Stream your desktop to a remote machine.

   vlc  screen:// :screen-fps=30 :screen-caching=100 sout '#transcode{vcodec=mp4v,vb=4096,acodec=mpga,ab=256,scale=1,width=1280,height=800}:rtp{dst=192.168.1.2,port=1234,access=udp,mux=ts}'

##### Opens up cached flash plugin video files(linux)

   vlc  $(for f in /proc/$(pgrep -f libflashplayer.so |head -n 1)/fd/*; do ;if  $(file ${f} |grep -q "broken symbolic link to \`/tmp/FlashXX"); then echo  ${f};fi;done)
