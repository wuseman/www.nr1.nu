# salt

##### Get summary of updateable packages on Debian/Ubuntu machines using salt stack

   salt  -G 'os_family:Debian' cmd.run ' /usr/lib/update-notifier/apt-check human-readable'

##### Get list of updateable packages on Debian/Ubuntu machines using salt stack

   salt  -G 'os_family:Debian' cmd.run 'apt-get dist-upgrade dry-run | grep ^Inst | cut -d" " -f2'

##### Get list of updateable packages on Debian/Ubuntu machines using salt stack

   salt  -G 'os_family:Debian' cmd.run 'apt-get dist-upgrade dry-run | grep ^Inst | cut -d" " -f2'
