# pip

##### Automatically update all the installed python packages

   pip  freeze local | awk -F "=" '{print "pip install -U "$1}' | sh

##### Automatically update all the installed python packages

   pip  freeze local | awk -F= '{print "pip install -U "$1}' | sh

##### Update all outdated Python packages through pip.

   pip  list outdated format=freeze | grep -o "[[:alnum:][:punct:]]\{,\}==" | sed 's#==$##g' | xargs -I '{}' pip install {} upgrade

##### Automatically update all the installed python packages

   pip  freeze local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U

##### pip install into current directory without virtualenv

   pip  install prefix $PWD -I pip

##### Install pip with Proxy

   pip  proxy http://proxy:8080 install Jinja2==2.9.6

##### Automatically update all the installed python packages

   pip  freeze local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U

##### pip install into current directory without virtualenv

   pip  install prefix $PWD -I pip

##### Install pip with Proxy

   pip  proxy http://proxy:8080 install Jinja2==2.9.6
