# su

##### Run the last command as root

   su do !!

##### Run the last command as root

   su do !!

##### Run the last command as root

   su do !!

##### Run a file system check on your next boot.

   su do touch /forcefsck

##### Run a file system check on your next boot.

   su do touch /forcefsck

##### Install 4 new package files

   su do dpkg -i `ls -tr *.deb | tail -n4`

##### how to scp to another pc on network

   su do scp <file or folder> <name of pc 1>@<IP of pc 2>:

##### Mount a truecrypt drive from a file from the command line non-interactively

   su  -c "truecrypt non-interactive  truecrypt-file cryptshare -p PASSWORD"

##### what model of computer I'm using?

   su do dmidecode -s system-product-name

##### Use tcpdump to monitor all DNS queries and responses

   su do tcpdump -i en0 'udp port 53'

##### list all world-writeable Linux files

   su do find / -perm -2 ! -type l -ls

##### tcptraceroute alternative for udp packets

   su do hping3 -TV tr-stop -n -2 -p 53 ns1.server.tld

##### To recycle the JVM from application server, steps are as follows:-

   su  - wsadmin

##### Capture all tcp and udp packets in LAN, except packets coming to localhost (192.168.1.2)

   su do tcpdump -n -i eth0 -w data.pcap -v tcp or udp and 'not host 192.168.1.2'

##### mac address change

   su do ifconfig mlan0 down; sudo ifconfig mlan0 hw ether 00:10:10:10:08:88; sudo ifconfig mlan0 up;

##### Getting OpenPGP keys for Launchpad PPAs on Debian based systems from behind a firewall

   su do apt-key adv keyserver hkp://keys.gnupg.net:80 recv-keys [key to get here]

##### Change your timezone

   su do cp /usr/share/zoneinfo/Europe/Paris /etc/localtime

##### list files/directories in current directory  sorted by file size in MB

   su do du -sm * | sort -n

##### Run the last command as root

   su do $(history -p !!)

##### Let yourself read the logs under /var/log/apache2 (on Debian)

   su do usermod -a -G adm "$(whoami)"

##### Check if loopback network interface is working

   su do tcpdump -i lo -nv ip

##### OS X: flush DNS cache

   su do killall -HUP mDNSResponder

##### Change my shell to zsh

   su do usermod -s `which zsh` `whoami`

##### Make Ubuntu Phone root image read/write until reboot

   su do mount -o remount,rw /

##### Switch to rc-proposed channel on Ubuntu Phone - Nexus 4

   su do system-image-cli switch ubuntu-touch/rc-proposed/ubuntu build 0

##### Clear disk space by retaining only currently running Docker containers and only currently required Docker images.

   su do docker rm $(sudo docker ps -q -f status=exited); sudo docker rmi $(sudo docker images -q -f dangling=true)

##### Displays All TCP and UDP Connections

   su do netstat|head -n2|tail -n1 && sudo netstat -a|grep udp && echo && sudo netstat|head -n2|tail -n1 && sudo netstat -a|grep tcp

##### Recursive Ownership Change

   su do chown -R user2:user2 /../../somedirectory

##### check to see what is running on a specific port number

   su do netstat -tulpn | grep :8080

##### recursive permission set for xampp apache user nobody

   su do chown -R nobody:admin /Applications/XAMPP/xamppfiles/htdocs/

##### url sniffing

   su do urlsnarf -i wlan0

##### Update iptables firewall with a temp ruleset

   su do iptables-restore < /etc/iptables.test.rules

##### Add Ubuntu Launchpad PPA and its PGP keys at the same time

   su do add-apt-repository ppa:PPA_TO_ADD

##### Uninstall all MacPorts that are no longer active

   su do port installed | grep -v 'active\|The' | xargs sudo port uninstall

##### Install a remote RPM

   su do rpm -if "http://rpm_server/rpm_repo/this-app.rpm"

##### Once Guest Additions are installed (Virtualbox), we need to make sure that the various components of this software are loaded automatically each time the system boots.

   su do nano /etc/modules-load.d/virtualbox.conf

##### Use this command to reboot the pc in linux

   su do reboot

##### Enable lxdm login manager in linux

   su do systemctl enable lxdm

##### tail all logs opened by all java processes

   su do ls -l $(eval echo "/proc/{$(echo $(pgrep java)|sed 's/ /,/')}/fd/")|grep log|sed 's/[^/]* //g'|xargs -r tail -f

##### Login as another user in shell

   su  <username>

##### restart Bluetooth from terminal

   su do service bluetooth restart

##### Discover media files from a web page

   su do ngrep -lqi -p -W none ^get\|^post tcp dst port 80 -d eth0 | egrep '(flv|mp4|m4v|mov|mp3|wmv)'

##### Upgrade Node.js via NPM

   su do npm cache clean -f | sudo npm install -g n | sudo n stable

##### Enabling some DVD playback enhancements in Ubuntu

   su do sh /usr/share/doc/libdvdread4/install-css.sh

##### Disable annoying sound emanations from the PC speaker

   su do rmmod pcspkr

##### Print the local ip on a wireless connection

   su do ifconfig wlan0 | grep inet | awk 'NR==1 {print $2}' | cut -c 6-

##### Remove all unused kernels with apt-get

   su do aptitude remove -P $(dpkg -l|awk '/^ii  linux-image-2/{print $2}'|sed 's/linux-image-//'|awk -v v=`uname -r` 'v>$0'|sed 's/-generic//'|awk '{printf("linux-headers-%s\nlinux-headers-%s-generic\nlinux-image-%s-generic\n",$0,$0,$0)}')

##### Mac OS X (laptops ??) only :  control hibernation state more easily from Terminal.app

   su do pmset -a hibernatemode 1

##### if you want the script run at reboot

   su do update-rc.d -f nomemioscript start 99 2 3 4 5

##### if you want the script run at shutdown

   su do update-rc.d -f nomescript stop 90 0 6

##### Enable passwordless login

   su do usermod -p $(mkpasswd '') user_id

##### View your motherboard's ACPI tables (in Debian & Ubuntu)

   su do aptitude -y install iasl && sudo cat /sys/firmware/acpi/tables/DSDT > dsdt.dat && iasl -d dsdt.dat

##### Clear Cached Memory on Ubuntu

   su do sync && sudo echo 3 | sudo tee /proc/sys/vm/drop_caches

##### ...if you have sudo access, you could just install ssh-copy-id (Mac users: take note.  this is how you install ssh-copy-id )

   su do curl "http://hg.mindrot.org/openssh/raw-file/c746d1a70cfa/contrib/ssh-copy-id" -o /usr/bin/ssh-copy-id  &&  sudo chmod 755 /usr/bin/ssh-copy-id

##### Shred an complete disk, by overwritting its content 10 times

   su do shred -zn10 /dev/sda

##### List your sudo rights

   su do -l

##### Mount a Windows share on the local network (Ubuntu)

   su do mount -t cifs //$ip_or_host/$sharename /mnt

##### Mount a Windows share on the local network (Ubuntu) with user rights and use a specific samba user

   su do mount -t cifs -o credentials=/path/to/credenials //hostname/sharename /mount/point

##### Show live HTTP requests being made on OS X

   su do tcpdump -i en1 -n -s 0 -w - | grep -a -o -E "Host\: .*|GET \/.*"

##### how to Disable a guest user from the login panel Xubuntu

   su do sh -c 'printf "[SeatDefaults]\nallow-guest=false\n" >/usr/share/lightdm/lightdm.conf.d/50-no-guest.conf'; sudo sh -c 'printf "[SeatDefaults]\nallow-guest=false\n" >/usr/share/lightdm/lightdm.conf.d/50-guest-wrapper.conf'

##### List ReverseSSH ports

   su do lsof -i -n | grep sshd | grep sshuser | grep :[PORT-RANGE] | grep -v IPv6 | awk -F\: '{print $2}' | grep -v http | awk -F" " '{print $1}'

##### Check if TCP port 25 is open

   su do lsof -iTCP:25

##### Get ethX mac addresses

   su do ifconfig -a | grep eth | grep HW | cut -d' ' -f11

##### Fix grub2 boot failure using live cd

   su do grub-install root-directory=/media/ubuntu /dev/sda

##### set the time of system

   su do date mmddhhxxyyyy

##### Changing Hostname on Mac OS X

   su do scutil set HostName MY_NEW_HOSTNAME

##### don't auto run gdm

   su do update-rc.d -f gdm remove

##### open ports with iptables

   su do iptables -I INPUT -p tcp dport 3000 -j ACCEPT

##### I am using a desktop?

   su do hal-get-property udi /org/freedesktop/Hal/devices/computer key 'system.formfactor'

##### Get the size of all the directories in current directory (Sorted Human Readable)

   su do du -ks $(ls -d */) | sort -nr | cut -f2 | xargs -d '\n' du -sh 2> /dev/null

##### ARP Scan

   su do arp-scan -l

##### 32 bits or 64 bits?

   su do lshw -C cpu|grep width

##### uninstall Air on Ubuntu

   su do dpkg -P  $(dpkg -l | grep -i adobeair)

##### Convert .wav audio files to .gsm forman

   su do sox <file name>.wav -r 8000 <file name>.gsm

##### Convert .wav audio files to .gsm format

   su do sox <file name>.wav -r 8000 <file name>.gsm

##### Save iptables firewall info

   su do iptables-save > /etc/iptables.up.rules

##### Mount an external FAT32 USB HDD

   su do mount -t vfat /dev/sdb1 /mnt/sdb1

##### sudo for launching gui apps in background

   su do ls ; sudo gedit /etc/passwd &

##### Suspend to ram

   su do /etc/acpi/sleep.sh sleep

##### Send packet by ping

   su do ping -f -c 999 -s 4500 target.com

##### Mount a Windows share on the local network (Ubuntu) with user rights and use a specific samba user

   su do mount -t cifs -o user,username="samba username" //$ip_or_host/$sharename /mnt

##### detect the Super I/O chip on your computer, tell you at which configuration port it is located and can dump all the register contents.

   su periotool

##### Enable Hibernate in OS X

   su do pmset -a hibernatemode 1

##### Shows users and 'virtual users' on your a unix-type system

   su do lsof|sed 's/  */ /g'|cut -f3 -d' '|sort -u

