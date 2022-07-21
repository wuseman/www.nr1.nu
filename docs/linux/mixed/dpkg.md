# dpkg

##### List your largest installed packages.

   dpkg -query -Wf '${Installed-Size}\t${Status}\t${Package}\n' | sort -n | grep installed

##### compile source & then remove the dev tools you needed to install

   dpkg -query -l > 1.lst; sudo apt-get install -y build-essential; ./configure; make; sudo checkinstall -D make install; dpkg-query list > 2.lst; diff 1.lst 2.lst | grep '^>' | awk '{print $3}' | xargs sudo apt-get remove -y purge

##### put an unpacked .deb package back together

   dpkg -repack firefox

##### List your largest installed packages (on Debian/Ubuntu)

   dpkg -query show showformat='${Package;-50}\t${Installed-Size}\n' `aptitude  display-format '%p' search '?installed!?automatic'` | sort -k 2 -n | grep -v deinstall | awk '{printf "%.3f MB \t %s\n", $2/(1024), $1}'

##### Purgue foreing architecture packages on debian

   dpkg  -l |grep i386 | awk '{ print "apt-get -y  remove purge "$2 }' | sh

##### Purge application's residual config & orphans

   dpkg  -l | sed '/^rc/!d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/' | xargs -r sudo apt-get -y purge

##### List content of a package (debian derivative distro)

   dpkg  -L  Your_Package

##### Print sorted list of all installed packages (Debian)

   dpkg  get-selections | awk '$2=="install" {print $1}' | sort

##### remove unneeded configuration files in debian

   dpkg -query -l| grep -v "ii " | grep "rc " | awk '{print $2" "}' | tr -d "\n" | xargs aptitude purge -y

##### Creates a minimalist xorg.conf

   dpkg -reconfigure -phigh xserver-xorg

##### Print a list of installed Perl modules

   dpkg -query -W | grep perl

##### purge installed but unused linux headers, image, or modules

   dpkg  -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d' | xargs sudo apt-get -y purge

##### List only executables installed by a debian package

   dpkg  -L iptables | perl -lne 'print if -f && -x'

##### List installed deb packages by size

   dpkg -query -Wf '${Installed-Size}\t${Package}\n' | sort -n

##### show installed but unused linux headers, image, or modules

   dpkg  -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d'

##### Remove all unused kernels with apt-get

   dpkg  -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d' | xargs sudo apt-get -y purge

##### List your largest installed packages.

   dpkg  get-selections | cut -f1 | while read pkg; do dpkg -L $pkg | xargs -I'{}' bash -c 'if [ ! -d "{}" ]; then echo "{}"; fi' | tr '\n' '\000' | du -c files0-from - | tail -1 | sed "s/total/$pkg/"; done

##### Generate a list of installed packages on Debian-based systems

   dpkg  -l

##### Remove old kernel packages

   dpkg  -l linux-* | awk '/^ii/{ print $2}' | grep -v -e `uname -r | cut -f1,2 -d"-"` | grep -e [0-9] | xargs sudo apt-get -y purge

##### List your largest installed packages (on Debian/Ubuntu)

   dpkg -query -W showformat='${Installed-Size}\t${Package}\n' | sort -nr | less

##### Purge configuration file of all desinstalled package

   dpkg  list | grep '^rc\b' | awk '{ print $2 }' | xargs sudo dpkg -P

##### A command's package details

   dpkg  -S `which nm` | cut -d':' -f1 | (read PACKAGE; echo "[${PACKAGE}]"; dpkg -s "${PACKAGE}"; dpkg -L "${PACKAGE}") | less

##### Lists installed kernels

   dpkg  get-selections | grep linux-image

##### Display packages and versions on Debian/Ubuntu distrib

   dpkg -query -Wf '${Package} - ${Version}\n' | sort -n

##### Know which version dpkg/apt considers more recent

   dpkg  compare-versions 1.0-2ubuntu5 lt 1.1-1~raphink3 && echo y || echo n

##### Purge configuration files of removed packages on  debian based systems

   dpkg  -l | grep ^rc | awk '{print $2}' | xargs dpkg -P

##### complete extraction of a debian-package

   dpkg -deb -x $debfile $extractdir; dpkg-deb -e $debfile $extractdir/DEBIAN;

##### Find name of package which installed a given shell command

   dpkg  -S "$(readlink -e $(which w))" | cut -d ':' -f 1

##### (DEBIAN-BASED DISTROS) Find total installed size of packages given a search term

   dpkg -query -Wf '${Installed-Size}\t${Package}\n' | grep "\-dev" | sort -n | awk '{ sum+=$1} END {print sum/1024 "MB"}'

