# complete

##### Enable tab completion for known SSH hosts

   complete  -W "$(sed 's/;.*//;' /etc/hosts | awk ' /^[[:digit:]]/ {$1 = "";print tolower($0)}')" ssh

##### Enable tab completion for known SSH hosts

   complete  -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" ssh

##### ssh autocomplete

   complete  -W "$(while IFS=' ,' read host t; do echo $host; done < ~/.ssh/known_hosts)" ssh

##### ssh autocomplete

   complete  -W "$(echo `cat .bash_history | egrep '^ssh ' | sort | uniq | sed 's/^ssh //'`;)" ssh

##### bash auto-complete your screen sessions

   complete  -C "perl -e '@w=split(/ /,\$ENV{COMP_LINE},-1);\$w=pop(@w);for(qx(screen -ls)){print qq/\$1\n/ if (/^\s*\$w/&&/(\d+\.\w+)/||/\d+\.(\$w\w*)/)}'" screen

##### ssh autocomplete

   complete  -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" ssh

##### ssh autocomplete based on ~/.ssh/config

   complete  -o default -o nospace -W "$(grep -i -e '^host ' ~/.ssh/config | awk '{print substr($0, index($0,$2))}' ORS=' ')" ssh scp sftp

##### ssh autocomplete

   complete  -W "$(echo $(grep ^Host ~/.ssh/config | sed -e 's/Host //' | grep -v "\*"))" ssh

##### ssh autocomplete

   complete  -W "$(echo $(grep '^ssh ' .bash_history | sort -u | sed 's/^ssh //'))" ssh

##### Multi (file)source SSH host tab-completion

   complete  -W "$( { awk '/^Host / { print $2 }' ~/.ssh/config | egrep -v '\*|,'      echo $( grep '^ssh ' .bash_history | sort -u | sed 's/^ssh //' )      while IFS=' ,' read host t; do echo $host; done < ~/.ssh/known_hosts ;} )" ssh

##### SSH Autocomplete. Takes your history and creates ssh autocomplete using tab

   complete  -W "$(echo $(grep '^ssh ' .bash_history | sort -u | sed 's/^ssh /\"/' | sed 's/$/\"/'))" ssh

##### bash auto-complete your screen sessions

   complete  -C "perl -e '@w=split(/ /,\$ENV{COMP_LINE},-1);\$w=pop(@w);for(qx(screen -ls)){print qq/\$1\n/ if (/^\s*\$w/&&/(\d+\.\w+)/||/\d+\.(\$w\w*)/)}'" screen

##### ssh autocomplete

   complete  -W "$(echo `cat ~/.ssh/known_hosts | cut -f 1 -d ' ' | sed -e s/,.*//g | uniq | grep -v "\["`;)" ssh

##### ssh autocomplete based on ~/.ssh/config

   complete  -o default -o nospace -W "$(grep -i -e '^host ' ~/.ssh/config | awk '{print substr($0, index($0,$2))}' ORS=' ')" ssh scp sftp

##### ssh autocomplete

   complete  -W "$(echo $(grep ^Host ~/.ssh/config | sed -e 's/Host //' | grep -v "\*"))" ssh

##### ssh autocomplete

   complete  -W "$(echo $(grep '^ssh ' .bash_history | sort -u | sed 's/^ssh //'))" ssh

##### Multi (file)source SSH host tab-completion

   complete  -W "$( { awk '/^Host / { print $2 }' ~/.ssh/config | egrep -v '\*|,'      echo $( grep '^ssh ' .bash_history | sort -u | sed 's/^ssh //' )      while IFS=' ,' read host t; do echo $host; done < ~/.ssh/known_hosts ;} )" ssh
