# color

##### print text in colors green, cyan, blue or red (see sample output for usage)

   color  () { local color=39; local bold=0; case $1 in green) color=32;; cyan) color=36;; blue) color=34;; gray) color=37;; darkgrey) color=30;; red) color=31;; esac; if [[ "$2" == "bold" ]]; then bold=1; fi; echo -en "\033[${bold};${color}m"; }

##### Colorize make, gcc, and diff output

   color make, colorgcc, colordiff

##### ANSI Terminal Color Test using python

   color test-python

##### diff remote and local sshd_configs

   color diff <(ssh user@host cat /etc/ssh/sshd_config) /etc/ssh/sshd_config

##### Turns red the stderr output

   color ()(set -o pipefail;"$@" 2>&1>&3|sed $'s,.*,\e[31m&\e[m,'>&2)3>&1

##### Use colordiff in side-by-side mode, and with automatic column widths.

   color diff -yW"`tput cols`" /path/to/file1 /path/to/file2

##### print text in colors green, cyan, blue or red (see sample output for usage)

   color  () { local color=39; local bold=0; case $1 in green) color=32;; cyan) color=36;; blue) color=34;; gray) color=37;; darkgrey) color=30;; red) color=31;; esac; if [[ "$2" == "bold" ]]; then bold=1; fi; echo -en "\033[${bold};${color}m"; }

##### Colorize make, gcc, and diff output

   color make, colorgcc, colordiff

##### ANSI Terminal Color Test using python

   color test-python

##### diff remote and local sshd_configs

   color diff <(ssh user@host cat /etc/ssh/sshd_config) /etc/ssh/sshd_config

##### Turns red the stderr output

   color ()(set -o pipefail;"$@" 2>&1>&3|sed $'s,.*,\e[31m&\e[m,'>&2)3>&1

##### Use colordiff in side-by-side mode, and with automatic column widths.

   color diff -yW"`tput cols`" /path/to/file1 /path/to/file2
