#!/bin/bash

# - iNFO -----------------------------------------------------------------------------
#
#        Author: wuseman <wuseman@nr1.nu>
#      FileName: chroot.sh
#       Version: 1.0
#
#       Created: 2013-00-00 (00:00:00)
#      Modified: 2021-09-10 (01:51:09)
#
#           iRC: wuseman (Libera/EFnet/LinkNet) 
#       Website: https://www.nr1.nu/
#        GitHub: https://github.com/wuseman/
#
# - Descrpiption --------------------------------------------------------------------
#
#      No description has been added
#
# - LiCENSE -------------------------------------------------------------------------
#
#      Copyright (C) 2021, wuseman                                     
#                                                                       
#      This program is free software; you can redistribute it and/or modify 
#      it under the terms of the GNU General Public License as published by 
#      the Free Software Foundation; either version 3 of the License, or    
#      (at your option) any later version.                                  
#                                                                       
#      This program is distributed in the hope that it will be useful,      
#      but WITHOUT ANY WARRANTY; without even the implied warranty of       
#      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the        
#      GNU General Public License for more details.                         
#                                                                       
#      You must obey the GNU General Public License. If you will modify     
#      the file(s), you may extend this exception to your version           
#      of the file(s), but you are not obligated to do so.  If you do not   
#      wish to do so, delete this exception statement from your version.    
#      If you delete this exception statement from all source files in the  
#      program, then also delete it here.                                   
#
#      You should have received a copy of the GNU General Public License
#      along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
# - End of Header -------------------------------------------------------------



banner() {
echo -e "\e[1;35m "
echo -e "         -/oyddmdhs+:.                 "
echo -e "\e[1;35m      -\e[0m\e[1;37modNMMMMMMMMNNmhy+\e[0m\e[1;35m-             "
echo -e "\e[1;35m    -\e[0m\e[1;37myNMMMMMMMMMMMNNNmmdhy+\e[0m\e[1;35m-          "
echo -e "\e[1;35m  o\e[0m\e[1;37mmMMMMMMMMMMMMNmdmmmmddhhy\e[0m\e[1;35m/         "
echo -e "\e[1;35m  o\e[0m\e[1;37mmMMMMMMMMMMMN\e[1;35mhhyyyoh\e[0mmdddhhhd\e[0m\e[1;35mo   "
echo -e "\e[1;35m .\e[0m\e[1;37mydMMMMMMMMMM\e[1;35mdhs++so/s\e[0mmdddhhhhdm\e[0m\e[1;35m+    Author: wuseman"
echo -e "\e[1;35m  o\e[0m\e[1;37myhdmNMMMMMMMN\e[1;35mdyooyd\e[0mmddddhhhhyhNd\e[0m\e[1;35m.  Contact: info@sendit.nu"
echo -e "\e[1;35m   :\e[0m\e[1;37moyhhdNNMMMMMMMNNNmmdddhhhhhyymM\e[0m\e[1;35mh  IRC: wuseman @ #gentoo"
echo -e "\e[1;35m     .\e[0m\e[1;37m:+sydNMMMMMNNNmmmdddhhhhhhmMm\e[0m\e[1;35my  Version: 1.1"
echo -e "\e[1;35m        /\e[0m\e[1;37mmMMMMMMNNNmmmdddhhhhhmMNhs\e[0m\e[1;35m:   "
echo -e "\e[1;35m     o\e[0m\e[1;37mNMMMMMMMNNNmmmddddhhdmMNhs\e[0m\e[1;35m+      "
echo -e "\e[1;35m    s\e[0m\e[1;37mNMMMMMMMMNNNmmmdddddmNMmhs/\e[0m\e[1;35m.      "
echo -e "\e[1;35m   /\e[0m\e[1;37mNMMMMMMMMNNNNmmmdddmNMNds\e[0m\e[1;35mo:        "
echo -e "\e[1;35m  +\e[0m\e[1;37mMMMMMMMNNNNNmmmmdmNMNdso/\e[0m\e[1;35m-"
echo -e "\e[1;35m  y\e[0m\e[1;37mMMNNNNNNNmmmmmNNMmhs+/\e[0m\e[1;35m-"
echo -e "\e[1;35m /\e[0m\e[1;37mhMMNNNNNNNNMNdhs++/\e[0m\e[1;35m-"
echo -e "\e[1;35m /\e[0m\e[1;37mohdmmddhys+++/:\e[0m\e[1;35m."
echo -e "\e[1;35m  -//////:--"
echo -e "\e[0m"
}

you_must_be_root() {
    (( ${EUID} > 0 )) && printf "%s\n" "$basename$0: internal error -- root privileges is required" && exit 1
}


help() {
cat << "EOF"
wgentoo - a program to facialiate work when running gentoo on a liveusb
       options
              -c CHROOT   - Decrypt, mount and chroot your gentoo system
              -h HELP     - Print this help
              -v VERSION  - Print wgentoo version
              -p PACKAGES - Install the most used packages by wusemna 
EOF
}


packages() {
for i in inxi screenfetch hdparm wget curl smartmontools hddtemp; do
emerge --ask $i
done
}

chroot() {
MNT="/mnt/usb"
MAPPER="/dev/mapper"
HOME="/dev/sda1"
BOOT="/dev/sdb2"
ROOT="/dev/sdb3"
GENTOO="/mnt/gentoo"

printf "Please wait, decrypting $ROOT\n"
cryptsetup --key-file $MNT/.key_files/root.txt luksOpen $ROOT rootfs
printf "Please wait, decrypting home-opt-swap\n"
cryptsetup --key-file $MNT/.key_files/root.txt luksOpen $HOME home

sleep 1
vgchange -a y
sleep 1
mount -v $MAPPER/thinkpad-rootfs $GENTOO
printf "Mounted thinkpad-rootfs into $GENTOO\n"
mount -v /mnt/gentoo % mount /dev/mapper/thinkpad--w541-home $GENTOO/home
mount -v /mnt/gentoo % mount /dev/mapper/thinkpad--w541-opt $GENTOO/opt
printf "Mounted thinkpad--w541-home into $GENTOO/home\n"
printf "Mounted thinkpad--w541-opt into $GENTOO/opt\n"
sleep 1
mount -v $BOOT $GENTOO/boot
printf "Mounted $BOOT into $GENTOO/boot\n"
sleep 1
mount -v -t proc proc $GENTOO/proc
printf "Mounted /proc into $GENTOO/proc\n"
sleep 1
mount -v --rbind /dev $GENTOO/dev
printf "Mounted /dev into $GENTOO/dev\n"
sleep 1
mount -v --rbind /sys $GENTOO/sys
printf "Mounted /sys into $GENTOO/sys\n"
printf "\n\nDone, you are now ready to chroot.\n\n"
read -p "Want me to chroot: (y/n): " chrooty
if [[ $chrooty = "y" ]]; then
printf "\nEntering chroot, remember to source /etc/profile\n"
chroot $GENTOO /bin/bash
else
printf "Enter chroot later by command 'chroot /mnt/gentoo /bin/bash\n'"
fi
}


if [[ -z $1 ]]; then
banner
help
fi

while getopts ":c" getopt; do
 case $getopt in
     c) chroot ;;
     h) help ;;
     p) packages ;;
    \?) echo "$getopt is not a valid option, please use wgentoo -h for get help" ;;
 esac
done
