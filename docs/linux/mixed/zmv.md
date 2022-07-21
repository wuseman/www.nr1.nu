# zmv

##### Adding leading zeros to a filename (1.jpg -> 001.jpg)

   zmv  '(<1->).jpg' '${(l:3::0:)1}.jpg'

##### convert single digit to double digits

   zmv  '(?.ogg)' '0$1'

##### Remove spaces from filenames - through a whole directory tree.

   zmv  -Q '(**/)* *(.)' '$f:gs/ /_'

##### recursively change file name from uppercase to lowercase (or viceversa)

   zmv  -Q '(**/)(*)(.)' '$1${(L)2}'

##### rename multiple files with different name, eg converting all txt to csv

   zmv  '(*).txt' '$1.csv'

##### replace spaces in filenames with underscores

   zmv  '* *' '$f:gs/ /_'

##### replace dots in filenames with dashes

   zmv  '(*.*)(.*)' '${1//./_}$2'

##### Adding leading zeros to a filename (1.jpg -> 001.jpg)

   zmv  '(<1->).jpg' '${(l:3::0:)1}.jpg'

##### convert single digit to double digits

   zmv  '(?.ogg)' '0$1'

##### Remove spaces from filenames - through a whole directory tree.

   zmv  -Q '(**/)* *(.)' '$f:gs/ /_'

##### recursively change file name from uppercase to lowercase (or viceversa)

   zmv  -Q '(**/)(*)(.)' '$1${(L)2}'

##### rename multiple files with different name, eg converting all txt to csv

   zmv  '(*).txt' '$1.csv'

##### replace spaces in filenames with underscores

   zmv  '* *' '$f:gs/ /_'

##### replace dots in filenames with dashes

   zmv  '(*.*)(.*)' '${1//./_}$2'
