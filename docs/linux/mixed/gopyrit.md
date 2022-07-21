# gopyrit

##### WPA/WPA2 ESSID and password automation with pyrit

   gopyrit  () {  if [ $# -lt 1 ]; then echo $0 '< list of ESSIDs >'; return -1; fi; for i in "$@"; do pyrit -e $i create_essid && pyrit batch; done; pyrit eval }
