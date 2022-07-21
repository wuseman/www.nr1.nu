# env

##### generate random password (works on Mac OS X)

   env  LC_CTYPE=C tr -dc "a-zA-Z0-9-_\$\?" < /dev/urandom | head -c 10

##### More precise BASH debugging

   env  PS4=' ${BASH_SOURCE}:${LINENO}(${FUNCNAME[0]}) ' sh -x /etc/profile

##### Touch the commit date of the last commit. Useful in combination with `git cherry-pick`

   env  GIT_COMMITTER_DATE=(date) git commit amend date (date)

##### Set the date on one remove server to the date of another remote server

   env  TERM="$(ssh SRC_SRV "date"):TERM" ssh -t DST_SRV 'TS=${TERM%:*}; TERM=${TERM##*:}; export TS; date ; sudo date -s "$TS"; date'

##### display text file within an editor on whatever workspace is in front of you

   env  DISPLAY=:0 /usr/bin/gedit  ~/df.txt  && wmctl -a gedit

##### More precise BASH debugging

   env  PS4=' ${BASH_SOURCE:-0$}:${LINENO}(${FUNCNAME[0]}) ' sh -x /etc/profile

##### generate random password (works on Mac OS X)

   env  LC_CTYPE=C tr -dc "a-zA-Z0-9-_\$\?" < /dev/urandom | head -c 10

##### More precise BASH debugging

   env  PS4=' ${BASH_SOURCE}:${LINENO}(${FUNCNAME[0]}) ' sh -x /etc/profile

##### Touch the commit date of the last commit. Useful in combination with `git cherry-pick`

   env  GIT_COMMITTER_DATE=(date) git commit amend date (date)

##### Set the date on one remove server to the date of another remote server

   env  TERM="$(ssh SRC_SRV "date"):TERM" ssh -t DST_SRV 'TS=${TERM%:*}; TERM=${TERM##*:}; export TS; date ; sudo date -s "$TS"; date'

##### display text file within an editor on whatever workspace is in front of you

   env  DISPLAY=:0 /usr/bin/gedit  ~/df.txt  && wmctl -a gedit
