# cvs

##### checkout directory and the files it contains, without any further subdirectories

   cvs  checkout -l project/src/

##### List only locally modified files with CVS

   cvs  -n update 2>null | grep -i "M " | sed s/"M "//

##### Override and update your locally modified files through cvs..

   cvs  update -C

##### List only locally modified files with CVS

   cvs  -Q status | grep -i locally

##### List only locally modified files with CVS

   cvs  up 2>&1 | grep color 'U \|P \|A \|R \|M \|C \|? '

##### read old reversion of file

   cvs  up -r1.23 -p main.cpp | vim -

##### Recursively remove all files in a CVS directory

   cvs  remove -f `find . -type f ! -path \*CVS\*`

##### Less verbose CVS status (skips unmodified up-to-date files)

   cvs  -q status | grep ^[?F] | grep -v 'to-date'

##### List only locally modified files with CVS

   cvs  -Q status | perl -ne 'print if m/^File.+Status: (?!Up-to-date)/ .. m/^=/;'

##### List only locally modified files with CVS

   cvs  -q diff brief | grep file | cut -d/ -f3- | cut -d',' -f1

##### cvs diff HEAD and current branch

   cvs  up -pA main.cpp | sdiff -s - main.cpp

##### List only locally modified files with CVS

   cvs  -n update 2>null | grep -i "M " | sed s/"M "//

##### Override and update your locally modified files through cvs..

   cvs  update -C

##### List only locally modified files with CVS

   cvs  -Q status | grep -i locally

##### List only locally modified files with CVS

   cvs  up 2>&1 | grep color 'U \|P \|A \|R \|M \|C \|? '

##### read old reversion of file

   cvs  up -r1.23 -p main.cpp | vim -

##### Recursively remove all files in a CVS directory

   cvs  remove -f `find . -type f ! -path \*CVS\*`

##### Less verbose CVS status (skips unmodified up-to-date files)

   cvs  -q status | grep ^[?F] | grep -v 'to-date'

##### List only locally modified files with CVS

   cvs  -Q status | perl -ne 'print if m/^File.+Status: (?!Up-to-date)/ .. m/^=/;'

##### List only locally modified files with CVS

   cvs  -q diff brief | grep file | cut -d/ -f3- | cut -d',' -f1

##### cvs diff HEAD and current branch

   cvs  up -pA main.cpp | sdiff -s - main.cpp
