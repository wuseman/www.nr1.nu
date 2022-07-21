# cleartool

##### Check out hijacked files in clearcase

   cleartool  co -nc `cleartool ls -recurse | grep "hijacked" | sed s/\@\@.*// | xargs`
