# aptitude

##### know which version of the program is installed on your Debian and derivatives

   aptitude  show $PROGRAM | grep Vers

##### Find packages on Ubuntu/Debian based on their description

   aptitude  search ~d<string>

##### Remove all unused kernels with apt-get

   aptitude  remove $(dpkg -l|egrep '^ii  linux-(im|he)'|awk '{print $2}'|grep -v `uname -r`)

##### Lists installed kernels

   aptitude  search \~ilinux-image

##### Show the meta information on a package (dependency , statuts ..) on debian derivative distro

   aptitude  show packages_name

##### Remove all unused kernels with apt-get

   aptitude  purge linux-image | grep ^i | grep -v $(uname -r)

##### Search for available software on a debian package system (Ubuntu)

   aptitude  search NAME

##### Remove all unused kernels with apt-get

   aptitude  remove $(dpkg -l|awk '/^ii  linux-image-2/{print $2}'|sed 's/linux-image-//'|awk -v v=`uname -r` 'v>$0'|sed 's/-generic//'|awk '{printf("linux-headers-%s\nlinux-headers-%s-generic\nlinux-image-%s-generic\n",$0,$0,$0)}')

##### aptitude easter eggs

   aptitude  moo

##### Bulk install

   aptitude  install '?and(~nlib.*perl, ~Dmodule)'

##### Enable programmable bash completion in debian lenny

   aptitude  install bash-completion ; source /etc/bash_completion

##### Purge configuration files of removed packages on  debian based systems

   aptitude  purge '~c'

##### List manually installed packages (excluding Essentials)

   aptitude  search '~i!~E' | grep -v "i A" | cut -d " " -f 4

##### Remove all unused kernels with apt-get

   aptitude  remove ?and(~i~nlinux-(im|he) ?not(~n`uname -r`))

##### Cancel all aptitude scheduled actions

   aptitude  keep-all

##### Shows all packages installed that are recommended by other packages

   aptitude  search '?and( ?automatic(?reverse-recommends(?installed)), ?not(?automatic(?reverse-depends(?installed))) )'

##### locating packages held back, such as with "aptitude hold <package>"

   aptitude  search ~ahold

##### Aptitude pattern match

   aptitude  purge remove ~i^foo ~i^bar

##### Purge configuration file of all desinstalled package

   aptitude  purge ~c

##### Purge configuration file of all desinstalled package

   aptitude  purge ~c

##### Generate a list of installed packages on Debian-based systems

   aptitude  search ~i -F %p

##### Removes all packages recommended by other packages

   aptitude  remove '?and( ?automatic(?reverse-recommends(?installed)), ?not(?automatic(?reverse-depends(?installed))) )'

##### Seach for packages on Debian using regex.

   aptitude  search ^tin

##### Remove unused libs/packages

   aptitude  remove $(deborphan)

##### repository search

   aptitude  search ~d "irc client"|grep -i "irc client"

##### Show a Package Version on Debian based distribution

   aptitude  -F '%p %v#' search <pattern>

##### Marks all manually installed deb packages as automatically installed.

   aptitude  -F "%p" search \!~M~i~T | xargs apt-mark markauto

##### Print sorted list of all installed packages (Debian)

   aptitude  search -F "%p" disable-columns ~i

##### Search packages beginning with the letter

   aptitude  search ~n^s.*

##### Purge all broken packages on ubuntu

   aptitude  purge $(dpkg -l|grep ^rc|awk '{ print $2 }')

##### Displays all installed firmware in your Debian sytem

   aptitude  search ~i ~nfirmware

##### Remove all unused kernels with apt-get

   aptitude  remove $(dpkg -l|egrep '^ii  linux-(im|he)'|awk '{print $2}'|grep -v `uname -r`)

##### Remove all unused kernels with apt-get

   aptitude  remove $(dpkg -l|awk '/^ii  linux-image-2/{print $2}'|sed 's/linux-image-//'|awk -v v=`uname -r` 'v>$0'|sed 's/-generic//'|awk '{printf("linux-headers-%s\nlinux-headers-%s-generic\nlinux-image-%s-generic\n",$0,$0,$0)}')

##### aptitude easter eggs

   aptitude  moo

##### Bulk install

   aptitude  install '?and(~nlib.*perl, ~Dmodule)'

##### Enable programmable bash completion in debian lenny

   aptitude  install bash-completion ; source /etc/bash_completion

##### Purge configuration files of removed packages on  debian based systems

   aptitude  purge '~c'

##### List manually installed packages (excluding Essentials)

   aptitude  search '~i!~E' | grep -v "i A" | cut -d " " -f 4

##### Remove all unused kernels with apt-get

   aptitude  remove ?and(~i~nlinux-(im|he) ?not(~n`uname -r`))

##### Cancel all aptitude scheduled actions

   aptitude  keep-all

##### Shows all packages installed that are recommended by other packages

   aptitude  search '?and( ?automatic(?reverse-recommends(?installed)), ?not(?automatic(?reverse-depends(?installed))) )'

##### locating packages held back, such as with "aptitude hold <package>"

   aptitude  search ~ahold

##### Aptitude pattern match

   aptitude  purge remove ~i^foo ~i^bar

##### Purge configuration file of all desinstalled package

   aptitude  purge ~c

##### Purge configuration file of all desinstalled package

   aptitude  purge ~c

##### Generate a list of installed packages on Debian-based systems

   aptitude  search ~i -F %p

##### Removes all packages recommended by other packages

   aptitude  remove '?and( ?automatic(?reverse-recommends(?installed)), ?not(?automatic(?reverse-depends(?installed))) )'

##### Seach for packages on Debian using regex.

   aptitude  search ^tin

##### Remove unused libs/packages

   aptitude  remove $(deborphan)

##### repository search

   aptitude  search ~d "irc client"|grep -i "irc client"

##### Show a Package Version on Debian based distribution

   aptitude  -F '%p %v#' search <pattern>

##### Marks all manually installed deb packages as automatically installed.

   aptitude  -F "%p" search \!~M~i~T | xargs apt-mark markauto

##### Print sorted list of all installed packages (Debian)

   aptitude  search -F "%p" disable-columns ~i
