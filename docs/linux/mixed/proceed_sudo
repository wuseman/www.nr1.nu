# proceed_sudo

##### sudo for entire line (including pipes and redirects)

   proceed_sudo  () { sudor_command="`HISTTIMEFORMAT=\"\" history 1 | sed -r -e 's/^.*?sudor//' -e 's/\"/\\\"/g'`" ; sudo sh -c "$sudor_command"; }; alias sudor="proceed_sudo # "

##### sudo for entire line (including pipes and redirects)

   proceed_sudo  () { sudor_command="`HISTTIMEFORMAT=\"\" history 1 | sed -r -e 's/^.*?sudor//' -e 's/\"/\\\"/g'`" ; sudo sh -c "$sudor_command"; }; alias sudor="proceed_sudo # "