##### Show one line summaries of all DEB packages installed on Ubuntu based on pattern search

   dpkg  list '*linux*' | grep '^ii'

##### Check if a package is installed.  If it is, the version number will be shown.

   dpkg  -l python

##### Check the package is installed or not. There will show the package name which is installed.

   dpkg  -l | cut -d' ' -f 3 | grep ^python$

##### debian/ubuntu get installed nvidia driver version from terminal

   dpkg  status nvidia-current | grep Version | cut -f 1 -d '-' | sed 's/[^.,0-9]//g'

##### List all installed Debian packages

   dpkg  get-selections | grep -v deinstall | cut -f 1

##### Find the package a command belongs to on Debian

   dpkg  -S $( which  ls )

##### Purge configuration files of removed packages on  debian based systems

   dpkg  -P $(dpkg -l | awk '/^rc/ { print $2 }')

##### Delete residues configuration files

   dpkg  -l | grep ^rc | awk '{print $2}' | sudo xargs dpkg -P

##### Find stock debian package config files that have been modified since installation

   dpkg -query -Wf  '${Package}\n' | xargs dpkg status | sed '/^Conffiles:/,/^Description:/!d;//d' | awk '{print $2 "  " $1}' | md5sum -c 2>/dev/null | grep FAILED$ | cut -f1 -d':'

##### Purge configuration files of removed packages on  debian based systems

   dpkg -query -W -f '${binary:Package} ${Status}\n' '*' |sed -n 's/ deinstall ok config-files//p'|xargs dpkg purge

##### (Debian/Ubuntu) Discover what package a file belongs to

   dpkg  -S /usr/bin/ls

##### (Debian/Ubuntu) Discover what package a file belongs to

   dpkg  -S /usr/bin/ls

##### Generate a list of installed packages on Debian-based systems

   dpkg  get-selections > LIST_FILE

##### List contents of a deb package

   dpkg  -c deb_package

##### List all the currently loaded old kernel packages, that is other than the active one

   dpkg  -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d'

##### Show a Package Version on Debian based distribution

   dpkg -query -W -f='${Version}' package-name

##### Purge completely packages on debian / ubuntu

   dpkg  -l | grep ^rc | awk '{ print $2}' | xargs apt-get -y remove purge

##### Extract list of packages installed on one server and generate 'apt' command to install them on a new server

   dpkg  list | rgrep ii | cut -d" " -f3 | sed ':a;N;$!ba;s/\n/ /g' | sed 's/^\(.\)/apt-get install \1/'

##### dpkg - undo selection of installed packages for deinstall

   dpkg  -l | grep ^ri | awk '{print $2 " install"}' | sudo dpkg set-selections

##### List debian package installed by size

   dpkg -query -Wf '${Installed-Size}\t${Package}\n' | sort -n

##### to know which package in Ubuntu is install

   dpkg  -l | grep (package name)

##### Display the packages that contain the specified file.

   dpkg  -S file

##### Displays the packages which contain the specified file.

   dpkg  -S locale.alias

##### debian keyboard layout reconfigure

   dpkg -reconfigure keyboard-configuration

##### Generate debian package without signing and only binaries

   dpkg -buildpackage -b -rfakeroot -us -uc

##### Purge configuration files of removed packages on  debian based systems

   dpkg  -l | grep ^rc | cut -d' ' -f3 | xargs dpkg -P

##### put an unpacked .deb package back together

   dpkg -repack firefox

##### purge installed but unused linux headers, image, or modules

   dpkg  -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d' | xargs sudo apt-get -y purge

##### List only executables installed by a debian package

   dpkg  -L iptables | perl -lne 'print if -f && -x'

##### List installed deb packages by size

   dpkg -query -Wf '${Installed-Size}\t${Package}\n' | sort -n

##### show installed but unused linux headers, image, or modules

   dpkg  -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d'

##### Remove all unused kernels with apt-get

   dpkg  -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d' | xargs sudo apt-get -y purge

##### List your largest installed packages.

   dpkg  get-selections | cut -f1 | while read pkg; do dpkg -L $pkg | xargs -I'{}' bash -c 'if [ ! -d "{}" ]; then echo "{}"; fi' | tr '\n' '\000' | du -c files0-from - | tail -1 | sed "s/total/$pkg/"; done

##### Generate a list of installed packages on Debian-based systems

   dpkg  -l

