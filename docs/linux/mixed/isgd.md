# isgd

##### Short URLs with is.gd

   isgd () { /usr/bin/wget -qO - "http://is.gd/create.php?format=simple&url=$1" ;}

##### Generate a shortened URL with is.gd

   isgd  () { curl 'http://is.gd/create.php?format=simple&url='"$1" ; printf "\n" }

##### Short URLs with is.gd

   isgd () { /usr/bin/wget -qO - "http://is.gd/create.php?format=simple&url=$1" ;}

##### Generate a shortened URL with is.gd

   isgd  () { curl 'http://is.gd/create.php?format=simple&url='"$1" ; printf "\n" }
