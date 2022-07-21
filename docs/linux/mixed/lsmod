# lsmod

##### Draw kernel module dependancy graph.

   lsmod  | perl -e 'print "digraph \"lsmod\" {";<>;while(<>){@_=split/\s+/; print "\"$_[0]\" -> \"$_\"\n" for split/,/,$_[3]}print "}"' | dot -Tpng | display -

##### Short Information about loaded kernel modules

   lsmod  | cut -d' ' -f1 | xargs modinfo | egrep '^file|^desc|^dep' | sed -e'/^dep/s/$/\n/g'

##### Get version of loaded kernel module

   lsmod  | grep -io MODULENAME| xargs modinfo | grep -iw version

##### Draw kernel module dependancy graph.

   lsmod  | awk 'BEGIN{print "digraph{"}{split($4, a, ","); for (i in a) print $1, "->", a[i]}END{print "}"}'|display

##### Short Information about loaded kernel modules

   lsmod  | sed -e '1d' -e 's/\(\([^ ]*\) \)\{1\}.*/\2/' | xargs modinfo | sed -e '/^dep/s/$/\n/g' -e '/^file/b' -e '/^desc/b' -e '/^dep/b' -e d

##### Short Information about loaded kernel modules

   lsmod  | tail -n +2 | cut -d' ' -f1 | xargs modinfo | egrep '^file|^desc|^dep' | sed -e'/^dep/s/$/\n/g'

##### Draw kernel module dependancy graph.

   lsmod  | perl -e 'print "digraph \"lsmod\" {";<>;while(<>){@_=split/\s+/; print "\"$_[0]\" -> \"$_\"\n" for split/,/,$_[3]}print "}"' | dot -Tpng | display -

##### Short Information about loaded kernel modules

   lsmod  | cut -d' ' -f1 | xargs modinfo | egrep '^file|^desc|^dep' | sed -e'/^dep/s/$/\n/g'

##### Get version of loaded kernel module

   lsmod  | grep -io MODULENAME| xargs modinfo | grep -iw version

##### Draw kernel module dependancy graph.

   lsmod  | awk 'BEGIN{print "digraph{"}{split($4, a, ","); for (i in a) print $1, "->", a[i]}END{print "}"}'|display

##### Short Information about loaded kernel modules

   lsmod  | sed -e '1d' -e 's/\(\([^ ]*\) \)\{1\}.*/\2/' | xargs modinfo | sed -e '/^dep/s/$/\n/g' -e '/^file/b' -e '/^desc/b' -e '/^dep/b' -e d
