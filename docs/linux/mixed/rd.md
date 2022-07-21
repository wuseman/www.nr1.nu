# rd

##### Open a RemoteDesktop from terminal

   rd esktop -a 16 luigi:3052

##### set the system date

   rd ate -s time-A.timefreq.bldrdoc.gov

##### Remove very large or problematic directories under Windows from Command Prompt

   rd  /S /Q directory

##### scroll file one line at a time (w/only UNIX base utilities)

   rd (){ while read a ;do printf "$a\n";sleep ${1-1};done ;} # usage: rd < file ; or ... | rd

##### Pull up remote desktop for other than gnome/kde eg fluxbox

   rd p() { ssh $1 sh -c 'PATH=$PATH:/usr/local/bin; x11vnc -q -rfbauth ~/.vnc/passwd -display :0' & sleep 4; vncviewer $1:0 & }

##### Open Remote Desktop (RDP) from command line and connect local resources

   rd esktop -a24 -uAdministrator -pPassword  -r clipboard:CLIPBOARD -r disk:share=~/share -z -g 1280x900 -0 $@ &

##### Open Remote Desktop (RDP) from command line having a custom screen size

   rd esktop -u <username> -p <password> -g 1366x724 -a 16 -D -z -P <servername / IP Address>

##### scroll file one line at a time (w/only UNIX base utilities)

   rd (){ while read a ;do printf "$a\n";sleep ${1-1};done ;} # usage: rd < file ; or ... | rd

##### Pull up remote desktop for other than gnome/kde eg fluxbox

   rd p() { ssh $1 sh -c 'PATH=$PATH:/usr/local/bin; x11vnc -q -rfbauth ~/.vnc/passwd -display :0' & sleep 4; vncviewer $1:0 & }

##### Open Remote Desktop (RDP) from command line and connect local resources

   rd esktop -a24 -uAdministrator -pPassword  -r clipboard:CLIPBOARD -r disk:share=~/share -z -g 1280x900 -0 $@ &
