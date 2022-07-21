# which

##### locate a command

   which  somecommand

##### Do I have this command?

   which  <command> > /dev/null 2>&1 && echo Success!

##### Returns the absolute path to a command, using which if needed

   which  any_path/a_command.sh | sed "s|^./|$(pwd)|"

##### shows the full path of shell commands

   which  command

##### search for a file in PATH

   which  <filename>

##### Find the package a command belongs to on debian-based distros

   which pkg () { dpkg -S $1 | egrep -w $(readlink -f "$(which $1)")$; }

##### shortcut to immediately view any script with less

   which  script | xargs less

##### Find the package a command belongs to on rpm-based distros

   which pkg() { rpm -qf "$@"; }

##### Which PATH variable should I use for this scirpt?

   which path() { local -A path; local c p; for c; do p=$(type -P "$c"); p=${p%/*}; path[${p:-/}]=1; done; local IFS=:; printf '%s\n' "${!path[*]}"; }

##### shows the full path of shell commands

   which  command

##### search for a file in PATH

   which  <filename>

##### Find the package a command belongs to on debian-based distros

   which pkg () { dpkg -S $1 | egrep -w $(readlink -f "$(which $1)")$; }

##### shortcut to immediately view any script with less

   which  script | xargs less

##### Find the package a command belongs to on rpm-based distros

   which pkg() { rpm -qf "$@"; }

##### Which PATH variable should I use for this scirpt?

   which path() { local -A path; local c p; for c; do p=$(type -P "$c"); p=${p%/*}; path[${p:-/}]=1; done; local IFS=:; printf '%s\n' "${!path[*]}"; }
