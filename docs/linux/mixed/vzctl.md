# vzctl

##### Quickly search OpenVZ container by IP and enter it

   vzctl  enter `vzlist -a | grep $CONTAINER_IP 2 | awk '{ print $1}'`