##### Remove old kernel packages

   dpkg  -l linux-* | awk '/^ii/{ print $2}' | grep -v -e `uname -r | cut -f1,2 -d"-"` | grep -e [0-9] | xargs sudo apt-get -y purge

##### List your largest installed packages (on Debian/Ubuntu)

   dpkg -query -W showformat='${Installed-Size}\t${Package}\n' | sort -nr | less

##### Purge configuration file of all desinstalled package

   dpkg  list | grep '^rc\b' | awk '{ print $2 }' | xargs sudo dpkg -P

##### A command's package details

   dpkg  -S `which nm` | cut -d':' -f1 | (read PACKAGE; echo "[${PACKAGE}]"; dpkg -s "${PACKAGE}"; dpkg -L "${PACKAGE}") | less

##### Lists installed kernels

   dpkg  get-selections | grep linux-image

##### Display packages and versions on Debian/Ubuntu distrib

   dpkg -query -Wf '${Package} - ${Version}\n' | sort -n

##### Know which version dpkg/apt considers more recent

   dpkg  compare-versions 1.0-2ubuntu5 lt 1.1-1~raphink3 && echo y || echo n

##### Purge configuration files of removed packages on  debian based systems

   dpkg  -l | grep ^rc | awk '{print $2}' | xargs dpkg -P

##### complete extraction of a debian-package

   dpkg -deb -x $debfile $extractdir; dpkg-deb -e $debfile $extractdir/DEBIAN;

##### Find name of package which installed a given shell command

   dpkg  -S "$(readlink -e $(which w))" | cut -d ':' -f 1

##### (DEBIAN-BASED DISTROS) Find total installed size of packages given a search term

   dpkg -query -Wf '${Installed-Size}\t${Package}\n' | grep "\-dev" | sort -n | awk '{ sum+=$1} END {print sum/1024 "MB"}'

##### Show one line summaries of all DEB packages installed on Ubuntu based on pattern search

   dpkg  list '*linux*' | grep '^ii'

##### Check if a package is installed.  If it is, the version number will be shown.

   dpkg  -l python

##### Check the package is installed or not. There will show the package name which is installed.

   dpkg  -l | cut -d' ' -f 3 | grep ^python$

##### debian/ubuntu get installed nvidia driver version from terminal

   dpkg  status nvidia-current | grep Version | cut -f 1 -d '-' | sed 's/[^.,0-9]//g'

##### List all installed Debian packages

   dpkg  get-selections | grep -v deinstall | cut -f 1

##### Find the package a command belongs to on Debian

   dpkg  -S $( which  ls )

##### Purge configuration files of removed packages on  debian based systems

   dpkg  -P $(dpkg -l | awk '/^rc/ { print $2 }')

##### Delete residues configuration files

   dpkg  -l | grep ^rc | awk '{print $2}' | sudo xargs dpkg -P

##### Find stock debian package config files that have been modified since installation

   dpkg -query -Wf  '${Package}\n' | xargs dpkg status | sed '/^Conffiles:/,/^Description:/!d;//d' | awk '{print $2 "  " $1}' | md5sum -c 2>/dev/null | grep FAILED$ | cut -f1 -d':'

##### Purge configuration files of removed packages on  debian based systems

   dpkg -query -W -f '${binary:Package} ${Status}\n' '*' |sed -n 's/ deinstall ok config-files//p'|xargs dpkg purge

##### (Debian/Ubuntu) Discover what package a file belongs to

   dpkg  -S /usr/bin/ls

##### Generate a list of installed packages on Debian-based systems

   dpkg  get-selections > LIST_FILE

##### List contents of a deb package

   dpkg  -c deb_package

##### List all the currently loaded old kernel packages, that is other than the active one

   dpkg  -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d'

##### Show a Package Version on Debian based distribution

   dpkg -query -W -f='${Version}' package-name

##### Purge completely packages on debian / ubuntu

   dpkg  -l | grep ^rc | awk '{ print $2}' | xargs apt-get -y remove purge

##### Extract list of packages installed on one server and generate 'apt' command to install them on a new server

   dpkg  list | rgrep ii | cut -d" " -f3 | sed ':a;N;$!ba;s/\n/ /g' | sed 's/^\(.\)/apt-get install \1/'

##### dpkg - undo selection of installed packages for deinstall

   dpkg  -l | grep ^ri | awk '{print $2 " install"}' | sudo dpkg set-selections

##### List debian package installed by size

   dpkg -query -Wf '${Installed-Size}\t${Package}\n' | sort -n

##### to know which package in Ubuntu is install

   dpkg  -l | grep (package name)
