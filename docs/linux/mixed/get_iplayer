# get_iplayer

##### grab all m4a file from bbc radio 4 extra for some easy audio ebbok listening

   get_iplayer  type=radio channel "Radio 4 Extra" | grep : | awk '{ if ( NR > 1  ) { print } }'|sed 's/:.*//' |sed  '$ d' > pidlist && while read p; do get_iplayer get fields=pid $p; done <pidlist && rm pidlist

##### grab all m4a file from bbc radio 4 extra for some easy audio ebbok listening

   get_iplayer  type=radio channel "Radio 4 Extra" | grep : | awk '{ if ( NR > 1  ) { print } }'|sed 's/:.*//' |sed  '$ d' > pidlist && while read p; do get_iplayer get fields=pid $p; done <pidlist && rm pidlist
