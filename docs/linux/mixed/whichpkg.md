# whichpkg

##### Find the package a command belongs to on debian-based distros

   whichpkg  () { dpkg -S $1 | egrep -w $(readlink -f "$(which $1)")$; }

##### Find the package a command belongs to on rpm-based distros

   whichpkg () { rpm -qf "$@"; }

##### Find the package a command belongs to on debian-based distros

   whichpkg  () { dpkg -S $1 | egrep -w $(readlink -f "$(which $1)")$; }

##### Find the package a command belongs to on rpm-based distros

   whichpkg () { rpm -qf "$@"; }
