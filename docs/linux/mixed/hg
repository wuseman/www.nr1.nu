# hg

##### Undo Mercurial add before commit

   hg  st added -n |xargs hg revert

##### define a function for searching bash history

   hg rep() {   ... }  longer then 255 characters, see below

##### Undo commit in Mercurial

   hg  diff -c $REV reverse | hg patch no-commit -

##### mercurial close branch

   hg  commit close-branch -m 'close badbranch, this approach never worked'

##### diff from last committed revision in Mercurial

   hg  diff -r$((`hg -q par | cut -d":" -f1`-1))

##### Undo commit in Mercurial

   hg  diff -c $REV reverse | hg patch no-commit -

##### mercurial close branch

   hg  commit close-branch -m 'close badbranch, this approach never worked'

##### diff from last committed revision in Mercurial

   hg  diff -r$((`hg -q par | cut -d":" -f1`-1))
