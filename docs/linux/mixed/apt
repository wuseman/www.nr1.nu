# apt

##### Learn how to stop mistyping "ls" the fun way

   apt -get install sl; sl

##### Check the apt security keys

   apt -key list

##### Show a Package Version on Debian based distribution

   apt -show-versions <packagename>

##### know which version of the program is installed on your Debian and derivatives

   apt itude show $PROGRAM | grep Vers

##### Find packages on Ubuntu/Debian based on their description

   apt itude search ~d<string>

##### Bulk install

   apt -cache search perl | grep module | awk '{print $1;}' | xargs sudo apt-get install -y

##### Determine MythTV Version on a Debian System

   apt -cache policy mythtv

##### Remove all unused kernels with apt-get

   apt itude remove $(dpkg -l|egrep '^ii  linux-(im|he)'|awk '{print $2}'|grep -v `uname -r`)

##### Show the meta information on a package (dependency , statuts ..) on debian derivative distro

   apt -cache show Your_package

##### Display a list of upgradeable packages (apt)

   apt -show-versions -u

##### Remove unused libs/packages in debian-based distros

   apt -get remove `deborphan`

##### Lists installed kernels

   apt itude search \~ilinux-image

##### Show the meta information on a package (dependency , statuts ..) on debian derivative distro

   apt itude show packages_name

##### Remove all unused kernels with apt-get

   apt itude purge linux-image | grep ^i | grep -v $(uname -r)

##### Refined repository search

   apt -get search something | grep specific

##### Search for available software on a debian package system (Ubuntu)

   apt itude search NAME

##### Have you mooed today?

   apt -get moo

##### Search for APT Packages

   apt -cache search php5

##### Remove all unused kernels with apt-get

   apt itude remove $(dpkg -l|awk '/^ii  linux-image-2/{print $2}'|sed 's/linux-image-//'|awk -v v=`uname -r` 'v>$0'|sed 's/-generic//'|awk '{printf("linux-headers-%s\nlinux-headers-%s-generic\nlinux-image-%s-generic\n",$0,$0,$0)}')

##### Generate a graph of package dependencies

   apt -cache dotty apache2 | dot -T png | display

##### search ubuntu packages to find which package contains the executable program programname

   apt -file find bin/programname

##### ubuntu easter eggs

   apt -get moo

##### aptitude easter eggs

   apt itude moo

##### Colorful man

   apt -get install most && update-alternatives set pager /usr/bin/most

##### Show Apt/Dpkg configuration

   apt -config dump

##### Find the package a command belongs to on debian-based distros

   apt -file search iostat

