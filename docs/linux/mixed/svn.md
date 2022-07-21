# svn

##### Add all unversioned files to svn

   svn  add *

##### find svn uncommitted files and list their properties

   svn  status | awk -F" " '{ for (i=2; i<=NF; i++) print "ls -ld \""$i"\""}' | sh

##### Prints total line count contribution per user for an SVN repository

   svn  ls -R | egrep -v -e "\/$" | xargs svn blame  |  awk '{count[$2]++}END{for(j in count) print  count[j] "\t" j}' | sort -rn

##### Clean up after improper deletes in subversion

   svn  rm `svn status | grep "\!" | cut -c 8-`

##### Short log format of Subversion history

   svn ll(){svn log "$@"|( read; while true; do read h||break; read; m=""; while read l; do echo "$l" | grep -q '^[-]\+$'&&break; [ -z "$m" ] && m=$l; done; echo "$h % $m" | sed 's#\(.*\) | \(.*\) | \([-0-9 :]\{16\}\).* % \(.*\)#\1 \2 (\3) \4#'; done)}

##### Add new files/directory to subversion repository

   svn  status | grep '^\?' | sed -e 's/^\?//g' | xargs svn add

##### Add new file under svn version control.

   svn  st | grep ^\? | awk '{print $2}' | xargs svn add

##### show the log of a branch since its creation

   svn  log . stop-on-copy

##### Find out who change what files in a SVN repository

   svn  log -v | less

##### Check in current directory to SVN with commical/terrible commit message. (Please don't actually run this command!)

   svn  ci -m "$(curl -s http://whatthecommit.com | sed -n '/<p>/,/<\/p>/p' | sed '$d' | sed 's/<p>//')"

##### Get the revision number at which the current branch is created.

   svn  log stop-on-copy | grep r[0-9] | awk '{print $1}' | sed "s/r//" | sort -n | head -1

##### this svn script will commit all files excluding those with extensions {.project .classpath .properties .sh .number} and those with Status Modified or Added {M or A}

   svn  st | grep -e [MA] | egrep -ve '.project|.classpath|.properties|.sh|.number'   | awk -F' ' '{ print $2}' | xargs svn ci -m "message"

##### Gecko-rendered javascript without a GUI

   svn  co http://simile.mit.edu/repository/crowbar/trunk&& cd ./trunk/xulapp/ xulrunner install-app &&  Xvfb :1 && DISPLAY=:1 xulrunner application.ini 2>/dev/null 1>/dev/null && wget -O- "127.0.0.1:10000/&url=http://www.facebook.com"

##### SVN Add Recursively

   svn  status | grep "^\?" | awk '{print $2}' | xargs svn add

##### Find out my commits today in svn

   svn  log | grep "$LOGNAME" | grep `date '+%Y-%m-%d'`

##### Add all unversioned files to svn

   svn  st | grep "^\?" | awk "{print \$2}" | xargs svn add $1

##### revert one or more changesets in svn

   svn  merge -r 1337:1336 PATH PATH

##### add all files not under version control to repository

   svn  status |grep '\?' |awk '{print $2}'| parallel -Xj1 svn add

##### Commit all the changes in your java code

   svn  st | grep /main/java | awk '{print $2}' | xargs echo | xargs svn ci -m "my comment here"

##### archive all files containing local changes (svn)

   svn  st | cut -c 9- | parallel -X tar -czvf ../backup.tgz

##### Get a list of all contributors to an SVN repo

   svn  log -q | grep -v "^-" | cut -d "|" -f 2 | sort -u

##### Revert all modified files in an SVN repo

   svn  revert .

##### !$ - The last argument to the previous command

   svn  status app/models/foo.rb; svn commit -m "Changed file" !$

##### Quickly assess quality of project by greping the SVN commit logs

   svn  log | grep "bodge\|fudge\|hack\|dirty"

##### Download all files under http://codeigniter.com/user_guide/ to the current directory

   svn  co http://svn.ellislab.com/CodeIgniter/trunk/user_guide

