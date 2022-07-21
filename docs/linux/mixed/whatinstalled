# whatinstalled

##### Find the package that installed a command

   whatinstalled () { which "$@" | xargs -r readlink -f | xargs -r dpkg -S ;}

##### Find the package that installed a command

   whatinstalled  () { local cmdpath=$(realpath -eP $(which -a $1 | grep -E "^/" | tail -n 1) 2>/dev/null) && [ -x "$cmdpath" ] && dpkg -S $cmdpath 2>/dev/null | grep -E ": $cmdpath\$" | cut -d ":" -f 1; }

##### Find the package that installed a command

   whatinstalled () { which "$@" | xargs -r readlink -f | xargs -r dpkg -S ;}

##### Find the package that installed a command

   whatinstalled  () { local cmdpath=$(realpath -eP $(which -a $1 | grep -E "^/" | tail -n 1) 2>/dev/null) && [ -x "$cmdpath" ] && dpkg -S $cmdpath 2>/dev/null | grep -E ": $cmdpath\$" | cut -d ":" -f 1; }
