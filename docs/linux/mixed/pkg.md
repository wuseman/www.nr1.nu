# pkg

##### Find which package a file belongs to on Solaris

   pkg chk -l -p <full path to the file>

##### archlinux: find more commands provided by the package owning some command

   pkg file -lb `pkgfile <command>`

##### Solaris 11, test which version your IPS pkg will update you to.

   pkg  update -nv | sed -n '/entire/{N;p;}'

##### Search OpenSolaris packages and show only the pkg names

   pkg  search SEARCH_TERM | awk '{print $NF}' | sed -e 's;.*/\(.*\)\@.*;\1;' | sort -u

##### archlinux: find more commands provided by the package owning some command

   pkg file -lb `pkgfile <command>`

##### Solaris 11, test which version your IPS pkg will update you to.

   pkg  update -nv | sed -n '/entire/{N;p;}'

##### Search OpenSolaris packages and show only the pkg names

   pkg  search SEARCH_TERM | awk '{print $NF}' | sed -e 's;.*/\(.*\)\@.*;\1;' | sort -u
