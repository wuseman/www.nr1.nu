# eselect

##### enable all bash completions in gentoo

   eselect  bashcomp enable global  $(eselect bashcomp list | sed -e 's/ //g'| cut -d']' -f2 | sed -e 's/\*//'| xargs)

##### enable all bash completions in gentoo

   eselect  bashcomp enable global  $(eselect bashcomp list | sed -e 's/ //g'| cut -d']' -f2 | sed -e 's/\*//'| xargs)
