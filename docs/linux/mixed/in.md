# in

##### Export only one SVG element by ID.

   in kscape project.svg -z -j -i icon.svg -l b.svg

##### vi keybindings with info

   in fo vi-keys

##### sun solaris 9 complete restart

   in it 6

##### Use Linux coding style in C program

   in dent -linux helloworld.c

##### create directory and set owner/group/mode in one shot

   in stall -o user -g group -m 0700 -d /path/to/newdir

##### Trigger a command each time a file is created in a directory (inotify)

   in otifywait -mrq -e CREATE format %w%f /path/to/dir | while read FILE; do chmod g=u "$FILE"; done

##### Convert a SVG file to grayscale

   in kscape -f file.svg verb=org.inkscape.color.grayscale verb=FileSave verb=FileClose

##### Use GNU info with a pager

   in fo subnodes -o - <item> | less

##### Backup file, create dir and set perms in one shot

   in stall -m 0400 foo bar/

##### Send your terminfo to another machine

   in focmp rxvt-unicode | ssh 10.20.30.40 "mkdir -p .terminfo && cat >/tmp/ti && tic /tmp/ti"

##### This command can be used to extract the IP address of the network.

   in et_ip=`ifconfig wlan0 | grep inet | cut -d: -f2 | cut -d ' ' -f1` && echo $inet_ip

##### password recovery on debian

   in it=/bin/bash; mount -o remount,rw /

##### Read info(1) pages using 'less' instead of GNU Texinfo

   in fo gpg |less

##### Copy a file and force owner/group/mode

   in stall -o user -g group -m 755 /path/to/file /path/to/dir/

##### Immediately put execute permission on any file saved/created in $HOME/bin

   in otifywait -mr -e CREATE $HOME/bin/ | while read i; do chmod +x $(echo "$i" | sed 's/ \S* //'); done

##### Generic shell function for modifying files in-place

   in place() { eval F=\"\$$#\"; "$@" > "$F".new && mv -f "$F".new "$F"; }

##### Add to Instapaper

   in stapaper-add(){ curl -s -d username="$1" -d password="$2" -d url="$3" https://www.instapaper.com/api/add; }

##### Sorting by rows

   in file=$1 for i in $(cat $infile) do     echo $i | tr "," "\n" | sort -n | tr "\n" "," | sed "s/,$//"    echo done

##### Duplex PDF from a simplex scanner

   in put=a.pdf ; pages=`pdftk $input dump_data | grep -i numberofpages | cut -d" " -f 2`; pdftk A=$input  shuffle A1-$[$pages/2] A$pages-$[$pages/2+1] output "${input%.*}.rearranged.${input##*.}"

##### Revealing Latitude/Longitude from GNIP Activity Streams Format in Splunk

   in dex=twitter geo.coordinates{}="*"| spath path=geo.coordinates{} output=geocoordinates|  eval latitude=mvindex(geocoordinates,1)|  eval longitude=mvindex(geocoordinates,0)

##### Debug how files are being accessed by a process

   in otifywait -m -r .

##### AIX: Determine what filesets are missing to reach a TL

   in stfix -icq | grep 5300-07_AIX_ML | grep ":-:"

##### Use GNU info with a pager

   in fo foo |less

##### Show full system info

   in xi -F

##### Use Kernighan & Ritchie coding style in C program

   in dent -kr hello.c

##### List all available commands

   in  bash hit "tab" twice and answer y

##### vi keybindings with info

   in fo vi-keys

##### Use Linux coding style in C program

   in dent -linux helloworld.c

##### create directory and set owner/group/mode in one shot

   in stall -o user -g group -m 0700 -d /path/to/newdir

##### Trigger a command each time a file is created in a directory (inotify)

   in otifywait -mrq -e CREATE format %w%f /path/to/dir | while read FILE; do chmod g=u "$FILE"; done

##### Convert a SVG file to grayscale

   in kscape -f file.svg verb=org.inkscape.color.grayscale verb=FileSave verb=FileClose

##### Use GNU info with a pager

   in fo subnodes -o - <item> | less

##### Backup file, create dir and set perms in one shot

   in stall -m 0400 foo bar/

##### Send your terminfo to another machine

   in focmp rxvt-unicode | ssh 10.20.30.40 "mkdir -p .terminfo && cat >/tmp/ti && tic /tmp/ti"

##### This command can be used to extract the IP address of the network.

   in et_ip=`ifconfig wlan0 | grep inet | cut -d: -f2 | cut -d ' ' -f1` && echo $inet_ip

##### password recovery on debian

   in it=/bin/bash; mount -o remount,rw /

##### Read info(1) pages using 'less' instead of GNU Texinfo

   in fo gpg |less

##### Copy a file and force owner/group/mode

   in stall -o user -g group -m 755 /path/to/file /path/to/dir/

##### Immediately put execute permission on any file saved/created in $HOME/bin

   in otifywait -mr -e CREATE $HOME/bin/ | while read i; do chmod +x $(echo "$i" | sed 's/ \S* //'); done

##### Generic shell function for modifying files in-place

   in place() { eval F=\"\$$#\"; "$@" > "$F".new && mv -f "$F".new "$F"; }

##### Add to Instapaper

   in stapaper-add(){ curl -s -d username="$1" -d password="$2" -d url="$3" https://www.instapaper.com/api/add; }

##### Sorting by rows

   in file=$1 for i in $(cat $infile) do     echo $i | tr "," "\n" | sort -n | tr "\n" "," | sed "s/,$//"    echo done

##### Duplex PDF from a simplex scanner

   in put=a.pdf ; pages=`pdftk $input dump_data | grep -i numberofpages | cut -d" " -f 2`; pdftk A=$input  shuffle A1-$[$pages/2] A$pages-$[$pages/2+1] output "${input%.*}.rearranged.${input##*.}"

##### Revealing Latitude/Longitude from GNIP Activity Streams Format in Splunk

   in dex=twitter geo.coordinates{}="*"| spath path=geo.coordinates{} output=geocoordinates|  eval latitude=mvindex(geocoordinates,1)|  eval longitude=mvindex(geocoordinates,0)

##### Debug how files are being accessed by a process

   in otifywait -m -r .

##### Use Kernighan & Ritchie coding style in C program

   in dent -kr hello.c
