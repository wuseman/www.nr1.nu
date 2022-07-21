# pmset

##### Display minutes remaining on Macbook battery

   pmset  -g batt | awk '/^ /{print $5}'

##### Get OSX Battery percentage

   pmset  -g batt | egrep "([0-9]+\%).*" -o colour=auto | cut -f1 -d';'

##### Check whether laptop is running on battery or cable

   pmset  -g batt    # os x version

##### Get OSX Battery percentage

   pmset  -g batt | egrep "([0-9]+\%).*" -o colour=auto | cut -f1 -d';'

##### Check whether laptop is running on battery or cable

   pmset  -g batt    # os x version