##### Wait a moment and then Power off

   su do shutdown 3600 -P

##### Find files that have been modified on your system in the past 60 minutes

   su do find / -mmin 60 -type f

##### Stop procrastination on Facebook.com

   su do sh -c "echo '127.0.0.1 www.facebook.com' >> /etc/hosts"

##### Chmod directories to add executable & read permission to the group safely

   su do chmod -R g=u-w,g+X *

##### Remove packages by pattern on debian and based systems

   su do apt-get remove purge `dpkg -l | awk '{print $2}' | grep gnome` && apt-get autoremove

##### convert .rpm to .deb using alien

   su do alien to-deb Your_PackAge.rpm

##### Starting the VPN service

   su do service vpnclient_init start

##### add fn brightness on notebook

   su do update-grub

##### reloads sound when it stop playing

   su do alsa force-reload

##### detected hardware and boot messages

   su do dmesg

##### Use a decoy while scanning ports to avoid getting caught by the sys admin :9

   su do nmap -sS 192.168.0.10 -D 192.168.0.2

##### Install NMAP 5.0 ,Short and sweet command to do it

   su do wget -c "http://nmap.org/dist/nmap-5.00.tar.bz2" && bzip2 -cd nmap-5.00.tar.bz2 | tar xvf - && cd nmap-5.00 && ./configure && make && sudo make install

##### Install a deb package

   su do dpkg -i packagename.deb

##### Prefetch like apple devices

   su do apt-get install preload

##### Clean upgrade of Ubuntu

   su do sh -c "apt-get update;apt-get dist-upgrade;apt-get autoremove;apt-get autoclean"

##### installing sublime-text-2 on Ubuntu 10.04

   su do -i; add-apt-repository ppa:webupd8team/sublime-text-2; apt-get update; apt-get install sublime-text-2

##### analyze traffic remotely over ssh w/ wireshark

   su do ssh -Y remoteuser@remotehost sudo wireshark

##### Start a new shell as root

   su do su

##### restart network manager

   su do /etc/init.d/networking restart

##### Adobe Updater Crashes on Mac OS X Fix

   su do /Applications/Utilities/Adobe\ Utilities.localized/Adobe\ Updater5/Adobe\ Updater.app/Contents/MacOS/Adobe\ Updater

##### Disable Ubuntu Notification

   su do chmod -x /usr/lib/notify-osd/notify-osd

##### How To Install Microsoft Text Fonts In Ubuntu Linux

   su do apt-get install msttcorefonts

##### What is the sound of your memory ?

   su do cat /dev/mem > /dev/dsp

##### system update

   su do apt-get update && sudo apt-get upgrade && sudo apt-get clean

##### Determine what an process is actually doing

   su do strace -pXXXX -e trace=file

##### connect via ssh using mac address

   su do arp -s 192.168.1.200  00:35:cf:56:b2:2g temp && ssh root@192.168.1.200

##### Run the previous command with sudo

   su do !!

##### Simulate slow network connection locally

   su do tc qdisc add dev lo root netem delay 500ms

##### Does a full update and cleaning in one line

   su do apt-get update && sudo apt-get upgrade && sudo apt-get autoclean && sudo apt-get autoremove

##### View files opened by a program on startup and shutdown

   su do lsof -rc command >> /tmp/command.txt

##### Disable the ping response

   su do -s "echo 1 > /proc/sys/net/ipv4/icmp_echo_ignore_all"

##### Protect directory from an overzealous rm -rf *

   su do chattr -R +i dirname

##### Change tha mac adresse

   su do ifconfig eth0 hw ether 00:01:02:03:04:05

##### Refresh the cache of font directory

   su do fc-cache -f -v

##### what model of computer I'm using?

   su do hal-get-property udi /org/freedesktop/Hal/devices/computer key 'system.hardware.product'

##### Remount root in read-write mode.

   su do mount -o remount,rw /

##### Clone IDE Hard Disk

   su do dd if=/dev/hda1 of=/dev/hdb2

##### A fun thing to do with ram is actually open it up and take a peek. This command will show you all the string (plain text) values in ram

   su do strings /dev/mem

##### network usage per process

   su do nethogs eth0

##### Install a LAMP server in a Debian based distribution

   su do tasksel install lamp-server

##### set your ssd disk as a non-rotating medium

   su do echo 0 > /sys/block/sdb/queue/rotational

##### dd with progress bar and statistics to gzipped image

   su do dd if=/dev/sdc bs=4096 | pv -s  `sudo mount /dev/sdc /media/sdc && du -sb /media/sdc/ |awk '{print $1}' && sudo umount /media/sdc`| sudo dd bs=4096 of=~/USB_BLACK_BACKUP.IMG

##### Erase to factory a pendrive, disk or memory card, and watch the progress

   su do shred -vz -n 0 /dev/sdb

##### Sync the date of one server to that of another.

   su do date -s  "$(ssh user@server.com "date -u")"

##### Switch to a user with "nologin" shell

   su do -u username bash

##### Auto Get Missing Launchpad Keys

   su do apt-get update 2> /tmp/keymissing; for key in $(grep "NO_PUBKEY" /tmp/keymissing |sed "s/.*NO_PUBKEY //"); do echo -e "\nProcessing key: $key"; gpg keyserver pool.sks-keyservers.net recv $key && gpg export armor $key |sudo apt-key add -; done

##### Cap apt-get download speed

   su do apt-get -o Acquire::http::Dl-Limit=25 install <package>

##### automount samba shares as devices in /mnt/

   su do vi /etc/fstab; Go//smb-share/gino /mnt/place smbfs defaults,username=gino,password=pass 0 0<esc>:wq; mount //smb-share/gino

##### find unreadable file

   su do -u apache find . -not -readable

##### show framebuffer console modes to use in grub vga option

   su do hwinfo framebuffer

##### Find files with root setuids settings

   su do find / -user root -perm -4000 -print

##### Mac Sleep Timer

   su do pmset schedule sleep "08/31/2009 00:00:00"

##### BackTrack Repos

   su do apt-add-repository 'deb http://archive.offensive-security.com pwnsauce main microverse macroverse restricted universe multiverse' && wget -q http://archive.offensive-security.com/backtrack.gpg -O- | sudo apt-key add -

##### List all process running a specfic port

   su do lsof -i :<port>

##### Brute force discover

   su do zcat /var/log/auth.log.*.gz | awk '/Failed password/&&!/for invalid user/{a[$9]++}/Failed password for invalid user/{a["*" $11]++}END{for (i in a) printf "%6s\t%s\n", a[i], i|"sort -n"}'

##### Limit the cpu usage of a process

   su do cpulimit -p pid -l 50

##### Cleanup Docker

   su do docker rm $(docker ps -a -q); sudo docker rmi $(docker images -q)

##### Run a command as root, with a delay

   su do bash -c "sleep 1h ; command"

##### Install an mpkg from the command line on OSX

   su do installer -pkg /Volumes/someapp/someapp.mpkg -target /

##### Show the UUID of a filesystem or partition

   su do vol_id -u /dev/sda1

##### Cleanup debian/ubuntu package configurations

   su do dpkg-reconfigure -a

##### Install Linux Kernel Headers

   su do apt-get install linux-headers-$(uname -r)

##### sniff network traffic on a given interface and displays the IP addresses of the machines communicating with the current host (one IP per line)

   su do tcpdump -i wlan0 -n ip | awk '{ print gensub(/(.*)\..*/,"\\1","g",$3), $4, gensub(/(.*)\..*/,"\\1","g",$5) }' | awk -F " > " '{print $1"\n"$2}'

##### Speed up upgrades for a debian/ubuntu based system.

   su do aptitude update; sudo apt-get -y print-uris upgrade | egrep -o -e "http://[^\']+" | sudo aria2c -c -d /var/cache/apt/archives -i -; sudo aptitude -y safe-upgrade

##### Measure, explain and minimize a computer's electrical power consumption

   su do powertop

##### Find all files with root SUID or SGID executables

   su do find / -type f \( -perm /4000 -a -user root \) -ls -o \( -perm /2000 -a -group root \) -ls

##### Run the last command as root

   su  -c "!!"

##### Youtube-dl gone stale on you/stopped working (Ubuntu)?

   su do youtube-dl -U

##### Disable WoL on eth0

   su do ethtool -s eth0 wol d

##### list block devices

   su do lsblk -o name,type,fstype,label,partlabel,model,mountpoint,size

##### Mount Fat USB with RWX

   su do mount -t vfat -o umask=000,uid=YOUR_UID,gid=users /dev/sdb1 /media/usb

##### Watch memcache traffic

   su do tcpdump -i eth0 -s 65535 -A -ttt port 11211

##### dd with progress bar and statistics

   su do dd if=/dev/sdc bs=4096 | pv -s 2G | sudo dd bs=4096 of=~/USB_BLACK_BACKUP.IMG

##### Remove all unused kernels with apt-get

   su do apt-get remove $(dpkg -l|awk '/^ii  linux-image-/{print $2}'|sed 's/linux-image-//'|awk -v v=`uname -r` 'v>$0'|sed 's/-generic*//'|awk '{printf("linux-headers-%s\nlinux-headers-%s-generic*\nlinux-image-%s-generic*\n",$0,$0,$0)}')

##### Router discovery

   su do arp-scan 192.168.1.0/24 -interface eth0

##### install all archive file type apps in ubuntu

   su do apt-get install p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller

##### Mac OS X: remove extra languages to save over 3 GB of space.

   su do find / -iname "*.lproj" -and \! -iname "en*" -print0 | tee /dev/stderr | sudo xargs -0 rm -rfv

##### To get  internet connection information .

   su do /bin/netstat -tpee

##### Set Time Zone in Ubuntu

   su do dpkg-reconfigure tzdata

##### Show an application's environment variables

   su do sed 's/\o0/\n/g' "/proc/$(pidof -x firefox)/environ" ;# replace firefox

##### How many Linux and Windows devices are on your network?

   su do nmap -F -O 192.168.1.1-255 | grep "Running: " > /tmp/os; echo "$(cat /tmp/os | grep Linux | wc -l) Linux device(s)"; echo "$(cat /tmp/os | grep Windows | wc -l) Window(s) devices"

