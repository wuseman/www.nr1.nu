# iw

##### UBNT device

   iw list ath0 scanning |egrep '(ESSID|Signal|Address)'| \sed -e 's/Cell  - Address:*//g'  -e 's/ESSID://g' \-e 's/Noise level=-//g' -e 's/dBm//g' \-e 's/Quality=*//g'  -e 's/Signal level=-//g' \-e 's/"//g'

##### Disconnect a wireless client on an atheros-based access point

   iw priv ath<x> kickmac <macaddress>

##### List wireless clients connected to an access point

   iw  dev ath0 station dump

##### Cleanly list available wireless networks (using iwlist)

   iw list wlan0 scan | sed -ne 's#^[[:space:]]*\(Quality=\|Encryption key:\|ESSID:\)#\1#p' -e 's#^[[:space:]]*\(Mode:.*\)$#\1\n#p'

##### place wifi card into monitor mode

   iw config wlan0 mode monitor

##### wlanscan ssids

   iw list wlo1 scan | grep ESSID

##### Disconnect a wireless client on an atheros-based access point

   iw priv ath<x> kickmac <macaddress>

##### List wireless clients connected to an access point

   iw  dev ath0 station dump

##### Cleanly list available wireless networks (using iwlist)

   iw list wlan0 scan | sed -ne 's#^[[:space:]]*\(Quality=\|Encryption key:\|ESSID:\)#\1#p' -e 's#^[[:space:]]*\(Mode:.*\)$#\1\n#p'

##### place wifi card into monitor mode

   iw config wlan0 mode monitor
