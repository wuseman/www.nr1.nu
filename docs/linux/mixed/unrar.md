# unrar

##### unpack all rars in current folder

   unrar  x *.rar

##### On-the-fly unrar movie in .rar archive and play it, does also work on part archives.

   unrar  p -inul foo.rar|mplayer -

##### Extract neatly a rar compressed file

   unrar  e file.part1.rar; if [ $? -eq 0 ]; then rm file.part*.rar; fi

##### unpack all rars in current folder

   unrar  e *.rar

##### Play Mediafile in multipart RAR archive on the fly with buffer to seek back and forth

   unrar  p -inul *.rar|mplayer -cache 100000 -

##### On-the-fly unrar movie in .rar archive and play it, does also work on part archives.

   unrar  p -inul foo.rar|mplayer -

##### Extract neatly a rar compressed file

   unrar  e file.part1.rar; if [ $? -eq 0 ]; then rm file.part*.rar; fi

##### unpack all rars in current folder

   unrar  e *.rar

##### Play Mediafile in multipart RAR archive on the fly with buffer to seek back and forth

   unrar  p -inul *.rar|mplayer -cache 100000 -
