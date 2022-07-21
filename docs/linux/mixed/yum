# yum

##### Intall not signed packeges with yum

   yum  nogpgcheck install "examplePackage"

##### Firefly quotes

   yum  install fortune-firefly; fortune

##### Remove rpm package by pattern

   yum  erase `yum list installed | grep 'php'`

##### Install php-tidy Module / Extension

   yum  install php-tidy

##### Caching-Nameserver

   yum  -y install bind bind-chroot caching-nameserver

##### RHEL / CentOS Support 4GB or more RAM ( memory )

   yum  install kernel-PAE

##### How to install cron (crond, crontab)

   yum  install vixie-cron crontabs

##### move you up one directory quickly

   yum  install zsh

##### Install Apache 2 on centOS.

   yum  install httpd

##### Install a local RPM package from your desktop, then use the YUM repository to resolve its dependencies.

   yum  localinstall /path/to/package.rpm

##### Listing only one repository with yum

   yum  disablerepo=* enablerepo=epel list available

##### Updating to Fedora 11

   yum  clean all ; rpm -Uvh http://download.fedora.redhat.com/pub/fedora/linux/releases/11/Fedora/i386/os/Packages/fedora-release-11-1.noarch.rpm ; yum -y upgrade ; reboot

##### Listing only one repository with yum

   yum  list | grep my_repository_name

##### List all Centos intalled packages

   yum  list installed| awk '{print $1}'| grep -e "x86" -e "noarch" | grep -v -e '^@'| sort

##### install package which provides some libraries in fedora

   yum  whatprovides /usr/lib/libXX1.so /usr/lib/libXX2.so | grep fc | sed 's/^\(.*\)-[0-9.]*-.*$/\1/' | sort | uniq  | xargs yum -y install

##### Remove i386 RPM packages from x86_64 CentOS/RHEL

   yum  remove `rpm -qa qf "%{n}.%{arch}\n"|grep i386`

##### Remove i386 RPM packages from x86_64 CentOS/RHEL

   yum  remove \*.i\?86

##### Install a local RPM package from your desktop, then use the YUM repository to resolve its dependencies.

   yum  localinstall /path/to/package.rpm

##### Listing only one repository with yum

   yum  disablerepo=* enablerepo=epel list available

##### Updating to Fedora 11

   yum  clean all ; rpm -Uvh http://download.fedora.redhat.com/pub/fedora/linux/releases/11/Fedora/i386/os/Packages/fedora-release-11-1.noarch.rpm ; yum -y upgrade ; reboot

##### Listing only one repository with yum

   yum  list | grep my_repository_name

##### List all Centos intalled packages

   yum  list installed| awk '{print $1}'| grep -e "x86" -e "noarch" | grep -v -e '^@'| sort

##### install package which provides some libraries in fedora

   yum  whatprovides /usr/lib/libXX1.so /usr/lib/libXX2.so | grep fc | sed 's/^\(.*\)-[0-9.]*-.*$/\1/' | sort | uniq  | xargs yum -y install

##### Remove i386 RPM packages from x86_64 CentOS/RHEL

   yum  remove `rpm -qa qf "%{n}.%{arch}\n"|grep i386`

##### Remove i386 RPM packages from x86_64 CentOS/RHEL

   yum  remove \*.i\?86
