# wtzc

##### wget, tar xzvf, cd, ls

   wtzc  () { wget "$@"; foo=`echo "$@" | sed 's:.*/::'`; tar xzvf $foo; blah=`echo $foo | sed 's:,*/::'`; bar=`echo $blah | sed -e 's/\(.*\)\..*/\1/' -e 's/\(.*\)\..*/\1/'`; cd $bar; ls; }