##### dd with progress bar and statistics

   su do pv -tpreb /path/to/source | sudo dd bs=4096 of=/path/to/destination

##### Get a shell with a not available account

   su  - <user> -s /bin/sh -c "/bin/sh"

##### GRUB2: set Super Mario as startup tune

   su do bash -c 'echo "GRUB_INIT_TUNE=\"480 165 2 165 2 165 3 554 1 587 1 554 2 370 1 554 1 523 2 349 1 523 1 494 3 165 2 165 2 165 2\"" >> /etc/default/grub && update-grub'

##### Determine whether a CPU has 64 bit capability or not

   su do dmidecode type=processor | grep -i -A 1 charac

##### Ad blocking on Ubuntu phone/tablet with hosts file

   su do mount -o remount,rw / && sudo cp /etc/hosts /etc/hosts.old && wget http://winhelp2002.mvps.org/hosts.txt && cp /etc/hosts ~/ && cat hosts.txt >> hosts && sudo cp hosts /etc/hosts

##### Lists the supported memory types and how much your board can support.

   su do dmidecode -t 5,16

##### list all opened ports on host

   su do lsof -P -i -n -sTCP:LISTEN

##### Benchmark a hard drive

   su do hdparm -Tt /dev/sda

##### Disable sleep mode via cli and systemd (Centos, Debian Ubuntu?)

   su do systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target

##### Remove all old kernels

   su do apt-get purge $(dpkg -l linux-{image,headers}-"[0-9]*" | awk '/ii/{print $2}' | grep -ve "$(uname -r | sed -r 's/-[a-z]+//')")

##### create an emergency swapfile when the existing swap space is getting tight

   su do dd if=/dev/zero of=/swapfile bs=1024 count=1024000;sudo mkswap /swapfile; sudo swapon /swapfile

##### Make sudo forget password instantly

   su do -K

##### Root shell

   su do -i

##### Move all files between to date

   su do find . -maxdepth 1 -cnewer olderFilesNameToMove -and ! -cnewer newerFileNameToMove -exec mv -v {} /newDirectory/ \;

##### Find the fastest server to disable comcast's DNS hijacking

   su do netselect -v -s3 $(curl -s http://dns.comcast.net/dns-ip-addresses2.php | egrep -o '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+' | sort | uniq)

##### Fix VirtualBox error

   su do usermod -a -G vboxusers <username>

##### Change the default editor for modifying the sudoers list.

   su do update-alternatives config editor

##### Install a Firefox add-on/theme to all users

   su do firefox -install-global-extension /path/to/add-on

##### To find the count of each open file on a system (that supports losf)

   su do lsof | awk '{printf("%s %s %s\n", $1, $3, $NF)}' | grep -v "(" | sort -k 4 | gawk '$NF==prv{ct++;next} {printf("%d %s\n",ct,$0);ct=1;prv=$NF}' | uniq | sort -nr

##### Suspend to ram

   su do pm-suspend

##### How to search for files and open all of them in tabbed vim editor.

   su do find / -type f -name config.inc.php -exec vim -p {} +

##### Debian: Mark all dependent packages as manualy installed.

   su do aptitude unmarkauto $(apt-cache depends some-deb-meta-package-name | grep Depends | cut -d: -f2)

##### Install Restricted Multimedia Codecs in Ubuntu 14.04

   su do apt-get install libavcodec-extra

##### Show the key code for keyboard events include the Fn keys

   su do showkey -k

##### get diskusage of files modified during the last n days

   su do find /var/log/ -mtime -7 -type f | xargs du -ch | tail -n1

##### Drop or block attackers IP with null routes

   su do route add xxx.xxx.xxx.xxx gw 127.0.0.1 lo

##### View user activity per directory.

   su do lsof -u someuser -a +D /etc

##### Limit bandwidth usage by apt-get

   su do apt-get -o Acquire::http::Dl-Limit=30 upgrade

##### Setting reserved blocks percentage to  1%

   su do tune2fs -m 1 /dev/sda4

##### Install Linux Kernel Headers on Debian-based systems

   su do apt-get install linux-headers-`uname -r`

##### Rolling upgrades via aptitude

   su do sh -c "aptitude update; aptitude -DrVWZ full-upgrade; aptitude autoclean; exit"

##### Null a file with sudo

   su do bash -c "> /var/log/httpd/access_log"

##### apt-get upgrade with bandwidth limit

   su do apt-get -o Acquire::http::Dl-Limit=20 -o Acquire::https::Dl-Limit=20 upgrade -y

##### remove oprhan package on debian based system

   su do deborphan | xargs sudo apt-get -y remove purge

##### Reinstall Grub

   su do grub-install recheck /dev/sda1

##### Get the Volume labels all bitlocker volumes had before being encrypted

   su do echo "BitLocker Volume labels:" && sudo dislocker-find | xargs -I{} sh -c 'echo -n "{} ->+ " ; sudo dislocker-metadata -V {} | grep string' | sed 's/+.*string://' | sed "s/'[^ ]* /\"/g" | sed 's/\ [^ ]*$/"/'

##### purge all packages marked with 'rc'

   su do dpkg purge `dpkg -l | awk '/^r/{print $2}'`

##### View any already in progress copy command in detail

   su do lsof -p1234 | grep -E "(3r|4w).*REG"

##### cpu info

   su do dmidecode -t processor

##### Recover deleted Binary files

   su do foremost -i /dev/sda -o /recovery

##### Write a listing of all directories and files on the computer to a compressed file.

   su do ls -RFal / | gzip > all_files_list.txt.gz

##### Adding a startup script to be run at bootup Ubuntu

   su do update-rc.d <scriptname> defaults

##### Run command from another user and return to current

   su  - $user -c <command>

##### Find the 10 users that take up the most disk space

   su do -s du -sm /Users/* | sort -nr | head -n 10

##### Mount a VMware virtual disk (.vmdk) file on a Linux box

   su do mount vmware-server-flat.vmdk /tmp/test/ -o ro,loop=/dev/loop1,offset=32768 -t ntfs

##### Set blanket packet/second limit on network interface for Ubuntu VPS server

   su do iptables -A INPUT -m limit limit 2000/sec -j ACCEPT && sudo iptables -A INPUT -j DROP

##### Kill all processes that listen to ports begin with 50 (50, 50x, 50xxx,...)

   su do netstat -plnt | awk '($4 ~ /:50$/){sub(/\/.*/, "", $7); system("sudo kill " $7)}'

##### Print the detailed statistics of transferred bytes by the firewall rules

   su do iptables -L -nv

##### Restrict the use of dmesg for current user/session

   su do sh -c 'echo 1 > /proc/sys/kernel/dmesg_restrict'

##### Watch postgresql calls from your application on localhost

   su do tcpdump -nnvvXSs 1514 -i lo0 dst port 5432

##### Change attributes of files so you can edit them

   su do chattr -i <file that cannot be modified>

##### Check tcp-wrapping support

   su pportsWrap(){ ldd `which ${1}` | grep "libwrap" &>/dev/null && return 0 || return 1; }

##### view the system console remotely

   su do cat /dev/vcs1 | fold -w 80

##### Browse system RAM in a human readable form

   su do cat /proc/kcore | strings | awk 'length > 20' | less

##### Backup your hard drive with dd

   su do dd if=/dev/sda of=/media/disk/backup/sda.backup

##### Upgrading packages.  Pacman can update all packages on the system with just one command. This could take quite a while depending on how up-to-date the system is. This command can synchronize the repository databases and update the system's packages.

   su do pacman -Syu

##### Install a new kernel in Manjaro linux

   su do mhwd-kernel linux00

##### Clean pacman cache in arch linux, manjaro linux

   su do pacman -Scc

##### find unreadable file

   su do -u apache find . -not -perm /o+r

##### Get all available packages on Ubuntu (or any distro that uses apt)

   su do apt-cache dumpavail | grep Package | cut -d ' ' -f 2 > available.packages

##### Startup a VPN connection through command line

   su do nmcli con up/down id vpn-name

##### Preserve user variables when running commands with sudo.

   su do -E rpm -Uvh "http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm"

##### Gathering all MAC's in your local network

   su do arp-scan interface=eth0 -l

##### Display standard information about device

   su do  ethtool -i eth0

##### Fix for error perl: warning: Setting locale failed.

   su do locale-gen en_GB.UTF-8 && sudo locale-gen purge && sudo dpkg-reconfigure locales

##### A fun thing to do with ram is actually open it up and take a peek. This command will show you all the string (plain text) values in ram

   su do dd if=/dev/mem | cat | strings

##### A fun thing to do with ram is actually open it up and take a peek. This command will show you all the string (plain text) values in ram

   su do dd if=/dev/mem | cat | strings

##### easily trace all Nginx processes

   su do strace -e trace=network -p `pidof nginx | sed -e 's/ /,/g'`

##### Spoof your wireless MAC address on OS X to 00:e2:e3:e4:e5:e6

   su do ifconfig en1 ether 00:e2:e3:e4:e5:e6

##### Find installed network devices

   su do lshw -C network

##### Enable verbose boot in Mac OS X Open Firmware

   su do nvram boot-args="-v"

##### swap the java version being used

   su do update-alternatives config java

##### Print all open regular files sorted by the number of file handles open to each.

   su do lsof | egrep 'w.+REG' | awk '{print $10}' | sort | uniq -c | sort -n

