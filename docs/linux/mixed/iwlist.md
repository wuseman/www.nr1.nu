# iwlist

##### UBNT device

   iwlist  ath0 scanning |egrep '(ESSID|Signal|Address)'| \sed -e 's/Cell  - Address:*//g'  -e 's/ESSID://g' \-e 's/Noise level=-//g' -e 's/dBm//g' \-e 's/Quality=*//g'  -e 's/Signal level=-//g' \-e 's/"//g'

##### Cleanly list available wireless networks (using iwlist)

   iwlist  wlan0 scan | sed -ne 's#^[[:space:]]*\(Quality=\|Encryption key:\|ESSID:\)#\1#p' -e 's#^[[:space:]]*\(Mode:.*\)$#\1\n#p'

##### wlanscan ssids

   iwlist  wlo1 scan | grep ESSID

##### Cleanly list available wireless networks (using iwlist)

   iwlist  wlan0 scan | sed -ne 's#^[[:space:]]*\(Quality=\|Encryption key:\|ESSID:\)#\1#p' -e 's#^[[:space:]]*\(Mode:.*\)$#\1\n#p'
