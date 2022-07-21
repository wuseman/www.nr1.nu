# pacman

##### how many packages installed on your archlinux?

   pacman  -Q|wc -l

##### Arch Linux sort installed packages by size

   pacman  -Qi | grep 'Name\|Size\|Description' | cut -d: -f2 | paste  - - - | awk -F'\t' '{ print $2, "\t", $1, "\t", $3 }' | sort -rn

##### Remove orphaned dependencies on Arch

   pacman  -Qdt -q | xargs pacman noconfirm -R

##### Ergo browsing 'pacman' queries (Arch)

   pacman  -Ss python |  paste - - | grep color=always -e '/python' | less -R

##### archlinux: check which repository packages have updates available

   pacman  -Qu

##### archlinux: shows list of packages that are no longer needed

   pacman  -Qdt

##### Arch Linux sort installed packages by size

   pacman  -Qi | grep 'Name\|Size\|Description' | cut -d: -f2 | paste - - - | awk -F'\t' 'BEGIN{ s["MiB"]=1024; s["KiB"]=1;} {split($3, a, " "); print a[1] * s[a[2]], "KiB", $1}' | sort -n

##### pacman install list of packages

   pacman  -Q | grep -v pacman | cut -d' ' -f1 > packages.txt && pacman -Sy `cat packages.txt` noconfirm

##### archlinux: shows list of files installed by a package

   pacman  -Ql gvim

##### archlinux: shows which package created a given file

   pacman  -Qo /etc/yaourtrc

##### Arch Linux sort installed packages by size

   pacman  -Qi $(pacman -Qq)|grep 'Name\|Size'| cut -d: -f2 | paste - - | column -t | sort -nk2

##### how many packages installed on your archlinux?

   pacman  -Q|wc -l

##### Remove orphaned dependencies on Arch

   pacman  -Qdt -q | xargs pacman noconfirm -R

##### Ergo browsing 'pacman' queries (Arch)

   pacman  -Ss python |  paste - - | grep color=always -e '/python' | less -R

##### archlinux: check which repository packages have updates available

   pacman  -Qu

##### archlinux: shows list of packages that are no longer needed

   pacman  -Qdt

##### Arch Linux sort installed packages by size

   pacman  -Qi | grep 'Name\|Size\|Description' | cut -d: -f2 | paste - - - | awk -F'\t' 'BEGIN{ s["MiB"]=1024; s["KiB"]=1;} {split($3, a, " "); print a[1] * s[a[2]], "KiB", $1}' | sort -n

##### pacman install list of packages

   pacman  -Q | grep -v pacman | cut -d' ' -f1 > packages.txt && pacman -Sy `cat packages.txt` noconfirm
