# colordiff

##### diff remote and local sshd_configs

   colordiff  <(ssh user@host cat /etc/ssh/sshd_config) /etc/ssh/sshd_config

##### Use colordiff in side-by-side mode, and with automatic column widths.

   colordiff  -yW"`tput cols`" /path/to/file1 /path/to/file2

##### diff remote and local sshd_configs

   colordiff  <(ssh user@host cat /etc/ssh/sshd_config) /etc/ssh/sshd_config

##### Use colordiff in side-by-side mode, and with automatic column widths.

   colordiff  -yW"`tput cols`" /path/to/file1 /path/to/file2