##### Show top committers for SVN repositority for today

   svn  log -r {`date "+%Y-%m-%d"`}:HEAD|grep '^r[0-9]' |cut -d\| -f2|sort|uniq -c

##### Display a list of committers sorted by the frequency of commits

   svn  log -q|grep "|"|awk "{print \$3}"|sort|uniq -c|sort -nr

##### Show top SVN committers for the last month

   svn  log -r {`date +"%Y-%m-%d" -d "1 month ago"`}:HEAD|grep '^r[0-9]' |cut -d\| -f2|sort|uniq -c

##### Have subversion ignore a file pattern in a directory

   svn  propset svn:ignore "*txt" log/

##### Ignore a directory in SVN, permanently

   svn  propset svn:ignore "*" tool/templates_c; svn commit -m "Ignoring tool/templates_c"

##### colorize your svn diff

   svn  diff | vim -

##### Send your svn diff to meld

   svn  diff diff-cmd='meld' -r 100:BASE FILE

##### Revert all modified files in an SVN repo

   svn  st | grep -e '^M' | awk '{print $2}' | xargs svn revert

##### gets all files committed to svn by a particular user since a particular date

   svn  log -v -r{2009-05-21}:HEAD | awk '/^r[0-9]+ / {user=$3} /yms_web/ {if (user=="george") {print $2}}' | sort | uniq

##### use vim to get colorful diff output

   svn  diff | view -

##### Commit only newly added files to subversion repository

   svn  ci `svn stat |awk '/^A/{printf $2" "}'`

##### Output a list of svn repository entities to xml file

   svn  list -R https://repository.com xml >> svnxxmlinfo.xml

##### output list of modifications for an svn revision

   svn  log $url -r $revision -v  | egrep "   [RAMD] \/" | sed s/^.....//

##### Number of files in a SVN Repository

   svn  log -v xml file:///path/to/rep | grep kind=\"file\"|wc -l

##### SVN Status log to CSV

   svn  log |  tr -d '\n' | sed -r 's/-{2,}/\n/g' | sed -r 's/ \([^\)]+\)//g' | sed -r 's/^r//' | sed -r "s/[0-9]+ lines?//g" | sort -g

##### fetch all revisions of a specific file in an SVN repository

   svn  log fileName | sed -ne "/^r\([0-9][0-9]*\).*/{;s//\1/;s/.*/svn cat fileName@& > fileName.r&/p;}" | sh -s

##### looking for files not subversioned

   svn  status | awk '$1!~"M" {print $0}'

##### Edit the list of to ignore files in the active directory

   svn  propedit svn:ignore .

##### Get the current svn branch/tag (Good for PS1/PROMPT_COMMAND cases)

   svn  info | grep '^URL:' | egrep -o '(tags|branches)/[^/]+|trunk' | egrep -o '[^/]+$'

##### add all files not under version control to repository

   svn  add . force

##### Number of files in a SVN Repository

   svn  info -R xml file:///path/to/rep | grep kind=\"file\"|wc -l

##### Recursively Add Changed Files to Subversion

   svn  status | grep "^\?" | awk '{print $2}' | xargs svn add

##### make sure you don't add large file to your repository

   svn  status | awk '{print $2}' | xargs du | sort -n | tail

##### top svn committers (without awk)

   svn  log -q | grep '^r[0-9]' | cut -f2 -d "|" | sort | uniq -c | sort -nr

##### Get each users commit amount

   svn  log 2>&1 | egrep '^r[0-9]+' | cut -d "|" -f2 | sort | uniq -c

##### Set executable permissions on a file under Subversion

   svn  propset svn:executable ON filename

##### delete unversioned files in a checkout from svn

   svn  st | grep "^\?" | awk "{print \$2}" | xargs rm -rf

##### Deleting Files from svn which are missing

   svn  status | grep '!' | sed 's/!/ /' | xargs svn del force