##### Search for packages, ranked by popularity

   apt -popcon() { (echo \#rank; apt-cache search "$@" |awk '$1 !~ /^lib/ {print " "$1" "}') |grep -Ff- <(wget -qqO- http://popcon.debian.org/by_inst.gz |gunzip); }

##### How to know the total number of packages available

   apt -cache stats

##### Bulk install

   apt itude install '?and(~nlib.*perl, ~Dmodule)'

##### List available upgrades from apt without upgrading the system

   apt -get just-print upgrade

##### Create package dependency graph

   apt -cache dotty PKG-NAME | dot -Tpng | display

##### Show a Package Version on Debian based distribution

   apt -cache show pkgname | grep -i "version:"

##### Enable programmable bash completion in debian lenny

   apt itude install bash-completion ; source /etc/bash_completion

##### Purge configuration files of removed packages on  debian based systems

   apt itude purge '~c'

##### List total available upgrades from apt without upgrading the system

   apt -get -s upgrade | awk '/[0-9]+ upgraded,/ {print $1 " package updates are available"}'

##### List manually installed packages (excluding Essentials)

   apt itude search '~i!~E' | grep -v "i A" | cut -d " " -f 4

##### Deploy git server repo

   apt -get -y install git-core gitosis; adduser home /home/git gecos "git user" git; su git -c "ssh-keygen -t rsa -f /home/git/.ssh/id_rsa; gitosis-init < ~/.ssh/id_rsa"

##### Remove all unused kernels with apt-get

   apt itude remove ?and(~i~nlinux-(im|he) ?not(~n`uname -r`))

##### Cancel all aptitude scheduled actions

   apt itude keep-all

##### Shows all packages installed that are recommended by other packages

   apt itude search '?and( ?automatic(?reverse-recommends(?installed)), ?not(?automatic(?reverse-depends(?installed))) )'

##### Remove specific versions of old kernels (Ubuntu/Debian)

   apt  purge linux*{14..18}*

##### List available upgrades from apt (package names only)

   apt -get -s upgrade | awk '/Inst.+/ {print $2}'

##### print the name of each package APT knows [matching a prefix]

   apt -cache pkgnames linux-

##### locating packages held back, such as with "aptitude hold <package>"

   apt itude search ~ahold

##### Aptitude pattern match

   apt itude purge remove ~i^foo ~i^bar

##### List upgrade-able packages on Ubuntu

   apt -get ignore-hold allow-unauthenticated -s dist-upgrade | grep ^Inst | cut -d ' ' -f2

##### apt-get via sudo

   apt -get () { [ "$1" = source ] && (command apt-get "$@";true) || sudo apt-get "$@" }

##### "Clone" a list of installed packages from one Debian/Ubuntu Server to another

   apt -get install `ssh root@host_you_want_to_clone "dpkg -l | grep ii" | awk '{print $2}'`

##### Purge configuration file of all desinstalled package

   apt itude purge ~c

##### Purge configuration file of all desinstalled package

   apt itude purge ~c

##### List available upgrades from apt without upgrading the system

   apt  list upgradable

##### Generate a list of installed packages on Debian-based systems

   apt itude search ~i -F %p

##### AllInOne package maintainance

   apt -get update && apt-get dist-upgrade -y show-progress && apt-get autoremove -y && apt-get check && apt-get autoclean -y

##### search package descriptions (apt)

   apt -cache search someregex

##### Removes all packages recommended by other packages

   apt itude remove '?and( ?automatic(?reverse-recommends(?installed)), ?not(?automatic(?reverse-depends(?installed))) )'

##### Seach for packages on Debian using regex.

   apt itude search ^tin

##### Remove unused libs/packages

   apt itude remove $(deborphan)

##### Install evertything with the prefix pidgin or wathever

   apt -cache search pidgin* | awk '{print$ 1}' | tr '\n' ' ' | xargs aptitude -y install

##### Install phpmyadmin in Debian 6

   apt -get install phpmyadmin; echo "Include /etc/phpmyadmin/apache.conf" >> /etc/apache2/apache2.conf; service apache2 restart

##### repository search

   apt itude search ~d "irc client"|grep -i "irc client"

##### Show a Package Version on Debian based distribution

   apt itude -F '%p %v#' search <pattern>

##### Quick and dirty list of installed packages on deb based system

   apt -cache -n dumpavail | grep 'Package:' | awk '{print $2 }'

##### Atualizar Ubuntu

   apt -get update -y && apt-get upgrade -y && apt-get dist-upgrade -y && apt-get autoremove -y && apt-get autoclean -y

##### Check the package is installed or not. There will show the package name which is installed.

   apt -show-versions | grep '\bpython\b'

##### Show package dependencies with apt

   apt -cache depends <packagename>

##### Show package reverse dependencies with apt

   apt -cache rdepends <packagename>

##### Marks all manually installed deb packages as automatically installed.

   apt itude -F "%p" search \!~M~i~T | xargs apt-mark markauto

##### Print sorted list of all installed packages (Debian)

   apt itude search -F "%p" disable-columns ~i

##### Search packages beginning with the letter

   apt itude search ~n^s.*

##### Purge all broken packages on ubuntu

   apt itude purge $(dpkg -l|grep ^rc|awk '{ print $2 }')

##### Displays all available firmware you can get (non-free) in a Debian system

   apt -file package-only search /lib/firmware

##### Displays all installed firmware in your Debian sytem

   apt itude search ~i ~nfirmware

##### Remove all unused kernels with apt-get

   apt -get remove $(dpkg -l | awk "/^ii  linux-(image|headers)/ && ! /`uname -r`/ {print \$2}")

##### Remove all unused kernels with apt-get

   apt itude remove $(dpkg -l|egrep '^ii  linux-(im|he)'|awk '{print $2}'|grep -v `uname -r`)

##### Remove all unused kernels with apt-get

   apt itude remove $(dpkg -l|awk '/^ii  linux-image-2/{print $2}'|sed 's/linux-image-//'|awk -v v=`uname -r` 'v>$0'|sed 's/-generic//'|awk '{printf("linux-headers-%s\nlinux-headers-%s-generic\nlinux-image-%s-generic\n",$0,$0,$0)}')

##### Generate a graph of package dependencies

   apt -cache dotty apache2 | dot -T png | display

##### search ubuntu packages to find which package contains the executable program programname

   apt -file find bin/programname

##### ubuntu easter eggs

   apt -get moo

##### aptitude easter eggs

   apt itude moo

##### Colorful man

   apt -get install most && update-alternatives set pager /usr/bin/most

##### Show Apt/Dpkg configuration

   apt -config dump

##### Find the package a command belongs to on debian-based distros

   apt -file search iostat

##### Search for packages, ranked by popularity

   apt -popcon() { (echo \#rank; apt-cache search "$@" |awk '$1 !~ /^lib/ {print " "$1" "}') |grep -Ff- <(wget -qqO- http://popcon.debian.org/by_inst.gz |gunzip); }

##### How to know the total number of packages available

   apt -cache stats

##### Bulk install

   apt itude install '?and(~nlib.*perl, ~Dmodule)'

##### List available upgrades from apt without upgrading the system

   apt -get just-print upgrade

##### Create package dependency graph

   apt -cache dotty PKG-NAME | dot -Tpng | display

##### Show a Package Version on Debian based distribution

   apt -cache show pkgname | grep -i "version:"

##### Enable programmable bash completion in debian lenny

   apt itude install bash-completion ; source /etc/bash_completion

##### Purge configuration files of removed packages on  debian based systems

   apt itude purge '~c'

##### List total available upgrades from apt without upgrading the system

   apt -get -s upgrade | awk '/[0-9]+ upgraded,/ {print $1 " package updates are available"}'

##### List manually installed packages (excluding Essentials)

   apt itude search '~i!~E' | grep -v "i A" | cut -d " " -f 4

##### Deploy git server repo

   apt -get -y install git-core gitosis; adduser home /home/git gecos "git user" git; su git -c "ssh-keygen -t rsa -f /home/git/.ssh/id_rsa; gitosis-init < ~/.ssh/id_rsa"

##### Remove all unused kernels with apt-get

   apt itude remove ?and(~i~nlinux-(im|he) ?not(~n`uname -r`))

##### Cancel all aptitude scheduled actions

   apt itude keep-all

##### Shows all packages installed that are recommended by other packages

   apt itude search '?and( ?automatic(?reverse-recommends(?installed)), ?not(?automatic(?reverse-depends(?installed))) )'

##### Remove specific versions of old kernels (Ubuntu/Debian)

   apt  purge linux*{14..18}*

##### List available upgrades from apt (package names only)

   apt -get -s upgrade | awk '/Inst.+/ {print $2}'

##### print the name of each package APT knows [matching a prefix]

   apt -cache pkgnames linux-

##### locating packages held back, such as with "aptitude hold <package>"

   apt itude search ~ahold

##### Aptitude pattern match

   apt itude purge remove ~i^foo ~i^bar

##### List upgrade-able packages on Ubuntu

   apt -get ignore-hold allow-unauthenticated -s dist-upgrade | grep ^Inst | cut -d ' ' -f2

##### apt-get via sudo

   apt -get () { [ "$1" = source ] && (command apt-get "$@";true) || sudo apt-get "$@" }

##### "Clone" a list of installed packages from one Debian/Ubuntu Server to another

   apt -get install `ssh root@host_you_want_to_clone "dpkg -l | grep ii" | awk '{print $2}'`

##### Purge configuration file of all desinstalled package

   apt itude purge ~c

##### Purge configuration file of all desinstalled package

   apt itude purge ~c

##### List available upgrades from apt without upgrading the system

   apt  list upgradable

##### Generate a list of installed packages on Debian-based systems

   apt itude search ~i -F %p

##### AllInOne package maintainance

   apt -get update && apt-get dist-upgrade -y show-progress && apt-get autoremove -y && apt-get check && apt-get autoclean -y

##### search package descriptions (apt)

   apt -cache search someregex

##### Removes all packages recommended by other packages

   apt itude remove '?and( ?automatic(?reverse-recommends(?installed)), ?not(?automatic(?reverse-depends(?installed))) )'

##### Seach for packages on Debian using regex.

   apt itude search ^tin

##### Remove unused libs/packages

   apt itude remove $(deborphan)

##### Install evertything with the prefix pidgin or wathever

   apt -cache search pidgin* | awk '{print$ 1}' | tr '\n' ' ' | xargs aptitude -y install

##### Install phpmyadmin in Debian 6

   apt -get install phpmyadmin; echo "Include /etc/phpmyadmin/apache.conf" >> /etc/apache2/apache2.conf; service apache2 restart

##### repository search

   apt itude search ~d "irc client"|grep -i "irc client"

##### Show a Package Version on Debian based distribution

   apt itude -F '%p %v#' search <pattern>

##### Quick and dirty list of installed packages on deb based system

   apt -cache -n dumpavail | grep 'Package:' | awk '{print $2 }'

##### Atualizar Ubuntu

   apt -get update -y && apt-get upgrade -y && apt-get dist-upgrade -y && apt-get autoremove -y && apt-get autoclean -y

##### Check the package is installed or not. There will show the package name which is installed.

   apt -show-versions | grep '\bpython\b'

##### Show package dependencies with apt

   apt -cache depends <packagename>

##### Show package reverse dependencies with apt

   apt -cache rdepends <packagename>

##### Marks all manually installed deb packages as automatically installed.

   apt itude -F "%p" search \!~M~i~T | xargs apt-mark markauto

##### Print sorted list of all installed packages (Debian)

   apt itude search -F "%p" disable-columns ~i
