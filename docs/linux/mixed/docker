# docker

##### docker build with custom title

   docker  build rm=true -t aysadk/mysql-server .

##### run logstash with docker

   docker  run  name=logstash \    -p 9200:9200 -p 554:514/udp -p 555:514 \     -v /log:/log pblittle/docker-logstash

##### kill the first docker container in docker ps

   docker  kill $(docker ps -q)

##### Docker.io Stop and Remove all processes

   docker  stop $(docker ps -a -q); docker rm $(docker ps -a -q)

##### get ip of all running docker containers

   docker  inspect format "{{ .NetworkSettings.IPAddress }}" $(docker ps -q)

##### Automatically tunnel all ports of running docker instances in boot2docker

   docker  ps -q | xargs -n 1 docker inspect  | jq '.[0].NetworkSettings.Ports +{} | map(select(. != null)[0].HostPort) | map("-L \(.):localhost:\(.)") ' | sed -n 's/.*"\(.*\)".*/\1/p' |xargs boot2docker ssh -N

##### List every docker's name, IP and port mapping

   docker  inspect format "{{ .Name }} # {{ .NetworkSettings.IPAddress }} # {{ .NetworkSettings.Ports }}" $(docker ps -q) | tr -s '#' '\t'

##### Remove all docker images to cleanup disk

   docker  rmi `docker images -a -q`

##### Remove all docker images to cleanup disk

   docker  image prune

##### Pretty print docker ps command

   docker  ps | perl -ple "s/\$/\n\n/g;s/\s{2,}/\n/g;s/(Up)/\\e\[32m\$1\\e\[0m/g;s/(Down)/\\e\[31m\\e\[5m\$1\\e\[25m\\e\[0m/g;s/^([^\n]+)/\\e\[1m\$1\\e\[0m/g;s/(\w+?)$/\\e\[4m\$1\\e\[24m/g" | more

##### docker kill all containers

   docker  kill $(docker ps -q)

##### docker get ip of container

   docker  inspect -f "{{ .NetworkSettings.IPAddress }}" $CONTAINERID

##### Remove all docker images to cleanup disk

   docker  images | awk '{ print $3 }' | grep -v IMAGE | xargs docker rmi

##### Stop the last run container

   docker  stop $(docker ps -lq)

##### Docker - delete all non-running container

   docker  ps -a | grep 'Exit' | awk '{print $1}' | xargs docker rm

##### Docker - delete unused images

   docker  images | grep '' | awk '{print $3}' | xargs docker rmi

##### human readable docker ps output

   docker  ps | sed -e 's/  /\+/g' -e 's/CONTAINER ID/CONTAINER_ID/' | tr -s '+' '\t' | q -t 'select c1,substr(c7, 0, 40),c2,c6 from -' | column -t

##### delete some 4 months old docker images, not using force

   docker  images |grep '4 months' | awk '{print$3}' | xargs docker rmi

##### Stop all running docker containers

   docker  stop $(docker ps -a -q)

##### Connect to docker as root

   docker  run -u 0 -it container_id /bin/bash

##### Human readable docker stats output

   docker  stats no-stream $( docker ps -q ) | sed -e "$( docker ps format "{{.ID}} {{.Names}}" | sed -e "s/\(.*\) \(.*\)/s\/\1\/\2\t\/g;/" )"

##### Docker.io Stop and Remove all processes

   docker  stop $(docker ps -a -q); docker rm $(docker ps -a -q)

##### get ip of all running docker containers

   docker  inspect format "{{ .NetworkSettings.IPAddress }}" $(docker ps -q)

##### Automatically tunnel all ports of running docker instances in boot2docker

   docker  ps -q | xargs -n 1 docker inspect  | jq '.[0].NetworkSettings.Ports +{} | map(select(. != null)[0].HostPort) | map("-L \(.):localhost:\(.)") ' | sed -n 's/.*"\(.*\)".*/\1/p' |xargs boot2docker ssh -N

##### List every docker's name, IP and port mapping

   docker  inspect format "{{ .Name }} # {{ .NetworkSettings.IPAddress }} # {{ .NetworkSettings.Ports }}" $(docker ps -q) | tr -s '#' '\t'

##### Remove all docker images to cleanup disk

   docker  rmi `docker images -a -q`

##### Remove all docker images to cleanup disk

   docker  image prune

##### Pretty print docker ps command

   docker  ps | perl -ple "s/\$/\n\n/g;s/\s{2,}/\n/g;s/(Up)/\\e\[32m\$1\\e\[0m/g;s/(Down)/\\e\[31m\\e\[5m\$1\\e\[25m\\e\[0m/g;s/^([^\n]+)/\\e\[1m\$1\\e\[0m/g;s/(\w+?)$/\\e\[4m\$1\\e\[24m/g" | more

##### docker kill all containers

   docker  kill $(docker ps -q)

##### docker get ip of container

   docker  inspect -f "{{ .NetworkSettings.IPAddress }}" $CONTAINERID

##### Remove all docker images to cleanup disk

   docker  images | awk '{ print $3 }' | grep -v IMAGE | xargs docker rmi

##### Stop the last run container

   docker  stop $(docker ps -lq)

##### Docker - delete all non-running container

   docker  ps -a | grep 'Exit' | awk '{print $1}' | xargs docker rm

##### Docker - delete unused images

   docker  images | grep '' | awk '{print $3}' | xargs docker rmi

##### human readable docker ps output

   docker  ps | sed -e 's/  /\+/g' -e 's/CONTAINER ID/CONTAINER_ID/' | tr -s '+' '\t' | q -t 'select c1,substr(c7, 0, 40),c2,c6 from -' | column -t

##### delete some 4 months old docker images, not using force

   docker  images |grep '4 months' | awk '{print$3}' | xargs docker rmi

##### Stop all running docker containers

   docker  stop $(docker ps -a -q)