##### Paged, colored svn diff

   svn  diff $* | colordiff | less -r

##### show todays svn log

   svn  log revision {`date +%Y-%m-%d`}:HEAD

##### Prints total line count contribution per user for an SVN repository

   svn  ls -R | egrep -v -e "\/$" | xargs svn blame | awk '{print $2}' | sort | uniq -c | sort -r

##### Colored SVN diff

   svn  diff <file> | vim -R -

##### Revert an SVN file to previous revision

   svn  up -rREV file

##### fetch all revisions of a specific file in an SVN repository

   svn  log fileName|cut -d" " -f 1|grep -e "^r[0-9]\{1,\}$"|awk {'sub(/^r/,"",$1);print "svn cat fileName@"$1" > /tmp/fileName.r"$1'}|sh

##### one-line log format for svn

   svn  log | perl -l40pe 's/^-+/\n/'

##### import a new set of files located in a local directory into a remote Subversion repository

   svn  import /home/kaz/myproject svn+ssh://svn.FOO.codehaus.org/home/projects/FOO/scm/project1/trunk

##### Add all files in current directory to SVN

   svn  add force *

##### Get the current svn branch/tag (Good for PS1/PROMPT_COMMAND cases)

   svn  info | sed -n "/URL:/s/.*\///p"

##### Show the total number of changes that every user committed to a Subversion repository

   svn  log -v xml > log.xml; zorba -q 'let $log := doc("log.xml")/log/logentry return for $author in distinct-values($log/author) order by $author return concat($author, " ", sum(count($log[author=$author]/paths/path)), "&#xa;")' serialize-text

##### revert a file with svn

   svn  merge -r 854:853 l3toks.dtx

##### Colorize svn stat

   svn  stat -u | sort | sed -e "s/^M.*/\o033[31m&\o033[0m/" -e "s/^A.*/\o033[34m&\o033[0m/" -e "s/^D.*/\o033[35m&\o033[0m/"

##### sync svn working copy and remote repository (auto adding new files)

   svn  status | grep '^?' | awk '{ print $2; }' | xargs svn add

##### Quick and Temporary Named Commands

   svn  up -r PREV # revert

##### Prints total line count contribution per user for an SVN repository

   svn  ls -R | egrep -v -e "\/$" | tr '\n' '\0' | xargs -0 svn blame | awk '{print $2}' | sort | uniq -c | sort -nr

##### add all files not under version control to repository

   svn  st | awk ' {if ( $1 == "?" ){print $1="",$0}} ' | sed -e 's/^[ \t]*//' | sed 's/ /\\ /g' | xargs svn add

##### SVN Clean

   svn  status | grep ^? | awk '{print $2}' | xargs rm -rf

##### svn diff colorized

   svn  diff diff-cmd="colordiff"

##### SVN script for automatically adding and deleting files

   svn  status | grep '^?' | sed -e 's/^? */svn add "/g' -e 's/$/"/g'|sh ; svn status | grep '^!' | sed -e 's/^! */svn delete "/g' -e 's/$/"/g'|sh

##### Add all files

   svn  add `svn status | grep ? | cut -c9-80`

##### find both total size and number of files below any given svn directory

   svn  list -vR svn://server/repo/somedir | awk '{if ($3 !="") sum+=$3; i++} END {print "\ntotal size= " sum/1024000" MB" "\nnumber of files= " i/1000 " K"}'

##### Readd all files is missing from svn repo

   svn  status | grep "^\?" | awk '{print $2}' | xargs svn add

##### archive all files containing local changes (svn)

   svn  st -q | cut -c 2- | tr -d ' ' | xargs tar -czvf ../backup.tgz

##### Get a Bulleted List of SVN Commits By a User for a Specifc Day (Daily Work Log)

   svn  log -r '{YYYY-MM-DD}:{YYYY-MM-DD}' | sed -n '1p; 2,/^-/d; /USERNAME/,/^-/p' | grep -E -v '^(r[0-9]|-|$)' | sed 's/^/* /g'

