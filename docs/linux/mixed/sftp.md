# sftp

##### Given NOPASSWD privileges on a remote SSH server, sftp as root via sudo

   sftp  -s "sudo /usr/lib/sftp-server" user@host

##### Connect via sftp to a specific port

   sftp  -p port user@host

##### Connect via sftp to a specific port

   sftp  -oPort=3476 user@host

##### Copy files to a remote host with SFTP with a leading dot, then rename them to the real file name

   sftp -cp() { for each in "$@"; do echo "put \"$each\" \".$each\""; echo "rename \".$each\" \"$each\""; done };

##### Connect via sftp to a specific port

   sftp  -oPort=3476 user@host

##### Copy files to a remote host with SFTP with a leading dot, then rename them to the real file name

   sftp -cp() { for each in "$@"; do echo "put \"$each\" \".$each\""; echo "rename \".$each\" \"$each\""; done };
