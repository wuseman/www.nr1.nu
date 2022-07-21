# equery

##### Gentoo: Get the size of all installed packets, sorted

   equery  s | sed 's/(\|)/ /g' | sort -n -k 9 | gawk '{print $1" "$9/1048576"m"}'

##### Find the package a command belongs to on Gentoo

   equery  belongs $( which mv )