##### add all files not under version control to repository

   svn  status |grep '\?' |awk '{print $2}'| xargs svn add

##### Commands on svn stat

   svn  stat | grep M | cut -d " " -f8 | xargs svn revert

##### Revert an SVN file to previous revision

   svn  diff -r M:N file.php | patch -p0

##### Add all unversioned files to svn

   svn  st | awk '{if ($1 ~ "?") print $2}' | xargs svn add

##### revert a committed change in SVN

   svn  merge -c -REV

##### show last revision log on svn update

   svn  up | sed 's/\.//g' | cut -d ' ' -f3 | xargs svn log -r

##### Get the current svn branch/tag (Good for PS1/PROMPT_COMMAND cases)

   svn  info | grep ^URL | awk 'BEGIN {FS="\/"}; {if($(NF-1)=="branches") {print $NF} else if($NF=="trunk") {print $(NF-1)} else {print $NF} } '

##### archive all files containing local changes (svn)

   svn  st | cut -c 8- | sed 's/^/\"/;s/$/\"/' | xargs tar -czvf ../backup.tgz

##### svn diff $* | colordiff | lv -c

   svn  diff $* | colordiff | lv -c

##### Add all unversioned files to svn

   svn  stat | grep "^\?" | awk '{ print "svn add " $2 }' | bash

##### command to find when the last commit has happened from the server

   svn look date /path/to/repo

##### Create a tar of modified/added files since revision 1792.

   svn  diff -r 1792:HEAD summarize | awk '{if ($1 != "D") print $2}'| xargs  -I {} tar rf incremental_release.tar {}

##### add all files not under version control to repository

   svn  st | grep '^?' | sed -e 's/\?[[:space:]]*//' | tr '\n' '\0' | xargs -0 svn add

##### one-line log format for svn

   svn  log | perl -pe 's/\n//g => s/^-.*/\n/g'

##### Edit the list of to ignore files in the active directory

   svn  pe svn:ignore .

##### get the info which branch was created

   svn  log stop-on-copy -r 1:HEAD -l 1

##### Get the current svn branch/tag (Good for PS1/PROMPT_COMMAND cases)

   svn  info | grep ^URL | awk -F\/ '{print $NF}'

##### SVN - set exec bit on

   svn  ps svn:executable yes /web/itscripts/check_mail.plproperty

##### add all files not under version control to repository

   svn  st | awk ' {if ( $1 == "?" ){print $1="",$0}} ' | sed -e 's/^[ \t]*//' | sed 's/ /\\ /g' |  perl -ne '`svn add ${1}@` if /(.*)(@*)(.*)/'

##### Get svn log from remote server

   svn  log -l1000 <V CTRL SERVER> -v > svn_full.log

##### get svn log by the user

   svn  log -l1000 SVN_URL | sed -n '/USERNAME/,/-$/ p'

##### bash function for convenient 'find' in subversion working directories

   svn _find () { local a=$1; shift; find $a -not \( -name .svn -prune \) $*; }

##### gets all files committed to svn by a particular user since a particular date

   svn  log -v -r{2009-11-1}:HEAD | awk '/^r[0-9]+ / {user=$3} /./{if (user=="george") {print}}' | grep -E "^   M|^   G|^   A|^   D|^   C|^   U" | awk '{print $2}' | sort | uniq

##### svn resume deleted file

   svn  copy http://svnserver.com/svn/trunk/htdocs/CMS/views/module/scripts/modal/dialog-settings-items.phtml@3143 -r 3143 htdocs/CMS/views/module/scripts/modal/dialog-settings-items.phtml

##### Remove all missing SVN files from the repository

   svn  stat | grep ^\! | awk '{print $2}' | xargs svn del

##### add all files not under version control to repository

   svn  add $(svn st|grep ^\?|cut -c2-)

