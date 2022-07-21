# rdesktop

##### Open a RemoteDesktop from terminal

   rdesktop  -a 16 luigi:3052

##### Open Remote Desktop (RDP) from command line and connect local resources

   rdesktop  -a24 -uAdministrator -pPassword  -r clipboard:CLIPBOARD -r disk:share=~/share -z -g 1280x900 -0 $@ &

##### Open Remote Desktop (RDP) from command line having a custom screen size

   rdesktop  -u <username> -p <password> -g 1366x724 -a 16 -D -z -P <servername / IP Address>

##### Open Remote Desktop (RDP) from command line and connect local resources

   rdesktop  -a24 -uAdministrator -pPassword  -r clipboard:CLIPBOARD -r disk:share=~/share -z -g 1280x900 -0 $@ &