##### USE WITH CAUTION: perminately delete old kernel packages

   su do apt-get remove purge $(dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d')

##### Fix Ubuntu's Broken Sound Server

   su do killall -9 pulseaudio; pulseaudio >/dev/null 2>&1 &

##### Check Ram Speed and Type in Linux

   su do dmidecode type 17 | more

##### Mount a truecrypt drive from a file from the command line interactively

   su do truecrypt <truecrypt-file> <mount-point>

##### start a VNC server for another user

   su  -c "vncserver -depth 32 -geometry 1024x768" username

##### Get the size of all the directories in current directory

   su do du -sh $(ls -d */) 2> /dev/null

##### Change user within ssh session retaining the current MIT cookie for X-forwarding

   su  username -c "xauth add ${HOSTNAME}/unix:${DISPLAY//[a-zA-Z:_-]/} $(xauth list | grep -o '[a-zA-Z0-9_-]*\ *[0-9a-zA-Z]*$'); bash"

##### take a screenshot of a webpage

   su do xvfb-run server-args="-screen 0, 1024x768x24" ./webkit2png.py -o google.png http://www.google.com

##### Export MySQL tables that begin with a string

   su do mysql -sNe 'show tables like "PREFIX_%"' DBNAME | xargs sudo mysqldump DBNAME > /tmp/dump.sql

##### Wich program is listen on port OSX

   su do lsof -i -n -P | grep TCP

##### Get Dell Service Tag Number from a Dell Machine

   su do dmidecode | grep Serial\ Number | head -n1

##### Remove any RPMs matching a pattern

   su do rpm -e `rpm -qa | grep keyword`

##### Check if you work on a virtual/physical machine in Linux

   su do dmidecode | grep Product

##### run last command with root

   su do !!

##### How to speedup the Ethernet device

   su do ethtool -s eth0 speed 100 duplex full

##### Run the last command as root

   su do !-1

##### Fix the vi zsh bindings on ubuntu

   su do sed -iorig '/\(up\|down\)/s/^/#/' /etc/zsh/zshrc

##### Find all active ip's in a subnet

   su do arp-scan -I eth0 192.168.1.0/24

##### Change user, assume environment, stay in current dir

   su   user

##### Show DeviceMapper names for LVM Volumes (to disambiguate iostat logs, etc)

   su do lvdisplay |awk '/LV Name/{blockdev=$3} /Block device/{bdid=$3; sub("[0-9]*:","dm-",bdid); print bdid,blockdev;}'

##### change user & preserver environment (.bashrc&co)

   su  - -m -p git

##### Display error pages in report format

   su do awk '($9 ~ /404/)' /var/log/httpd/www.domain-access_log | awk '{print $2,$9,$7,$11}' | sort | uniq -c

##### Clean apt-get and gpg cache and keys

   su do gpg refresh-keys; sudo apt-key update; sudo rm -rf /var/lib/apt/{lists,lists.old}; sudo mkdir -p /var/lib/apt/lists/partial; sudo apt-get clean all; sudo apt-get update

##### Purge configuration files of removed packages on  debian based systems

   su do aptitude purge `dpkg get-selections | grep deinstall | awk '{print $1}'`

##### Show how old your linux OS installtion is

   su do tune2fs -l $(df -h / |(read; awk '{print $1; exit}')) | grep -i created

##### what model of computer I'm using?

   su do dmidecode | grep Product

##### List open sockets protocol/address/port/state/PID/program name

   su do netstat -punta

##### list any Linux files without users or groups

   su do find / \( -nouser -o -nogroup \)

##### Mark packages installed with build-dep for autoremove (on Debian/Ubuntu)

   su do aptitude markauto $(apt-cache showsrc PACKAGE | grep Build-Depends | perl -p -e 's/(?:[\[(].+?[\])]|Build-Depends:|,|\|)//g')

##### Safely remove old unused kernels in Ubuntu/Debian

   su do aptitude purge ~ilinux-image-\[0-9\]\(\!`uname -r`\)

##### Make a file not writable / immutable by root

   su do chattr +i <file>

##### Throttling Bandwidth On A Mac

   su do ipfw pipe 1 config bw 50KByte/s;sudo ipfw add 1 pipe 1 src-port 80

##### Force GNU/Linux keyboard settings, layout and configuration

   su do dpkg-reconfigure keyboard-configuration

##### Display IP : Count of failed login attempts

   su do lastb | awk '{if ($3 ~ /([[:digit:]]{1,3}\.){3}[[:digit:]]{1,3}/)a[$3] = a[$3]+1} END {for (i in a){print i " : " a[i]}}' | sort -nk 3

##### hibernate

   su do pm-hibernate

##### Use tagged vlans

   su do vconfig add eth0 [VID]

##### dhcdrop - testing/suppression/tracking false DHCP servers

   su do dhcdrop -i eth1 -y -l 00:11:22:33:44:55

##### Remove old kernels and header data in Ubuntu/Debian

   su do apt-get -y purge $(dpkg get-selections | awk '((/^linux-/) && (/[0-9]\./) && (!/'"`uname -r | sed "s/-generic//g"`"'/)) {print $1}')

##### Installs lamp on Ubuntu

   su do apt-get  install lamp-server^ phpmyadmin

##### Install build dependencies for a given package

   su do apt-get build-dep rhythmbox

##### Open Sublime-text in current directory

   su bl $(pwd)

##### Kill all processes that listen to ports begin with 50 (50, 50x, 50xxx,...)

   su do netstat -plnt | grep :50 | awk '{print $7}' | awk -F/ '{print $1}' | xargs kill -9

##### Route some ips (or domain names) over VPN

   su do /sbin/route add -host 192.168.12.50 -interface ppp0

##### Kill all processes belonging to a user

   su do -u $USER kill -9 -1

##### the first command i type on fresh ubuntu

   su do apt-get install aptitude

##### Add another tty device using mknod command

   su do mknod /dev/ttyS4 c 4 68

##### Clear RAM cache

   su  -c 'sync; echo 3 > /proc/sys/vm/drop_caches'

##### Hibernate after 30minutes

   su do bash -c "sleep 30m; pm-hibernate"

##### Get sunrise time for any city, by name

   su nrise() { city=${1-Seattle}; w3m "google.com/search?q=sunrise:$city" | sed -r '1,/^\s*1\./d; /^\s*2\./,$d; /^$/d' ;}

##### Ettercap MITM

   su do ettercap -T -Q -M arp -i wlan0 // //

##### macports update

   su do port selfupdate ; echo '-' ; sudo port upgrade outdated

##### Change directories using sudo

   su do bash -c "cd /PATH/TO/THE/DIRECTORY;bash"

##### sync repository and do install

   su do apt-fast update && sudo apt-fast -y dist-upgrade

##### Command used to sync arch ro manjaro mirrors

   su do pacman-mirrors -g

##### dpkg: purge all packages matching some name

   su do dpkg -P $(sudo dpkg -l yourPkgName* | awk '$2 ~ /yourPkgName.*/' | awk '$1 ~ /.i/' | awk '{print $2}')

##### Find directories with lots of files in them

   su do find / -type f | perl -MFile::Basename -ne '$counts{dirname($_)}++; END { foreach $d (sort keys %counts) {printf("%d\t%s\n",$counts{$d},$d);} }'|sort -rn | tee /tmp/sortedfilecount.out | head

##### To install guest additions in arch or manjaro linux, run the following command:

   su do pacman -S virtualbox-guest-utils

##### restart session

   su do restart lightdm

##### Delete duplicated dictionaries in spell check list

   su do find /usr/share/hunspell/ -lname '*' -delete

##### dpkg: purge all packages matching some name

   su do dpkg -P $(dpkg -l yourPkgName* | awk '$2 ~ /yourPkgName.*/ && $1 ~ /.i/ {print $2}')

##### Disabling Spotlight on Mac OS

   su do mdutil -a -i off

##### progress bar while using dd

   su do dd if=file.iso |pv| sudo dd of=/dev/sdX

##### make pretty the netstat output for listening services

   su do netstat -plntu inet | sort -t: -k2,2n | sort stable -t. -k 1,1n -k 2,2n -k 3,3n -k 4,4n | sort -s -t" " -k1,1

##### Change user's password

   su do passwd <username>

##### Look for the process bound to a certain port

   su do netstat -tulpn | grep :8080

##### List wireless clients connected to an access point

   su do netdiscover -r 192.168.1.0/24 -i wlo1

##### See who's connected to your network =D

   su do netdiscover -r 192.168.1.0/24 -iwlo1

##### Install mysql-2.8.1 rubygem on Mac OS X 10.6 (Snow Leopard)

   su do env ARCHFLAGS="-arch x86_64" gem install mysql

##### rescan SCSI bus

   su do apt-get install scsitools && sudo rescan-scsi-bus

##### Find all hidden files in a directory

   su do find . -name '.*' \( -type d -exec find {} \; -prune -o -print \)

##### Play music from pure data

   su do cat /usr/share/icons/*/*/* > /dev/dsp

##### A file's rpm-package details

   su mmpkg() { rpm -qfi "$@"; }

##### Switch on eeepc camera

   su do echo 1 > /proc/acpi/asus/camera

##### Startup Nessus and initialize plugins on backtrack5

   su do /opt/nessus/sbin/nessusd

##### Extract a .gz file with privilege

   su do sh -c 'gunzip -c source.gz > destination'

##### Backup /etc directory

   su do tar -zcvf $(hostname)-etc-back-`date +%d`-`date +%m`-`date +%y`.tar.gz /etc && sudo chown $USER:$USER $(hostname)-etc-back*

##### Flush DNS

   su do /etc/init.d/dns-clean

##### Twitter the geek way

   su do pip install rainbowstream && rainbowstream -iot

##### sudo for launching gui apps in background

   su do -b xterm

##### Delete all php package

   su do apt-get purge `dpkg -l | grep php| awk '{print $2}' |tr "\n" " "`

##### sudo ssh -D 88 -fN user@xxxx.no-ip.info

   su do ssh -D 88 -fN user@xxxx.no-ip.info

##### Send SNMP traps

   su do snmptrap -m ALL -v 2c -c public trapserver "" UCD-DEMO-MIB::ucdDemoPublic SNMPv2-MIB::sysLocation.0 s "Just here"

##### DD with progressbar using pv for backing up entire block device

   su do dd if=/dev/block/device bs=1MB | pv -s `sudo blockdev getsize64 /dev/block/device' | gzip -9 > output.img.gz

##### Berechtigungen nach einer Referenz ?ndern

   su do chmod reference=Referenz.foo Datei.foo

##### Find the mounted storages

   su do find . -name "syslog*.gz" -type f | xargs gzip -cd | grep "Mounted"

##### View all file descriptors owned by a process

   su do lsof -p `sudo ps aux | grep -i neo4j | grep -v grep | awk '{ print $2 }'`

##### Create a package list for offline download

   su do apt-get <apt-get command and options> print-uris -qq | sed -n "s/'\([^ ]\+\)' \([^ ]\+\) \([^ ]\+\) MD5Sum:\([^ ]\+\)/wget -c \1/p" > dowload_deb_list.txt

##### Show counts of messages in exim mail queue, grouped by recipient

   su do /usr/sbin/exim -bp | sed -n '/\*\*\* frozen \*\*\*/,+1!p' | awk '{print $1}' | tr -d [:blank:] | grep @ | sort | uniq -c | sort -n

##### Check if TCP port 25 is open

   su do lsof -iTCP:25 -sTCP:LISTEN

##### Total space used by open but deleted files

   su do lsof -nP | awk '/deleted/ { sum+=$8 } END { print sum }'

##### Find out which process uses an old lib and needs a restart after a system update

   su do lsof | grep 'DEL.*lib' | cut -f 1 -d ' ' | sort -u

##### MTR command line to show jitter and mimic network traffic

   su do mtr -s 1472 -B 0 -oLDRSWNBAWVJMXI <ip address>

##### Adding user to printer, after installing hp-lip (Debian)

   su do adduser [username] lp && sudo adduser [username] lpadmin && sudo hp-setup -i

##### Synchronize date and time with a server

   su do ntpdate serverip

##### creates a ppp link between my Ubuntu development machine and BeagleBoard running Android connected via USB

   su do `which adb` ppp "shell:pppd nodetach noauth noipdefault /dev/tty" nodetach noauth noipdefault notty 192.168.0.100:192.168.0.200

##### Find and sort by Resident Size of each process on the system in MB

   su do ps aux sort:rss | awk '{print $2"\t"$11":  "$6/1024" MB"}' | column -t | less

##### Sniff who are using wireless. Use wireshark to watch out.pcap :]

   su do ettercap -T -w out.pcap -i wlan0 -M ARP // //

##### Reboot to Windows (UEFI)

   su do efibootmgr bootnext `efibootmgr | sed -n "s/^Boot\([0-9]\{4\}\)\* Windows Boot Manager$/\1/p"` && reboot

##### Manage "legacy" service run control links

   su do find /etc/rc{1..5}.d -name S99myservice -type l -exec sh -c 'NEWFN=`echo {} | sed 's/S99/K99/'` ; mv -v {} $NEWFN' \;

##### resume other user's screen session via su, without pty error

   su do -iu {user} script -qc 'screen {screen_args}' /dev/null

##### Kill the X Server

   su do kill -9 $( ps -e | grep Xorg | awk '{ print $1 }' )

##### Stop Grooveshark destroying your CPU

   su do cpulimit -e Grooveshark -l 20

##### CPU Frequency/Speed Set

   su do cpupower frequency-set -g <frequency governor>

##### Set date and time

   su do date -s "26 OCT 2008 19:30:00"

##### Manual CPU Frequency/Speed/Clock Set

   su do cpupower frequency-set -f <frequency in MHz>

##### detect partitions

   su do file -bs /dev/sda | sed -e 's/.*partition 1\(.*\) code offset.*/partition 1\1/g' -e 's/\(.\);/\1\n/g'

##### Rename your Raspberry Pi

   su do sed -i 's/raspberrypi/pita1/' /etc/hosts /etc/hostname; sudo reboot

##### Installation Ksuperkey by one command in Kubuntu.

   su do apt-get install git gcc make libx11-dev libxtst-dev pkg-config -y && git clone https://github.com/hanschen/ksuperkey.git && cd ksuperkey && make && sudo mv ksuperkey /usr/bin/ksuperkey && cd ~ && rm -rf ksuperkey

##### Run skype using your GTK theme

   su do sed -i 's/Exec=skype %U/Exec=skype disable-cleanlooks -style GTK %U/' /usr/share/applications/skype.desktop

##### List partition superblocks

   su do dumpe2fs /dev/sda1 | grep superblock

##### Fix "Unknown media type in type" warnings when installing packages

   su do sh -c "rm /usr/share/mime/packages/kde.xml && update-mime-database /usr/share/mime"

##### Macports update and clean all packages

   su do port selfupdate && sudo port upgrade outdated && sudo port clean all installed && sudo port -f uninstall inactive

##### Information about RAM HW.

   su do dmidecode type 17

##### Install dpkg packages

   su do dpkg -i *.deb

##### Wait the set time and then Power off

   su do shutdown -h <hour:minute>

##### Null a file with sudo

   su do tee /path/to/file < /dev/null

##### Null a file with sudo

   su do tee /path/to/file < /dev/null

##### Fix Chromium browser not starting

   su do aa-complain /etc/apparmor.d/usr.bin.chromium-browser

##### Delete a certificate from the macOS security keychain

   su do security delete-certificate -c 1000-sans.badssl.com

##### Clear DNS cache on a mac

   su do dscacheutil -flushcache; sudo killall -HUP mDNSResponder

##### Unlock the software var/lib/dpkg/lock

   su do fuser -vki /var/lib/dpkg/lock; sudo dpkg configure -a

##### archlinux: remove a package completely from the system

   su do pacman -Rns packagename

##### Shutdown ubuntu

   su do shutdown -h now

##### Clear linux cache

   su do su; sync; echo 3 > /proc/sys/vm/drop_caches

##### nmap check port

   su do nmap -sU -p 53 8.8.8.8

##### creating an USB Image

   su do dd if=/your.img of=/dev/rdiskx bs=1m

##### Create a nifty overview of the hardware in your computer

   su do lshw -html > /tmp/hardware.html && xdg-open /tmp/hardware.html

##### Set APM_level for HDD to prevent frequent parking

   su do hdparm -B 200 /dev/sda

##### Access to a SVN repository on a different port

   su do svn co svn+ ciccio_diverso://root@192.160.150.151/svn-repo/progettino

##### Add a custom package repository to apt sources.list

   su do echo "package url" >> /etc/apt/sources.list

##### archlinux: updates repository mirrors according to most up to date mirrors, then speed

   su do reflector -l 5 -r -o /etc/pacman.d/mirrorlist

##### archlinux: clears package cache of uninstalled packages

   su do pacman -Sc

##### archlinux: clear the package cache of all packages

   su do pacman -Scc

##### Delete large amount of files matching pattern

   su do find . -name "*.csv" | xargs /bin/rm

##### archlinux: remove a package completely from the system.

   su do pacman -Rns packagename

##### Allows incoming traffic from specific IP address to port 80

   su do ufw allow proto tcp from 1.2.3.4 to any port 80

##### Create user

   su do useradd -U -m -s /bin/bash new_user

##### Make redirects to localhost via /etc/hosts more interesting

   su do socat TCP4-LISTEN:80,bind=127.0.0.1,fork EXEC:'echo "HTTP/1.1 503 Service Unavailable";'

##### print indepth hardware info

   su do dmidecode | more

##### MAMP: "Can't connect to local MySQL server through socket '/tmp/mysql.sock' (2)" solution

   su do ln -s /Applications/MAMP/tmp/mysql/mysql.sock /tmp/mysql.sock

##### Get all ProcID's for a given process

   su do <PROC_NAME> -aux |grep pals_ |tr -s " " |cut -d " " -f2

##### change directory permissions whithout changing file permissions recursive

   su do find foldername -type d -exec chmod 755 {} ";"

##### change file permissions whithout changing directory permissions recursive

   su do find foldername -type f -exec chmod 644 {} ";"

##### So you are not sure are connected and iither your router or ethernet card are not working.

   su do tcpdump -i eth0 -n port 67 and 68

##### Add user to group on OS X 10.5

   su do dscl localhost -append /Local/Default/Groups/admin GroupMembership username

##### Run the last command as root

   su do !!

##### Run the last command as root

   su do !!

##### Run a file system check on your next boot.

   su do touch /forcefsck

##### Disable annoying sound emanations from the PC speaker

   su do rmmod pcspkr

##### List your sudo rights

   su do -l

##### Get the size of all the directories in current directory (Sorted Human Readable)

   su do du -ks $(ls -d */) | sort -nr | cut -f2 | xargs -d '\n' du -sh 2> /dev/null

##### ARP Scan

   su do arp-scan -l

##### 32 bits or 64 bits?

   su do lshw -C cpu|grep width

##### Mount a Windows share on the local network (Ubuntu) with user rights and use a specific samba user

   su do mount -t cifs -o user,username="samba username" //$ip_or_host/$sharename /mnt

##### Find files that have been modified on your system in the past 60 minutes

   su do find / -mmin 60 -type f

##### Stop procrastination on Facebook.com

   su do sh -c "echo '127.0.0.1 www.facebook.com' >> /etc/hosts"

##### Use a decoy while scanning ports to avoid getting caught by the sys admin :9

   su do nmap -sS 192.168.0.10 -D 192.168.0.2

##### Determine what an process is actually doing

   su do strace -pXXXX -e trace=file

##### connect via ssh using mac address

   su do arp -s 192.168.1.200  00:35:cf:56:b2:2g temp && ssh root@192.168.1.200

##### Simulate slow network connection locally

   su do tc qdisc add dev lo root netem delay 500ms

##### Does a full update and cleaning in one line

   su do apt-get update && sudo apt-get upgrade && sudo apt-get autoclean && sudo apt-get autoremove

##### View files opened by a program on startup and shutdown

   su do lsof -rc command >> /tmp/command.txt

##### Disable the ping response

   su do -s "echo 1 > /proc/sys/net/ipv4/icmp_echo_ignore_all"

##### Protect directory from an overzealous rm -rf *

   su do chattr -R +i dirname

##### Change tha mac adresse

   su do ifconfig eth0 hw ether 00:01:02:03:04:05

##### Refresh the cache of font directory

   su do fc-cache -f -v

##### what model of computer I'm using?

   su do hal-get-property udi /org/freedesktop/Hal/devices/computer key 'system.hardware.product'

##### Remount root in read-write mode.

   su do mount -o remount,rw /

##### Clone IDE Hard Disk

   su do dd if=/dev/hda1 of=/dev/hdb2

##### A fun thing to do with ram is actually open it up and take a peek. This command will show you all the string (plain text) values in ram

   su do strings /dev/mem

##### network usage per process

   su do nethogs eth0

##### Install a LAMP server in a Debian based distribution

   su do tasksel install lamp-server

##### set your ssd disk as a non-rotating medium

   su do echo 0 > /sys/block/sdb/queue/rotational

##### dd with progress bar and statistics to gzipped image

   su do dd if=/dev/sdc bs=4096 | pv -s  `sudo mount /dev/sdc /media/sdc && du -sb /media/sdc/ |awk '{print $1}' && sudo umount /media/sdc`| sudo dd bs=4096 of=~/USB_BLACK_BACKUP.IMG

##### Erase to factory a pendrive, disk or memory card, and watch the progress

   su do shred -vz -n 0 /dev/sdb

##### Sync the date of one server to that of another.

   su do date -s  "$(ssh user@server.com "date -u")"

##### Switch to a user with "nologin" shell

   su do -u username bash

##### Auto Get Missing Launchpad Keys

   su do apt-get update 2> /tmp/keymissing; for key in $(grep "NO_PUBKEY" /tmp/keymissing |sed "s/.*NO_PUBKEY //"); do echo -e "\nProcessing key: $key"; gpg keyserver pool.sks-keyservers.net recv $key && gpg export armor $key |sudo apt-key add -; done

##### Cap apt-get download speed

   su do apt-get -o Acquire::http::Dl-Limit=25 install <package>

##### automount samba shares as devices in /mnt/

   su do vi /etc/fstab; Go//smb-share/gino /mnt/place smbfs defaults,username=gino,password=pass 0 0<esc>:wq; mount //smb-share/gino

##### find unreadable file

   su do -u apache find . -not -readable

##### show framebuffer console modes to use in grub vga option

   su do hwinfo framebuffer

##### Find files with root setuids settings

   su do find / -user root -perm -4000 -print

##### Mac Sleep Timer

   su do pmset schedule sleep "08/31/2009 00:00:00"

##### BackTrack Repos

   su do apt-add-repository 'deb http://archive.offensive-security.com pwnsauce main microverse macroverse restricted universe multiverse' && wget -q http://archive.offensive-security.com/backtrack.gpg -O- | sudo apt-key add -

##### List all process running a specfic port

   su do lsof -i :<port>

##### Brute force discover

   su do zcat /var/log/auth.log.*.gz | awk '/Failed password/&&!/for invalid user/{a[$9]++}/Failed password for invalid user/{a["*" $11]++}END{for (i in a) printf "%6s\t%s\n", a[i], i|"sort -n"}'

##### Limit the cpu usage of a process

   su do cpulimit -p pid -l 50

##### Cleanup Docker

   su do docker rm $(docker ps -a -q); sudo docker rmi $(docker images -q)

##### Run a command as root, with a delay

   su do bash -c "sleep 1h ; command"

##### Install an mpkg from the command line on OSX

   su do installer -pkg /Volumes/someapp/someapp.mpkg -target /

##### Show the UUID of a filesystem or partition

   su do vol_id -u /dev/sda1

##### Cleanup debian/ubuntu package configurations

   su do dpkg-reconfigure -a

##### Install Linux Kernel Headers

   su do apt-get install linux-headers-$(uname -r)

##### sniff network traffic on a given interface and displays the IP addresses of the machines communicating with the current host (one IP per line)

   su do tcpdump -i wlan0 -n ip | awk '{ print gensub(/(.*)\..*/,"\\1","g",$3), $4, gensub(/(.*)\..*/,"\\1","g",$5) }' | awk -F " > " '{print $1"\n"$2}'

##### Speed up upgrades for a debian/ubuntu based system.

   su do aptitude update; sudo apt-get -y print-uris upgrade | egrep -o -e "http://[^\']+" | sudo aria2c -c -d /var/cache/apt/archives -i -; sudo aptitude -y safe-upgrade

##### Measure, explain and minimize a computer's electrical power consumption

   su do powertop

##### Find all files with root SUID or SGID executables

   su do find / -type f \( -perm /4000 -a -user root \) -ls -o \( -perm /2000 -a -group root \) -ls

##### Run the last command as root

   su  -c "!!"

##### Youtube-dl gone stale on you/stopped working (Ubuntu)?

   su do youtube-dl -U

##### Disable WoL on eth0

   su do ethtool -s eth0 wol d

##### list block devices

   su do lsblk -o name,type,fstype,label,partlabel,model,mountpoint,size

##### Mount Fat USB with RWX

   su do mount -t vfat -o umask=000,uid=YOUR_UID,gid=users /dev/sdb1 /media/usb

##### Watch memcache traffic

   su do tcpdump -i eth0 -s 65535 -A -ttt port 11211

##### dd with progress bar and statistics

   su do dd if=/dev/sdc bs=4096 | pv -s 2G | sudo dd bs=4096 of=~/USB_BLACK_BACKUP.IMG

##### Remove all unused kernels with apt-get

   su do apt-get remove $(dpkg -l|awk '/^ii  linux-image-/{print $2}'|sed 's/linux-image-//'|awk -v v=`uname -r` 'v>$0'|sed 's/-generic*//'|awk '{printf("linux-headers-%s\nlinux-headers-%s-generic*\nlinux-image-%s-generic*\n",$0,$0,$0)}')

##### Router discovery

   su do arp-scan 192.168.1.0/24 -interface eth0

##### install all archive file type apps in ubuntu

   su do apt-get install p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller

##### Mac OS X: remove extra languages to save over 3 GB of space.

   su do find / -iname "*.lproj" -and \! -iname "en*" -print0 | tee /dev/stderr | sudo xargs -0 rm -rfv

##### To get  internet connection information .

   su do /bin/netstat -tpee

##### Set Time Zone in Ubuntu

   su do dpkg-reconfigure tzdata

##### Show an application's environment variables

   su do sed 's/\o0/\n/g' "/proc/$(pidof -x firefox)/environ" ;# replace firefox

##### How many Linux and Windows devices are on your network?

   su do nmap -F -O 192.168.1.1-255 | grep "Running: " > /tmp/os; echo "$(cat /tmp/os | grep Linux | wc -l) Linux device(s)"; echo "$(cat /tmp/os | grep Windows | wc -l) Window(s) devices"

##### dd with progress bar and statistics

   su do pv -tpreb /path/to/source | sudo dd bs=4096 of=/path/to/destination

##### Get a shell with a not available account

   su  - <user> -s /bin/sh -c "/bin/sh"

##### GRUB2: set Super Mario as startup tune

   su do bash -c 'echo "GRUB_INIT_TUNE=\"480 165 2 165 2 165 3 554 1 587 1 554 2 370 1 554 1 523 2 349 1 523 1 494 3 165 2 165 2 165 2\"" >> /etc/default/grub && update-grub'

##### Determine whether a CPU has 64 bit capability or not

   su do dmidecode type=processor | grep -i -A 1 charac

##### Ad blocking on Ubuntu phone/tablet with hosts file

   su do mount -o remount,rw / && sudo cp /etc/hosts /etc/hosts.old && wget http://winhelp2002.mvps.org/hosts.txt && cp /etc/hosts ~/ && cat hosts.txt >> hosts && sudo cp hosts /etc/hosts

##### Lists the supported memory types and how much your board can support.

   su do dmidecode -t 5,16

##### list all opened ports on host

   su do lsof -P -i -n -sTCP:LISTEN

##### Benchmark a hard drive

   su do hdparm -Tt /dev/sda

##### Disable sleep mode via cli and systemd (Centos, Debian Ubuntu?)

   su do systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target

##### Remove all old kernels

   su do apt-get purge $(dpkg -l linux-{image,headers}-"[0-9]*" | awk '/ii/{print $2}' | grep -ve "$(uname -r | sed -r 's/-[a-z]+//')")

##### create an emergency swapfile when the existing swap space is getting tight

   su do dd if=/dev/zero of=/swapfile bs=1024 count=1024000;sudo mkswap /swapfile; sudo swapon /swapfile

##### Make sudo forget password instantly

   su do -K

##### Root shell

   su do -i

##### Move all files between to date

   su do find . -maxdepth 1 -cnewer olderFilesNameToMove -and ! -cnewer newerFileNameToMove -exec mv -v {} /newDirectory/ \;

##### Find the fastest server to disable comcast's DNS hijacking

   su do netselect -v -s3 $(curl -s http://dns.comcast.net/dns-ip-addresses2.php | egrep -o '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+' | sort | uniq)

##### Fix VirtualBox error

   su do usermod -a -G vboxusers <username>

##### Change the default editor for modifying the sudoers list.

   su do update-alternatives config editor

##### Install a Firefox add-on/theme to all users

   su do firefox -install-global-extension /path/to/add-on

##### To find the count of each open file on a system (that supports losf)

   su do lsof | awk '{printf("%s %s %s\n", $1, $3, $NF)}' | grep -v "(" | sort -k 4 | gawk '$NF==prv{ct++;next} {printf("%d %s\n",ct,$0);ct=1;prv=$NF}' | uniq | sort -nr

##### Suspend to ram

   su do pm-suspend

##### How to search for files and open all of them in tabbed vim editor.

   su do find / -type f -name config.inc.php -exec vim -p {} +

##### Debian: Mark all dependent packages as manualy installed.

   su do aptitude unmarkauto $(apt-cache depends some-deb-meta-package-name | grep Depends | cut -d: -f2)

##### Install Restricted Multimedia Codecs in Ubuntu 14.04

   su do apt-get install libavcodec-extra

##### Show the key code for keyboard events include the Fn keys

   su do showkey -k

##### get diskusage of files modified during the last n days

   su do find /var/log/ -mtime -7 -type f | xargs du -ch | tail -n1

##### Drop or block attackers IP with null routes

   su do route add xxx.xxx.xxx.xxx gw 127.0.0.1 lo

##### View user activity per directory.

   su do lsof -u someuser -a +D /etc

##### Limit bandwidth usage by apt-get

   su do apt-get -o Acquire::http::Dl-Limit=30 upgrade

##### Setting reserved blocks percentage to  1%

   su do tune2fs -m 1 /dev/sda4

##### Install Linux Kernel Headers on Debian-based systems

   su do apt-get install linux-headers-`uname -r`

##### Rolling upgrades via aptitude

   su do sh -c "aptitude update; aptitude -DrVWZ full-upgrade; aptitude autoclean; exit"

##### Null a file with sudo

   su do bash -c "> /var/log/httpd/access_log"

##### apt-get upgrade with bandwidth limit

   su do apt-get -o Acquire::http::Dl-Limit=20 -o Acquire::https::Dl-Limit=20 upgrade -y

##### remove oprhan package on debian based system

   su do deborphan | xargs sudo apt-get -y remove purge

##### Reinstall Grub

   su do grub-install recheck /dev/sda1

##### Get the Volume labels all bitlocker volumes had before being encrypted

   su do echo "BitLocker Volume labels:" && sudo dislocker-find | xargs -I{} sh -c 'echo -n "{} ->+ " ; sudo dislocker-metadata -V {} | grep string' | sed 's/+.*string://' | sed "s/'[^ ]* /\"/g" | sed 's/\ [^ ]*$/"/'

##### purge all packages marked with 'rc'

   su do dpkg purge `dpkg -l | awk '/^r/{print $2}'`

##### View any already in progress copy command in detail

   su do lsof -p1234 | grep -E "(3r|4w).*REG"

##### cpu info

   su do dmidecode -t processor

##### Recover deleted Binary files

   su do foremost -i /dev/sda -o /recovery

##### Write a listing of all directories and files on the computer to a compressed file.

   su do ls -RFal / | gzip > all_files_list.txt.gz

##### Adding a startup script to be run at bootup Ubuntu

   su do update-rc.d <scriptname> defaults

##### Run command from another user and return to current

   su  - $user -c <command>

##### Find the 10 users that take up the most disk space

   su do -s du -sm /Users/* | sort -nr | head -n 10

##### Mount a VMware virtual disk (.vmdk) file on a Linux box

   su do mount vmware-server-flat.vmdk /tmp/test/ -o ro,loop=/dev/loop1,offset=32768 -t ntfs

##### Set blanket packet/second limit on network interface for Ubuntu VPS server

   su do iptables -A INPUT -m limit limit 2000/sec -j ACCEPT && sudo iptables -A INPUT -j DROP

##### Kill all processes that listen to ports begin with 50 (50, 50x, 50xxx,...)

   su do netstat -plnt | awk '($4 ~ /:50$/){sub(/\/.*/, "", $7); system("sudo kill " $7)}'

##### Print the detailed statistics of transferred bytes by the firewall rules

   su do iptables -L -nv

##### Restrict the use of dmesg for current user/session

   su do sh -c 'echo 1 > /proc/sys/kernel/dmesg_restrict'

##### Watch postgresql calls from your application on localhost

   su do tcpdump -nnvvXSs 1514 -i lo0 dst port 5432

##### Change attributes of files so you can edit them

   su do chattr -i <file that cannot be modified>

##### Check tcp-wrapping support

   su pportsWrap(){ ldd `which ${1}` | grep "libwrap" &>/dev/null && return 0 || return 1; }

##### view the system console remotely

   su do cat /dev/vcs1 | fold -w 80

##### Browse system RAM in a human readable form

   su do cat /proc/kcore | strings | awk 'length > 20' | less

##### Backup your hard drive with dd

   su do dd if=/dev/sda of=/media/disk/backup/sda.backup

##### Upgrading packages.  Pacman can update all packages on the system with just one command. This could take quite a while depending on how up-to-date the system is. This command can synchronize the repository databases and update the system's packages.

   su do pacman -Syu

##### Install a new kernel in Manjaro linux

   su do mhwd-kernel linux00

##### Clean pacman cache in arch linux, manjaro linux

   su do pacman -Scc

##### find unreadable file

   su do -u apache find . -not -perm /o+r

##### Get all available packages on Ubuntu (or any distro that uses apt)

   su do apt-cache dumpavail | grep Package | cut -d ' ' -f 2 > available.packages

##### Startup a VPN connection through command line

   su do nmcli con up/down id vpn-name

##### Preserve user variables when running commands with sudo.

   su do -E rpm -Uvh "http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm"

##### Gathering all MAC's in your local network

   su do arp-scan interface=eth0 -l

##### Display standard information about device

   su do  ethtool -i eth0

##### Fix for error perl: warning: Setting locale failed.

   su do locale-gen en_GB.UTF-8 && sudo locale-gen purge && sudo dpkg-reconfigure locales

##### A fun thing to do with ram is actually open it up and take a peek. This command will show you all the string (plain text) values in ram

   su do dd if=/dev/mem | cat | strings

##### easily trace all Nginx processes

   su do strace -e trace=network -p `pidof nginx | sed -e 's/ /,/g'`

##### Spoof your wireless MAC address on OS X to 00:e2:e3:e4:e5:e6

   su do ifconfig en1 ether 00:e2:e3:e4:e5:e6

##### Find installed network devices

   su do lshw -C network

##### Enable verbose boot in Mac OS X Open Firmware

   su do nvram boot-args="-v"

##### swap the java version being used

   su do update-alternatives config java

##### Print all open regular files sorted by the number of file handles open to each.

   su do lsof | egrep 'w.+REG' | awk '{print $10}' | sort | uniq -c | sort -n

##### USE WITH CAUTION: perminately delete old kernel packages

   su do apt-get remove purge $(dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d')

##### Fix Ubuntu's Broken Sound Server

   su do killall -9 pulseaudio; pulseaudio >/dev/null 2>&1 &

##### Check Ram Speed and Type in Linux

   su do dmidecode type 17 | more

##### Mount a truecrypt drive from a file from the command line interactively

   su do truecrypt <truecrypt-file> <mount-point>

##### start a VNC server for another user

   su  -c "vncserver -depth 32 -geometry 1024x768" username

##### Get the size of all the directories in current directory

   su do du -sh $(ls -d */) 2> /dev/null

##### Change user within ssh session retaining the current MIT cookie for X-forwarding

   su  username -c "xauth add ${HOSTNAME}/unix:${DISPLAY//[a-zA-Z:_-]/} $(xauth list | grep -o '[a-zA-Z0-9_-]*\ *[0-9a-zA-Z]*$'); bash"

##### take a screenshot of a webpage

   su do xvfb-run server-args="-screen 0, 1024x768x24" ./webkit2png.py -o google.png http://www.google.com

##### Export MySQL tables that begin with a string

   su do mysql -sNe 'show tables like "PREFIX_%"' DBNAME | xargs sudo mysqldump DBNAME > /tmp/dump.sql

##### Wich program is listen on port OSX

   su do lsof -i -n -P | grep TCP

##### Get Dell Service Tag Number from a Dell Machine

   su do dmidecode | grep Serial\ Number | head -n1

##### Remove any RPMs matching a pattern

   su do rpm -e `rpm -qa | grep keyword`

##### Check if you work on a virtual/physical machine in Linux

   su do dmidecode | grep Product

##### run last command with root

   su do !!

##### How to speedup the Ethernet device

   su do ethtool -s eth0 speed 100 duplex full

##### Run the last command as root

   su do !-1

##### Fix the vi zsh bindings on ubuntu

   su do sed -iorig '/\(up\|down\)/s/^/#/' /etc/zsh/zshrc

##### Find all active ip's in a subnet

   su do arp-scan -I eth0 192.168.1.0/24

##### Change user, assume environment, stay in current dir

   su   user

##### Show DeviceMapper names for LVM Volumes (to disambiguate iostat logs, etc)

   su do lvdisplay |awk '/LV Name/{blockdev=$3} /Block device/{bdid=$3; sub("[0-9]*:","dm-",bdid); print bdid,blockdev;}'

##### change user & preserver environment (.bashrc&co)

   su  - -m -p git

##### Display error pages in report format

   su do awk '($9 ~ /404/)' /var/log/httpd/www.domain-access_log | awk '{print $2,$9,$7,$11}' | sort | uniq -c

##### Clean apt-get and gpg cache and keys

   su do gpg refresh-keys; sudo apt-key update; sudo rm -rf /var/lib/apt/{lists,lists.old}; sudo mkdir -p /var/lib/apt/lists/partial; sudo apt-get clean all; sudo apt-get update

##### Purge configuration files of removed packages on  debian based systems

   su do aptitude purge `dpkg get-selections | grep deinstall | awk '{print $1}'`

##### Show how old your linux OS installtion is

   su do tune2fs -l $(df -h / |(read; awk '{print $1; exit}')) | grep -i created

##### what model of computer I'm using?

   su do dmidecode | grep Product

##### List open sockets protocol/address/port/state/PID/program name

   su do netstat -punta

##### list any Linux files without users or groups

   su do find / \( -nouser -o -nogroup \)

##### Mark packages installed with build-dep for autoremove (on Debian/Ubuntu)

   su do aptitude markauto $(apt-cache showsrc PACKAGE | grep Build-Depends | perl -p -e 's/(?:[\[(].+?[\])]|Build-Depends:|,|\|)//g')

##### Safely remove old unused kernels in Ubuntu/Debian

   su do aptitude purge ~ilinux-image-\[0-9\]\(\!`uname -r`\)

##### Make a file not writable / immutable by root

   su do chattr +i <file>

##### Throttling Bandwidth On A Mac

   su do ipfw pipe 1 config bw 50KByte/s;sudo ipfw add 1 pipe 1 src-port 80

##### Force GNU/Linux keyboard settings, layout and configuration

   su do dpkg-reconfigure keyboard-configuration

##### Display IP : Count of failed login attempts

   su do lastb | awk '{if ($3 ~ /([[:digit:]]{1,3}\.){3}[[:digit:]]{1,3}/)a[$3] = a[$3]+1} END {for (i in a){print i " : " a[i]}}' | sort -nk 3

##### hibernate

   su do pm-hibernate

##### Use tagged vlans

   su do vconfig add eth0 [VID]

##### dhcdrop - testing/suppression/tracking false DHCP servers

   su do dhcdrop -i eth1 -y -l 00:11:22:33:44:55

##### Remove old kernels and header data in Ubuntu/Debian

   su do apt-get -y purge $(dpkg get-selections | awk '((/^linux-/) && (/[0-9]\./) && (!/'"`uname -r | sed "s/-generic//g"`"'/)) {print $1}')

##### Installs lamp on Ubuntu

   su do apt-get  install lamp-server^ phpmyadmin

##### Install build dependencies for a given package

   su do apt-get build-dep rhythmbox

##### Open Sublime-text in current directory

   su bl $(pwd)

##### Kill all processes that listen to ports begin with 50 (50, 50x, 50xxx,...)

   su do netstat -plnt | grep :50 | awk '{print $7}' | awk -F/ '{print $1}' | xargs kill -9

##### Route some ips (or domain names) over VPN

   su do /sbin/route add -host 192.168.12.50 -interface ppp0

##### Kill all processes belonging to a user

   su do -u $USER kill -9 -1

##### the first command i type on fresh ubuntu

   su do apt-get install aptitude

##### Add another tty device using mknod command

   su do mknod /dev/ttyS4 c 4 68

##### Clear RAM cache

   su  -c 'sync; echo 3 > /proc/sys/vm/drop_caches'

##### Hibernate after 30minutes

   su do bash -c "sleep 30m; pm-hibernate"

##### Get sunrise time for any city, by name

   su nrise() { city=${1-Seattle}; w3m "google.com/search?q=sunrise:$city" | sed -r '1,/^\s*1\./d; /^\s*2\./,$d; /^$/d' ;}

##### Ettercap MITM

   su do ettercap -T -Q -M arp -i wlan0 // //

##### macports update

   su do port selfupdate ; echo '-' ; sudo port upgrade outdated

##### Change directories using sudo

   su do bash -c "cd /PATH/TO/THE/DIRECTORY;bash"

##### sync repository and do install

   su do apt-fast update && sudo apt-fast -y dist-upgrade

##### Command used to sync arch ro manjaro mirrors

   su do pacman-mirrors -g

##### dpkg: purge all packages matching some name

   su do dpkg -P $(sudo dpkg -l yourPkgName* | awk '$2 ~ /yourPkgName.*/' | awk '$1 ~ /.i/' | awk '{print $2}')

##### Find directories with lots of files in them

   su do find / -type f | perl -MFile::Basename -ne '$counts{dirname($_)}++; END { foreach $d (sort keys %counts) {printf("%d\t%s\n",$counts{$d},$d);} }'|sort -rn | tee /tmp/sortedfilecount.out | head

##### To install guest additions in arch or manjaro linux, run the following command:

   su do pacman -S virtualbox-guest-utils

##### restart session

   su do restart lightdm

##### Delete duplicated dictionaries in spell check list

   su do find /usr/share/hunspell/ -lname '*' -delete

##### dpkg: purge all packages matching some name

   su do dpkg -P $(dpkg -l yourPkgName* | awk '$2 ~ /yourPkgName.*/ && $1 ~ /.i/ {print $2}')

##### Disabling Spotlight on Mac OS

   su do mdutil -a -i off

##### progress bar while using dd

   su do dd if=file.iso |pv| sudo dd of=/dev/sdX

##### make pretty the netstat output for listening services

   su do netstat -plntu inet | sort -t: -k2,2n | sort stable -t. -k 1,1n -k 2,2n -k 3,3n -k 4,4n | sort -s -t" " -k1,1

##### Change user's password

   su do passwd <username>

##### Look for the process bound to a certain port

   su do netstat -tulpn | grep :8080

##### List wireless clients connected to an access point

   su do netdiscover -r 192.168.1.0/24 -i wlo1

##### See who's connected to your network =D

   su do netdiscover -r 192.168.1.0/24 -iwlo1

##### Install mysql-2.8.1 rubygem on Mac OS X 10.6 (Snow Leopard)

   su do env ARCHFLAGS="-arch x86_64" gem install mysql

##### rescan SCSI bus

   su do apt-get install scsitools && sudo rescan-scsi-bus

##### Find all hidden files in a directory

   su do find . -name '.*' \( -type d -exec find {} \; -prune -o -print \)

##### Play music from pure data

   su do cat /usr/share/icons/*/*/* > /dev/dsp

##### A file's rpm-package details

   su mmpkg() { rpm -qfi "$@"; }

##### Switch on eeepc camera

   su do echo 1 > /proc/acpi/asus/camera

##### Startup Nessus and initialize plugins on backtrack5

   su do /opt/nessus/sbin/nessusd

##### Extract a .gz file with privilege

   su do sh -c 'gunzip -c source.gz > destination'

##### Backup /etc directory

   su do tar -zcvf $(hostname)-etc-back-`date +%d`-`date +%m`-`date +%y`.tar.gz /etc && sudo chown $USER:$USER $(hostname)-etc-back*

##### Flush DNS

   su do /etc/init.d/dns-clean

##### Twitter the geek way

   su do pip install rainbowstream && rainbowstream -iot

##### sudo for launching gui apps in background

   su do -b xterm

##### Delete all php package

   su do apt-get purge `dpkg -l | grep php| awk '{print $2}' |tr "\n" " "`

##### sudo ssh -D 88 -fN user@xxxx.no-ip.info

   su do ssh -D 88 -fN user@xxxx.no-ip.info

##### Send SNMP traps

   su do snmptrap -m ALL -v 2c -c public trapserver "" UCD-DEMO-MIB::ucdDemoPublic SNMPv2-MIB::sysLocation.0 s "Just here"

##### DD with progressbar using pv for backing up entire block device

   su do dd if=/dev/block/device bs=1MB | pv -s `sudo blockdev getsize64 /dev/block/device' | gzip -9 > output.img.gz

##### Berechtigungen nach einer Referenz ?ndern

   su do chmod reference=Referenz.foo Datei.foo

##### Find the mounted storages

   su do find . -name "syslog*.gz" -type f | xargs gzip -cd | grep "Mounted"

##### View all file descriptors owned by a process

   su do lsof -p `sudo ps aux | grep -i neo4j | grep -v grep | awk '{ print $2 }'`

##### Create a package list for offline download

   su do apt-get <apt-get command and options> print-uris -qq | sed -n "s/'\([^ ]\+\)' \([^ ]\+\) \([^ ]\+\) MD5Sum:\([^ ]\+\)/wget -c \1/p" > dowload_deb_list.txt

##### Show counts of messages in exim mail queue, grouped by recipient

   su do /usr/sbin/exim -bp | sed -n '/\*\*\* frozen \*\*\*/,+1!p' | awk '{print $1}' | tr -d [:blank:] | grep @ | sort | uniq -c | sort -n

##### Check if TCP port 25 is open

   su do lsof -iTCP:25 -sTCP:LISTEN

##### Total space used by open but deleted files

   su do lsof -nP | awk '/deleted/ { sum+=$8 } END { print sum }'

##### Find out which process uses an old lib and needs a restart after a system update

   su do lsof | grep 'DEL.*lib' | cut -f 1 -d ' ' | sort -u

##### MTR command line to show jitter and mimic network traffic

   su do mtr -s 1472 -B 0 -oLDRSWNBAWVJMXI <ip address>

##### Adding user to printer, after installing hp-lip (Debian)

   su do adduser [username] lp && sudo adduser [username] lpadmin && sudo hp-setup -i

##### Synchronize date and time with a server

   su do ntpdate serverip

##### creates a ppp link between my Ubuntu development machine and BeagleBoard running Android connected via USB

   su do `which adb` ppp "shell:pppd nodetach noauth noipdefault /dev/tty" nodetach noauth noipdefault notty 192.168.0.100:192.168.0.200

##### Find and sort by Resident Size of each process on the system in MB

   su do ps aux sort:rss | awk '{print $2"\t"$11":  "$6/1024" MB"}' | column -t | less

##### Sniff who are using wireless. Use wireshark to watch out.pcap :]

   su do ettercap -T -w out.pcap -i wlan0 -M ARP // //

##### Reboot to Windows (UEFI)

   su do efibootmgr bootnext `efibootmgr | sed -n "s/^Boot\([0-9]\{4\}\)\* Windows Boot Manager$/\1/p"` && reboot

##### Manage "legacy" service run control links

   su do find /etc/rc{1..5}.d -name S99myservice -type l -exec sh -c 'NEWFN=`echo {} | sed 's/S99/K99/'` ; mv -v {} $NEWFN' \;

##### resume other user's screen session via su, without pty error

   su do -iu {user} script -qc 'screen {screen_args}' /dev/null

##### Kill the X Server

   su do kill -9 $( ps -e | grep Xorg | awk '{ print $1 }' )

##### Stop Grooveshark destroying your CPU

   su do cpulimit -e Grooveshark -l 20

##### CPU Frequency/Speed Set

   su do cpupower frequency-set -g <frequency governor>

##### Set date and time

   su do date -s "26 OCT 2008 19:30:00"

##### Manual CPU Frequency/Speed/Clock Set

   su do cpupower frequency-set -f <frequency in MHz>

##### detect partitions

   su do file -bs /dev/sda | sed -e 's/.*partition 1\(.*\) code offset.*/partition 1\1/g' -e 's/\(.\);/\1\n/g'

##### Rename your Raspberry Pi

   su do sed -i 's/raspberrypi/pita1/' /etc/hosts /etc/hostname; sudo reboot

##### Installation Ksuperkey by one command in Kubuntu.

   su do apt-get install git gcc make libx11-dev libxtst-dev pkg-config -y && git clone https://github.com/hanschen/ksuperkey.git && cd ksuperkey && make && sudo mv ksuperkey /usr/bin/ksuperkey && cd ~ && rm -rf ksuperkey

##### Run skype using your GTK theme

   su do sed -i 's/Exec=skype %U/Exec=skype disable-cleanlooks -style GTK %U/' /usr/share/applications/skype.desktop

##### List partition superblocks

   su do dumpe2fs /dev/sda1 | grep superblock

##### Fix "Unknown media type in type" warnings when installing packages

   su do sh -c "rm /usr/share/mime/packages/kde.xml && update-mime-database /usr/share/mime"

##### Macports update and clean all packages

   su do port selfupdate && sudo port upgrade outdated && sudo port clean all installed && sudo port -f uninstall inactive

##### Information about RAM HW.

   su do dmidecode type 17

##### Install dpkg packages

   su do dpkg -i *.deb

##### Wait the set time and then Power off

   su do shutdown -h <hour:minute>

##### Null a file with sudo

   su do tee /path/to/file < /dev/null

##### Make redirects to localhost via /etc/hosts more interesting

   su do socat TCP4-LISTEN:80,bind=127.0.0.1,fork EXEC:'echo "HTTP/1.1 503 Service Unavailable";'

##### print indepth hardware info

   su do dmidecode | more