##### Commit current modified or added files in current svn repository

   svn  status | grep -v ? | awk '{print $2}' > file.svn.txt && svn ci targets file.svn.txt -m "[your commit message here]"

##### Svn conflicted file resolve

   svn  st | grep ! | cut -c 9- | while read line;do svn resolved $line;done

##### automatically add and remove files in subversion

   svn  st | grep '^\?' | awk '{print $2}' | xargs svn add; svn st | grep '^\!' | awk '{print $2}' | xargs svn rm

##### Diff with colour highlighting

   svn  diff ARGUMENTS_FOR_DIFF | source-highlight out-format=esc src-lang=diff

##### Revert all modified files in an SVN repo

   svn  status | grep "^M" | while read entry; do file=`echo $entry | awk '{print $2}'`; echo $file; svn revert $file; done

##### SVN Status log to CSV (Mac OSX friendly)

   svn  log | tr -d '\n' | sed -E 's/-{2,}/\'$'\n/g' | sed -E 's/ \([^\)]+\)//g' | sed -E 's/^r//' | sed -E "s/[0-9]+ lines?//g" | sort -g

##### List all extneral depencies of an svn-repository

   svn  propget svn:externals -R [svn-repository-name]

##### svn propset mergeinfo

   svn  propset svn:mergeinfo "/trunk:4" .

##### svn diff ignore whitespace

   svn  diff diff-cmd diff -x -uw /path/to/file

##### Compare latest changes in locally edited file with SVN copy of a file

   svn  diff <FILE>

##### SVN Export files that were modified between given revisions.

   svn  diff . -r43:HEAD summarize | cut -c9-99999 | cpio -pvdmu ~/destination

##### Add all not commited files to svn

   svn  st | grep ^? | xargs svn add 2> /dev/null

##### Show the files that you've modified in an SVN tree

   svn  status | egrep '^(M|A)' | egrep -o '[^MA\ ].*$'

##### Send SVN diff to Meld

   svn  diff diff-cmd='meld' -r 100:BASE FILE

##### Mark manually deleted files as deleted in svn

   svn  status|grep -iR '^!'|sed 's/!/ /g'|xargs -i svn rm '{}'

##### List svn commits by user for a date range

   svn  log -r{2011-08-01}:HEAD|awk '$14 ~/line/ {print $3}'|sort|uniq -c

##### Add all unversioned files to svn

   svn  st | grep "^\?" | awk "{print \$2}" | xargs svn add $1

##### Show top committers for SVN repositority for today

   svn  log -r {`date "+%Y-%m-%d"`}:HEAD|grep '^r[0-9]' |cut -d\| -f2|sort|uniq -c

##### Display a list of committers sorted by the frequency of commits

   svn  log -q|grep "|"|awk "{print \$3}"|sort|uniq -c|sort -nr

##### Show top SVN committers for the last month

   svn  log -r {`date +"%Y-%m-%d" -d "1 month ago"`}:HEAD|grep '^r[0-9]' |cut -d\| -f2|sort|uniq -c

##### Have subversion ignore a file pattern in a directory

   svn  propset svn:ignore "*txt" log/

##### Ignore a directory in SVN, permanently

   svn  propset svn:ignore "*" tool/templates_c; svn commit -m "Ignoring tool/templates_c"

##### colorize your svn diff

   svn  diff | vim -

##### Send your svn diff to meld

   svn  diff diff-cmd='meld' -r 100:BASE FILE

##### Revert all modified files in an SVN repo

   svn  st | grep -e '^M' | awk '{print $2}' | xargs svn revert

##### gets all files committed to svn by a particular user since a particular date

   svn  log -v -r{2009-05-21}:HEAD | awk '/^r[0-9]+ / {user=$3} /yms_web/ {if (user=="george") {print $2}}' | sort | uniq

##### use vim to get colorful diff output

   svn  diff | view -

##### Commit only newly added files to subversion repository

   svn  ci `svn stat |awk '/^A/{printf $2" "}'`

