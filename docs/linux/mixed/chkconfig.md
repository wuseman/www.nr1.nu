# chkconfig

##### Duplicating service runlevel configurations from one server to another.

   chkconfig  list | fgrep :on | sed -e 's/\(^.*\)*0:off/\1:/g' -e 's/\(.\):on/\1/g' -e 's/.:off//g' | tr -d [:blank:] | awk -F: '{print$2,$1}' | ssh host 'cat > foo'

##### Duplicating service runlevel configurations from one server to another.

   chkconfig  list | fgrep :on | sed -e 's/\(^.*\)*0:off/\1:/g' -e 's/\(.\):on/\1/g' -e 's/.:off//g' | tr -d [:blank:] | awk -F: '{print$2,$1}' | ssh host 'cat > foo'
