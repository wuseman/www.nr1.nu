# vimdiff

##### use vim to get colorful diff output

   vimdiff  file1 file2

##### vimdiff local and remote files via ssh

   vimdiff  /path/to/file scp://remotehost//path/to/file

##### vimdiff to remotehost

   vimdiff  tera.py <(ssh -A testserver "cat tera.py")

##### get colorful side-by-side diffs of files in svn with vim

   vimdiff  <(svn cat "$1") "$1"

##### start vim in diff mode

   vimdiff  file{1,2}

##### Colored diff ( via vim ) on 2 remotes files on your local computer.

   vimdiff  scp://root@server-foo.com//etc/snmp/snmpd.conf scp://root@server-bar.com//etc/snmp/snmpd.conf

##### Compare a remote file with a local file

   vimdiff  scp://[user@]host1/<file> scp://[user@]host2/<file>

##### Compare local and remote files using SCP/VIM/DIFF

   vimdiff  local_dir1/local_file.xml scp://user@remote_host//remote_absolute_location/remote_file.xml

##### Compare a file with the output of a command or compare the output of two commands

   vimdiff  foo.c <(bzr cat -r revno:-2 foo.c)

##### Compare a remote file with a local file

   vimdiff  <file> scp://[<user>@]<host>/<file>

##### vimdiff local and remote files via ssh

   vimdiff  /path/to/file scp://remotehost//path/to/file

##### vimdiff to remotehost

   vimdiff  tera.py <(ssh -A testserver "cat tera.py")

##### get colorful side-by-side diffs of files in svn with vim

   vimdiff  <(svn cat "$1") "$1"

##### start vim in diff mode

   vimdiff  file{1,2}

##### Colored diff ( via vim ) on 2 remotes files on your local computer.

   vimdiff  scp://root@server-foo.com//etc/snmp/snmpd.conf scp://root@server-bar.com//etc/snmp/snmpd.conf

##### Compare a remote file with a local file

   vimdiff  scp://[user@]host1/<file> scp://[user@]host2/<file>

##### Compare local and remote files using SCP/VIM/DIFF

   vimdiff  local_dir1/local_file.xml scp://user@remote_host//remote_absolute_location/remote_file.xml

##### Compare a file with the output of a command or compare the output of two commands

   vimdiff  foo.c <(bzr cat -r revno:-2 foo.c)

##### Compare a remote file with a local file

   vimdiff  <file> scp://[<user>@]<host>/<file>