##### Output a list of svn repository entities to xml file

   svn  list -R https://repository.com xml >> svnxxmlinfo.xml

##### output list of modifications for an svn revision

   svn  log $url -r $revision -v  | egrep "   [RAMD] \/" | sed s/^.....//

##### Number of files in a SVN Repository

   svn  log -v xml file:///path/to/rep | grep kind=\"file\"|wc -l

##### SVN Status log to CSV

   svn  log |  tr -d '\n' | sed -r 's/-{2,}/\n/g' | sed -r 's/ \([^\)]+\)//g' | sed -r 's/^r//' | sed -r "s/[0-9]+ lines?//g" | sort -g

##### fetch all revisions of a specific file in an SVN repository

   svn  log fileName | sed -ne "/^r\([0-9][0-9]*\).*/{;s//\1/;s/.*/svn cat fileName@& > fileName.r&/p;}" | sh -s

##### looking for files not subversioned

   svn  status | awk '$1!~"M" {print $0}'

##### Edit the list of to ignore files in the active directory

   svn  propedit svn:ignore .

##### Get the current svn branch/tag (Good for PS1/PROMPT_COMMAND cases)

   svn  info | grep '^URL:' | egrep -o '(tags|branches)/[^/]+|trunk' | egrep -o '[^/]+$'

##### add all files not under version control to repository

   svn  add . force

##### Number of files in a SVN Repository

   svn  info -R xml file:///path/to/rep | grep kind=\"file\"|wc -l

##### Recursively Add Changed Files to Subversion

   svn  status | grep "^\?" | awk '{print $2}' | xargs svn add

##### make sure you don't add large file to your repository

   svn  status | awk '{print $2}' | xargs du | sort -n | tail

##### top svn committers (without awk)

   svn  log -q | grep '^r[0-9]' | cut -f2 -d "|" | sort | uniq -c | sort -nr

##### Get each users commit amount

   svn  log 2>&1 | egrep '^r[0-9]+' | cut -d "|" -f2 | sort | uniq -c

##### Set executable permissions on a file under Subversion

   svn  propset svn:executable ON filename

##### delete unversioned files in a checkout from svn

   svn  st | grep "^\?" | awk "{print \$2}" | xargs rm -rf

##### Deleting Files from svn which are missing

   svn  status | grep '!' | sed 's/!/ /' | xargs svn del force

##### Paged, colored svn diff

   svn  diff $* | colordiff | less -r

##### show todays svn log

   svn  log revision {`date +%Y-%m-%d`}:HEAD

##### Prints total line count contribution per user for an SVN repository

   svn  ls -R | egrep -v -e "\/$" | xargs svn blame | awk '{print $2}' | sort | uniq -c | sort -r

##### Colored SVN diff

   svn  diff <file> | vim -R -

##### Revert an SVN file to previous revision

   svn  up -rREV file

##### fetch all revisions of a specific file in an SVN repository

   svn  log fileName|cut -d" " -f 1|grep -e "^r[0-9]\{1,\}$"|awk {'sub(/^r/,"",$1);print "svn cat fileName@"$1" > /tmp/fileName.r"$1'}|sh

##### one-line log format for svn

   svn  log | perl -l40pe 's/^-+/\n/'

##### import a new set of files located in a local directory into a remote Subversion repository

   svn  import /home/kaz/myproject svn+ssh://svn.FOO.codehaus.org/home/projects/FOO/scm/project1/trunk

##### Add all files in current directory to SVN

   svn  add force *

##### Get the current svn branch/tag (Good for PS1/PROMPT_COMMAND cases)

   svn  info | sed -n "/URL:/s/.*\///p"

##### Show the total number of changes that every user committed to a Subversion repository

   svn  log -v xml > log.xml; zorba -q 'let $log := doc("log.xml")/log/logentry return for $author in distinct-values($log/author) order by $author return concat($author, " ", sum(count($log[author=$author]/paths/path)), "&#xa;")' serialize-text

