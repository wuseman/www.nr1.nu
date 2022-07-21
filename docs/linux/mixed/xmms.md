# xmms

##### Get URLs matching some xmms2 search

   xmms 2 info $(xmms2 mlib search '<query>' | sed -ne 's/^00*\([1-9][0-9]*\).*$/\1/p') | awk -F' = ' '$1~/ url$/{print$2}'

##### Add 10 random unrated songs to xmms2 playlist

   xmms 2 mlib search NOT +rating | grep -r '^[0-9]' | sed -r 's/^([0-9]+).*/\1/' | sort -R | head | xargs -L 1 xmms2 addid

##### A snooze button for xmms2 alarm clock

   xmms 2 pause && echo "xmms2 play" | at now +5min

##### Get length of current playlist in xmms2

   xmms 2 list | grep '^\s\+\[' | wc -l

##### Get length of current playlist in xmms2

   xmms 2 list | sed -n -e '1i\0' -e 's/^.*(\([0-9]*\):\([0-9]*\))$/\1 60*\2++/gp' -e '$a\60op' | dc | sed -e 's/^ *//' -e 's/ /:/g'

##### Add audio CD to xmms2 playlist

   xmms 2 addpls cdda://

##### Make a pipe organ sound using XMMS and Python

   xmms  `python -c "print \"tone://\" + \";\".join([str(22*(2**x)) for x in range(9)])"`

##### list the last week's added files in xmms2's library

   xmms 2 mlib search added \> $(echo $(date +%s) - 604800|bc)

##### Add 10 random unrated songs to xmms2 playlist

   xmms 2 mlib search NOT +rating | grep -r '^[0-9]' | sed -r 's/^([0-9]+).*/\1/' | sort -R | head | xargs -L 1 xmms2 addid

##### A snooze button for xmms2 alarm clock

   xmms 2 pause && echo "xmms2 play" | at now +5min

##### Get length of current playlist in xmms2

   xmms 2 list | grep '^\s\+\[' | wc -l

##### Get length of current playlist in xmms2

   xmms 2 list | sed -n -e '1i\0' -e 's/^.*(\([0-9]*\):\([0-9]*\))$/\1 60*\2++/gp' -e '$a\60op' | dc | sed -e 's/^ *//' -e 's/ /:/g'

##### Add audio CD to xmms2 playlist

   xmms 2 addpls cdda://