##### revert a file with svn

   svn  merge -r 854:853 l3toks.dtx

##### Colorize svn stat

   svn  stat -u | sort | sed -e "s/^M.*/\o033[31m&\o033[0m/" -e "s/^A.*/\o033[34m&\o033[0m/" -e "s/^D.*/\o033[35m&\o033[0m/"

##### sync svn working copy and remote repository (auto adding new files)

   svn  status | grep '^?' | awk '{ print $2; }' | xargs svn add

##### Quick and Temporary Named Commands

   svn  up -r PREV # revert

##### Prints total line count contribution per user for an SVN repository

   svn  ls -R | egrep -v -e "\/$" | tr '\n' '\0' | xargs -0 svn blame | awk '{print $2}' | sort | uniq -c | sort -nr

##### add all files not under version control to repository

   svn  st | awk ' {if ( $1 == "?" ){print $1="",$0}} ' | sed -e 's/^[ \t]*//' | sed 's/ /\\ /g' | xargs svn add

##### SVN Clean

   svn  status | grep ^? | awk '{print $2}' | xargs rm -rf

##### svn diff colorized

   svn  diff diff-cmd="colordiff"

##### SVN script for automatically adding and deleting files

   svn  status | grep '^?' | sed -e 's/^? */svn add "/g' -e 's/$/"/g'|sh ; svn status | grep '^!' | sed -e 's/^! */svn delete "/g' -e 's/$/"/g'|sh

##### Add all files

   svn  add `svn status | grep ? | cut -c9-80`

##### find both total size and number of files below any given svn directory

   svn  list -vR svn://server/repo/somedir | awk '{if ($3 !="") sum+=$3; i++} END {print "\ntotal size= " sum/1024000" MB" "\nnumber of files= " i/1000 " K"}'

##### Readd all files is missing from svn repo

   svn  status | grep "^\?" | awk '{print $2}' | xargs svn add

##### archive all files containing local changes (svn)

   svn  st -q | cut -c 2- | tr -d ' ' | xargs tar -czvf ../backup.tgz

##### Get a Bulleted List of SVN Commits By a User for a Specifc Day (Daily Work Log)

   svn  log -r '{YYYY-MM-DD}:{YYYY-MM-DD}' | sed -n '1p; 2,/^-/d; /USERNAME/,/^-/p' | grep -E -v '^(r[0-9]|-|$)' | sed 's/^/* /g'

##### add all files not under version control to repository

   svn  status |grep '\?' |awk '{print $2}'| xargs svn add

##### Commands on svn stat

   svn  stat | grep M | cut -d " " -f8 | xargs svn revert

##### Revert an SVN file to previous revision

   svn  diff -r M:N file.php | patch -p0

##### Add all unversioned files to svn

   svn  st | awk '{if ($1 ~ "?") print $2}' | xargs svn add

##### revert a committed change in SVN

   svn  merge -c -REV

##### show last revision log on svn update

   svn  up | sed 's/\.//g' | cut -d ' ' -f3 | xargs svn log -r

##### Get the current svn branch/tag (Good for PS1/PROMPT_COMMAND cases)

   svn  info | grep ^URL | awk 'BEGIN {FS="\/"}; {if($(NF-1)=="branches") {print $NF} else if($NF=="trunk") {print $(NF-1)} else {print $NF} } '

##### archive all files containing local changes (svn)

   svn  st | cut -c 8- | sed 's/^/\"/;s/$/\"/' | xargs tar -czvf ../backup.tgz

##### svn diff $* | colordiff | lv -c

   svn  diff $* | colordiff | lv -c

##### Add all unversioned files to svn

   svn  stat | grep "^\?" | awk '{ print "svn add " $2 }' | bash

##### command to find when the last commit has happened from the server

   svn look date /path/to/repo

##### Create a tar of modified/added files since revision 1792.

   svn  diff -r 1792:HEAD summarize | awk '{if ($1 != "D") print $2}'| xargs  -I {} tar rf incremental_release.tar {}

##### add all files not under version control to repository

   svn  st | grep '^?' | sed -e 's/\?[[:space:]]*//' | tr '\n' '\0' | xargs -0 svn add

##### one-line log format for svn

   svn  log | perl -pe 's/\n//g => s/^-.*/\n/g'

##### Edit the list of to ignore files in the active directory

   svn  pe svn:ignore .

##### get the info which branch was created

   svn  log stop-on-copy -r 1:HEAD -l 1

##### Get the current svn branch/tag (Good for PS1/PROMPT_COMMAND cases)

   svn  info | grep ^URL | awk -F\/ '{print $NF}'

##### SVN - set exec bit on

   svn  ps svn:executable yes /web/itscripts/check_mail.plproperty

##### add all files not under version control to repository

   svn  st | awk ' {if ( $1 == "?" ){print $1="",$0}} ' | sed -e 's/^[ \t]*//' | sed 's/ /\\ /g' |  perl -ne '`svn add ${1}@` if /(.*)(@*)(.*)/'

##### Get svn log from remote server

   svn  log -l1000 <V CTRL SERVER> -v > svn_full.log

##### get svn log by the user

   svn  log -l1000 SVN_URL | sed -n '/USERNAME/,/-$/ p'

##### bash function for convenient 'find' in subversion working directories

   svn _find () { local a=$1; shift; find $a -not \( -name .svn -prune \) $*; }

##### gets all files committed to svn by a particular user since a particular date

   svn  log -v -r{2009-11-1}:HEAD | awk '/^r[0-9]+ / {user=$3} /./{if (user=="george") {print}}' | grep -E "^   M|^   G|^   A|^   D|^   C|^   U" | awk '{print $2}' | sort | uniq

##### svn resume deleted file

   svn  copy http://svnserver.com/svn/trunk/htdocs/CMS/views/module/scripts/modal/dialog-settings-items.phtml@3143 -r 3143 htdocs/CMS/views/module/scripts/modal/dialog-settings-items.phtml

##### Remove all missing SVN files from the repository

   svn  stat | grep ^\! | awk '{print $2}' | xargs svn del

##### add all files not under version control to repository

   svn  add $(svn st|grep ^\?|cut -c2-)

##### Commit current modified or added files in current svn repository

   svn  status | grep -v ? | awk '{print $2}' > file.svn.txt && svn ci targets file.svn.txt -m "[your commit message here]"

##### Svn conflicted file resolve

   svn  st | grep ! | cut -c 9- | while read line;do svn resolved $line;done

##### automatically add and remove files in subversion

   svn  st | grep '^\?' | awk '{print $2}' | xargs svn add; svn st | grep '^\!' | awk '{print $2}' | xargs svn rm

##### Diff with colour highlighting

   svn  diff ARGUMENTS_FOR_DIFF | source-highlight out-format=esc src-lang=diff

##### Revert all modified files in an SVN repo

   svn  status | grep "^M" | while read entry; do file=`echo $entry | awk '{print $2}'`; echo $file; svn revert $file; done

##### SVN Status log to CSV (Mac OSX friendly)

   svn  log | tr -d '\n' | sed -E 's/-{2,}/\'$'\n/g' | sed -E 's/ \([^\)]+\)//g' | sed -E 's/^r//' | sed -E "s/[0-9]+ lines?//g" | sort -g

##### List all extneral depencies of an svn-repository

   svn  propget svn:externals -R [svn-repository-name]

##### svn propset mergeinfo

   svn  propset svn:mergeinfo "/trunk:4" .

##### svn diff ignore whitespace

   svn  diff diff-cmd diff -x -uw /path/to/file

##### Compare latest changes in locally edited file with SVN copy of a file

   svn  diff <FILE>

##### SVN Export files that were modified between given revisions.

   svn  diff . -r43:HEAD summarize | cut -c9-99999 | cpio -pvdmu ~/destination
