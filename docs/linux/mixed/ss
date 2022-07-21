# ss

##### Mount folder/filesystem through SSH

   ss hfs name@server:/path/to/folder /path/to/mount/point

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### Mount folder/filesystem through SSH

   ss hfs name@server:/path/to/folder /path/to/mount/point

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### Mount folder/filesystem through SSH

   ss hfs name@server:/path/to/folder /path/to/mount/point

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### Mount folder/filesystem through SSH

   ss hfs name@server:/path/to/folder /path/to/mount/point

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### Mount folder/filesystem through SSH

   ss hfs name@server:/path/to/folder /path/to/mount/point

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### Remove a line in a text file. Useful to fix

   ss h-keygen -R <the_offending_host>

##### Attach screen over ssh

   ss h -t remote_host screen -r

##### directly ssh to host B that is only accessible through host A

   ss h -t hostA ssh hostB

##### Remove a line in a text file. Useful to fix

   ss h-keygen -R <the_offending_host>

##### Attach screen over ssh

   ss h -t remote_host screen -r

##### directly ssh to host B that is only accessible through host A

   ss h -t hostA ssh hostB

##### Lookup autonomous systems of all outgoing http/s traffic

   ss  -t -o state established '( dport = :443 || dport = :80 )' | grep -Po '([0-9a-z:.]*)(?=:http[s])' | sort -u|netcat whois.cymru.com 43|grep -v "AS Name"|sort -t'|' -k3

##### Recover remote tar backup with ssh

   ss h user@host "cat /path/to/backup/backupfile.tar.bz2" |tar jpxf -

##### Send notification bubbles to the computers remotely.

   ss h -X user@host 'DISPLAY=:0 notify-send "TEST MESSAGE."'

##### dump a remote db via ssh and populate local db with postgres

   ss h user@remoteserver "PGPASSWORD='passwd' pg_dump -U user bd_name | bzip2 -zv9" | bzcat | psql -U user bd_name

##### Copy your ssh public key to a server from a machine that doesn't have ssh-copy-id

   ss h user@host -c 'nc -l 55555 >> ~/.ssh/authorized_keys' & nc HOSTNAME 55555 < ~/.ssh/id_rsa.pub

##### Copy ssh keys to user@host to enable password-less ssh logins.

   ss h-keygen ptaduri@c3pusas1

##### connect via ssh using mac address

   ss h root@`for ((i=100; i<=110; i++));do arp -a 192.168.1.$i; done | grep 00:35:cf:56:b2:2g | awk '{print $2}' | sed -e 's/(//' -e 's/)//'`

##### copy ssh id to remote host

   ss h-copy-id -i .ssh/id_rsa.pub username:password@remotehost.com

##### Quick way to play remote audio files locally ( Linux )

   ss h user@remote "cat /remote/music/dir/*.mp3" | mpg123 -

##### Mount folder/filesystem through SSH

   ss hfs name@server:/path/to/folder /path/to/mount/point

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### Get a MySQL DB dump from a remote machine

   ss h user@host "mysqldump -h localhost -u mysqluser -pP@$$W3rD databasename | gzip -cf" | gunzip -c > database.sql

##### ssh hostchange know_host improver

   ss hostnew () {sed -i "$1d" $HOME/.ssh/known_hosts ; }

##### To generate ssh keypair(public, private) which makes use of dsa as encryption algorithm

   ss h-keygen -t dsa -b 1024

##### remote ssh xdmcp session

   ss h -XfC -c blowfish user@host Xephyr dpms -fullscreen  -query localhost :5

##### Add EC2 pem key to SSH

   ss h-add ~/.ssh/KEY_PAIR_NAME.pem

##### Function to bind MySQL hostport to forward remote MySQL connection to localhost.

   ss hmysql() { ssh -L 13306:127.0.0.1:3306 -N $* & }

##### Login via SSH

   ss h -l <username> <server>

##### Login To SSH Server / Provide SSH Password Using A Shell Script

   ss hpass -p 't@uyM59bQ' ssh username@server.example.com

##### Forward connections

   ss h -g -L 8080:localhost:80 root@$HOST

##### Forward remote server CUPS port to localhost

   ss h -NL 12345:localhost:631 username@remote_server

##### tail a log over ssh

   ss h remotebox tail -f /var/log/remotelog

##### Run Remote GUI Programs Using SSH Forwarding

   ss h -C -X user@remotehost gui_command

##### Mount folder/filesystem through SSH

   ss hfs name@server:/path/to/folder /path/to/mount/point

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### Copy ssh keys to user@host to enable password-less ssh logins.

   ss h-copy-id [-i [identity_file]] [user@]machine

##### How to run a specific command in remote server by ssh

   ss h user@remotehost [anycommand](i.e uptime,w)

##### ssh and attach to a screen in one line.

   ss h -t user@host screen -x <screen name>

##### show you the time when you lost the remote server.

   ss h remotehosts;date

##### Execute sudo command remotely with ssh

   ss h -t myserver.org 'sudo ls /etc'

##### Duplicate installed packages from one machine to the other (RPM-based systems)

   ss h root@remote.host "rpm -qa" | xargs yum -y install

##### 3 Simple Steps to X11 Forward on Mac OS X

   ss h -X johndoe@123.456.789

##### Cute, but we already had this figured out when the Linux kids were still slurping down log-sized spliffs in the back of the microbus.

   ss h-keygen -R hostname

##### Running applications require X in ssh

   ss h -X -l user 192.168.1.25

##### use .ssh file to login the server

   ss h root@172.16.1.99 -i my_openssh_key.ssh -p 9999

##### Mount folder/filesystem through SSH

   ss hfs name@server:/path/to/folder /path/to/mount/point

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### Create an SSH tunnel for accessing your remote MySQL database with a local port

   ss h -CNL 3306:localhost:3306 user@site.com

##### Start an X app remotely

   ss h -f user@remote.ip DISPLAY=:0.0 smplayer movie.avi

##### Securely stream (and save) a file from a remote server

   ss h USER@HOST cat REMOTE_FILE.mp4 | tee LOCAL_FILE.mp4 | mplayer -

##### Create a local compressed tarball from remote host directory

   ss h user@host "tar -cf - /path/to/dir" | gzip > dir.tar.gz

##### Create an SSH connection (reverse tunnel) through your firewall.

   ss h -R 2001:localhost:22 [username]@[remote server ip]

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### Sync MySQL Servers via secure SSH-tunnel

   ss h -f -L3307:127.0.0.1:3306 -N -t -x user@host sleep 600 ; mk-table-sync execute verbose u=root,p=xxx,h=127.0.0.1,P=3307 u=root,p=xxx,h=localhost

##### poor man's vpn

   ss huttle dns -vvr user@server 0/0

##### Stream audio over ssh

   ss h [user]@[address] "mpg321 -" < [file].mp3

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### run complex remote shell cmds over ssh, without escaping quotes

   ss h host -l user $(<cmd.txt)

##### analyze traffic remotely over ssh w/ wireshark

   ss h root@server.com 'tshark -f "port !22" -w -' | wireshark -k -i -

##### How to establish a remote Gnu screen session that you can re-connect to

   ss h -t user@some.domain.com /usr/bin/screen -xRR

##### Copy a file over SSH without SCP

   ss h HOST cat < LOCALFILE ">" REMOTEFILE

##### ssh -A user@somehost

   ss h -A user@somehost

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### Record output of any command using 'tee' at backend; mainly can be used to capture the output of ssh from client side while connecting to a server.

   ss h user@server | tee logfilename

##### Run local bash script on remote server

   ss h -T user@server < script.sh

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### Transfer large files/directories with no overhead over the network

   ss h user@host "cd targetdir; tar cfp - *" | dd of=file.tar

##### Remove invalid key from the known_hosts file for the IP address of a host

   ss h-keygen -R `host hostname | cut -d " " -f 4`

##### Tell local Debian machine to install packages used by remote Debian machine

   ss h remotehost 'dpkg get-selections' | dpkg set-selections && dselect install

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### Setup an ssh tunnel

   ss f -f -N -L 4321:home.network.com:25 user@home.network.com

##### Remotely sniff traffic and pass to snort

   ss h root@pyramid \ "tcpdump -nn -i eth1 -w -" | snort -c /etc/snort/snort.conf -r -

##### Forward port 8888 to remote machine for SOCKS Proxy

   ss h -D 8888 user@site.com

##### Copy ssh keys to user@host to enable password-less ssh logins.

   ss h-copy-id user@host

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### Launch firefox on a remote linux server

   ss h -fY user@REMOTESERVER firefox -no-remote

##### Dump dvd from a different machine onto this one.

   ss h user@machine_A dd if=/dev/dvd0 > dvddump.iso

##### Backup entire system through SSH

   ss h -C USER@HOST tar -c exclude /proc exclude /sys / | tar -x

##### Mount folder/filesystem through SSH

   ss hfs name@server:/path/to/folder /path/to/mount/point

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### Reverse SSH

   ss h -f -N -R 8888:localhost:22 user@somedomain.org

##### setup a tunnel from destination machine port 80 to localhost 2001, via a second (hub) machine.

   ss h -N -L2001:localhost:80 -o "ProxyCommand ssh someuser@hubmachine nc -w 5 %h %p" someuser@destinationmachine

##### Create a persistent remote Proxy server through an SSH channel

   ss h -fND localhost:PORT USER@SSH_ENABLED_SERVER

##### Synchronize date and time with a server over ssh

   ss h user@server sudo date -s @`( date -u +"%s" )`

##### remote diff with side-by-side ordering.

   ss h $HOST -l$USER cat /REMOTE/FILE | sdiff /LOCAL/FILE -

##### Install your ssh key file on a remote system

   ss h user@remote 'cat >> ~/.ssh/authorized_keys2' < ~/.ssh/id_rsa.pub

##### Get ssh server fingerprints

   ss h-keygen -l -f /etc/ssh/ssh_host_rsa_key.pub && ssh-keygen -l -f /etc/ssh/ssh_host_dsa_key.pub

##### SSH Auto-login with password

   ss hpass -p "YOUR_PASSWORD" ssh -o StrictHostKeyChecking=no YOUR_USERNAME@SOME_SITE.COM

##### eavesdrop

   ss h USER@REMOTESYSTEM arecord - | aplay -

##### ssh: change directory while connecting

   ss h -t server 'cd /etc && $SHELL'

##### Single use vnc-over-ssh connection

   ss h -f -L 5900:localhost:5900 your.ssh.server "x11vnc -safer -localhost -nopw -once -display :0"; vinagre localhost:5900

##### SSH connection through host in the middle; with key redirection

   ss h -o "ProxyCommand ssh user@reachable_host -W %h:%p" user@unreacheable_host

##### Remote execute command as sudoer via ssh

   ss hpass -p 'sshpssword' ssh -t <sshuser>@<remotehost> "echo <sudopassword> | sudo -S <command>"

##### Get the version of sshd on a remote system

   ss h -vN hostname 2>&1 | grep "remote software version"

##### Create a local compressed tarball from remote host directory

   ss h user@host "tar -zcf - /path/to/dir" > dir.tar.gz

##### Transfer SSH public key to another machine in one step

   ss h-keygen; ssh-copy-id user@host; ssh user@host

##### Automatic ssh Session Logger

   ss h(){ L="\$HOME/logs/$(date +%F_%H:%M)-$USER";/usr/bin/ssh -t "$@" "mkdir -p \"${L%/*}\";screen -xRRS $USER script -f \"$L\"";}

##### "hidden" remote shell

   ss h -T user@host /bin/bash -i

##### Mount folder/filesystem through SSH

   ss hfs name@server:/path/to/folder /path/to/mount/point

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### send file to remote machine and unzip using ssh

   ss h user@host 'gunzip - > file' < file.gz

##### remote-pbzip2 and transfer a directory to local file

   ss h user@host 'tar -c use-compress-prog=pbzip2 /<dir>/<subdir>' > <localfile>.tar.bz2

##### Lookup autonomous systems of all outgoing http/s traffic

   ss  -t -o state established '( dport = :443 || dport = :80 )'|grep tcp|awk '{ print $5 }'|sed s/:http[s]*//g|sort -u|netcat whois.cymru.com 43|grep -v "AS Name"|sort -t'|' -k3

##### Harder, Faster, Stronger SSH clients

   ss h -4 -C -c blowfish-cbc

##### Change SSH RSA passphrase

   ss h-keygen -f ~/.ssh/id_rsa -p

##### gzip over ssh

   ss h 10.0.0.4 "cat /tmp/backup.sql | gzip -c1" | gunzip -c > backup.sql

##### Restore a local drive from the image on remote host via ssh

   ss h user@server 'dd if=sda.img' | dd of=/dev/sda

##### Copy from host 1 to host 2 through your host

   ss h root@host1 ?cd /somedir/tocopy/ && tar -cf ? .? | ssh root@host2 ?cd /samedir/tocopyto/ && tar -xf -?

##### Run a command on a remote machine

   ss h user@host "ps aux | grep httpd | wc -l"

##### Copy stdin to your X11 buffer

   ss h user@host cat /path/to/some/file | xclip

##### copy from host1 to host2, through your host

   ss h user@<source_host>  tar cz <path> | ssh user@<destination_host>  tar vxzC <path>

##### get a directory from one machine to another using tar and ssh

   ss h somemachine "cd some dir; tar zcpf - somedirname" |tar zxpf -

##### Stream audio over ssh ogg version

   ss h [user]@[host] "ogg123 -" < [podcast].ogg

##### Remove invalid key from the known_hosts file for the IP address of a host

   ss h-keygen -R $(dig +short host.domain.tld)

##### Backup a remote database to your local filesystem

   ss h user@host 'mysqldump dbname | gzip' > /path/to/backups/db-backup-`date +%Y-%m-%d`.sql.gz

##### Debug a remote php application (behind firewall) using ssh tunnel for XDEBUG port 9000

   ss h -R 9000:localhost:9000 you@remote-php-web-server.com

##### remove hostname from known_hosts

   ss h-keygen -R hostname

##### analyze traffic remotely over ssh w/ wireshark

   ss h user@server.com sudo tcpdump -i eth0  -w - 'port 80'| /Applications/Wireshark.app/Contents/Resources/bin/wireshark -k -i -

##### Mount folder/filesystem through SSH

   ss hfs name@server:/path/to/folder /path/to/mount/point

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### Remove a line from a file using sed (useful for updating known SSH server keys when they change)

   ss h-keygen -R <thehost>

##### copy from host1 to host2, through your host

   ss h root@host1 "cd /somedir/tocopy/ && tar -cf - ." | ssh root@host2 "cd /samedir/tocopyto/ && tar -xf -"

##### Forwards connections to your port 2000 to the port 22 of a remote host via ssh tunnel

   ss h -NL 2000:remotehost:22 remotehost

##### HTTP GET request on wireshark remotly

   ss h USER@HOST "sudo tshark -i eth0 -f 'tcp port 80 and tcp[((tcp[12:1] & 0xf0) >> 2):4] = 0x47455420' -w -" | wireshark -k -i -

##### Run any GUI program remotely

   ss h -fX <user>@<host> <program>

##### Get and read log from remote host (works with log on pipe, too)

   ss h remoteUser@remoteHost "tail -f /var/log/scs/remoteLogName" | tee localLogName

##### Copy files and directories from a remote machine to the local machine

   ss h user@host "(cd /path/to/remote/top/dir ; tar cvf - ./*)" | tar xvf -

##### Skip banner on ssh login prompt

   ss h -q user@server

##### Get backup from remote host, then expand in current directory using tar

   ss h -l username server.tdl "tar -czf - /home/username/public_html" | tar -xzf -

##### ssh batch jobs: query hundreds of hosts with an ssh command

   ss h -tq -o "BatchMode yes" $HOST  <some_command> >> to_a_file

##### sshfs usage

   ss hfs /root/Desktop/mountdirectory root@remotehost:/etc/

##### Mount folder/filesystem through SSH

   ss hfs name@server:/path/to/folder /path/to/mount/point

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### Copy your SSH public key on a remote machine for passwordless login - the easy way

   ss h-copy-id username@hostname

##### Copy your SSH public key on a remote machine for passwordless login - the easy way

   ss h-copy-id username@hostname

##### Tunnel ssh through Socks Proxy

   ss h -o ProxyCommand='nc -x ProxyHost:8080 %h %p' TargetHost

##### copy remote ssh session output to local clipboard

   ss h [remote-machine] "cat file" | xclip -selection c

##### tail -f a log file over ssh into growl

   ss h -t HOSTNAME 'tail -f LOGFILE' | while read; do growlnotify -t "TITLE" -m "$REPLY"; done

##### A command to copy mysql tables from a remote host to current host via ssh.

   ss h username@remotehost 'mysqldump -u <dbusername> -p<dbpassword> <dbname> tbl_name_1 tbl_name_2 tbl_name_3' | mysql -u <localusername> -p<localdbpassword> <localdbname> < /dev/stdin

##### test moduli file  generated  for openssh

   ss h-keygen -T moduli-2048 -f /tmp/moduli-2048.candidates

##### tunnel vnc port

   ss h -L 5900:localhost:5900 user@exampleserver.com

##### A command to copy mysql tables from a remote host to current host via ssh.

   ss h username@remotehost 'mysqldump -u <dbusername> -p<dbpassword> <dbname> tbl_name_1 tbl_name_2 tbl_name_3 | gzip -c -' | gzip -dc - | mysql -u <localusername> -p<localdbpassword> <localdbname>

##### tail a log over ssh

   ss h  -t remotebox "tail -f /var/log/remote.log"

##### Backup with SSH in a archive

   ss h -i $PRIVATEKEY $HOST -C 'cd $SOURCE; tar -cz numeric-owner .' | tee $DESTINATION/backup.tgz | tar -tz

##### backup system over ssh, exlucde common dirs

   ss h root@192.168.0.1 "cd /;nice -n 10 tar cvpP ?exclude={"/proc/*","/sys*","/tmp/*","/home/user/*"} /">backup.tar.gz

##### Validate openssh key & print checksum

   ss h-keygen -l -f [pubkey] | awk '{print $2}' | tr -ds ':' '' | egrep -ie "[a-f0-9]{32}"

##### Secure netcat chat - SSH

   ss h hostname nc -l 9876

##### Live stream a remote desktop over ssh using only ffmpeg

   ss h user@host "ffmpeg -f x11grab -r 5 -s 1280x720 -i :0 -f avi -" | ffplay - &>/dev/null

##### Don't save commands in bash history (only for current session)

   ss h user@hostname.domain "> ~/.bash_history"

##### Mount folder/filesystem through SSH

   ss hfs name@server:/path/to/folder /path/to/mount/point

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### Get listening ports on a localhost

   ss  -ln | awk '$3~/([0-9]+)/{print $3}' | sed 's/.*\:\([0-9]\+\)$/\1/'

##### ssh X tunneling over multiple ssh hosts (through ssh proxy)

   ss h -t -X -A user@sshproxy ssh -X -A user@sshhost

##### RDP through SSH tunnel

   ss h -f -L3389:<RDP_HOST>:3389 <SSH_PROXY> "sleep 10" && rdesktop -T'<WINDOW_TITLE>' -uAdministrator -g800x600 -a8 -rsound:off -rclipboard:PRIMARYCLIPBOARD -5 localhost

##### Remote screenshot

   ss h user@remote-host "DISPLAY=:0.0 import -window root -format png -"|display -format png -

##### analyze traffic remotely over ssh w/ wireshark

   ss h root@HOST tcpdump -U -s0 -w - 'not port 22' | wireshark -k -i -

##### Copy a folder tree through ssh using compression (no temporary files)

   ss h <host> 'tar -cz /<folder>/<subfolder>' | tar -xvz

##### Connect to google talk through ssh by setting your IM client to use the localhost 5432 port

   ss h -f -N -L 5432:talk.google.com:5222 user@home.network.com

##### Speed Up WAN File Transfer With Compression

   ss h 10.0.0.4 "gzip -c /tmp/backup.sql" |gunzip > backup.sql

##### copy public key

   ss h-copy-id host

##### Validate openssh key & print checksum

   ss h-keygen -l -f [pubkey] | cut -d ' ' -f 2 | tr -ds '\n:' ''

##### Import MySQL db to localhost.

   ss h remote_user@remote_host 'mysqldump -h localhost -u username -ppass -B db_name | gzip -cf' | gunzip -c | mysql -uroot

##### SSL tunnel to proxy remote mysql port

   ss h -T -N -L 23306:localhost:3306 root@mysql.domain.com

##### Mount folder/filesystem through SSH

   ss hfs name@server:/path/to/folder /path/to/mount/point

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### ssh to machine behind shared NAT

   ss h -NR 0.0.0.0:2222:127.0.0.1:22 user@jump.host.com

##### View ~/.ssh/known_hosts key information

   ss h-keygen -l -f ~/.ssh/known_hosts

##### Copy a file over SSH without SCP

   ss h username1@servername1 -t ssh username2@servername2 uuencode -m testfile1.tar - | uudecode > testfile1.tar

##### analyze traffic remotely over ssh w/ wireshark

   ss h root@HOST tcpdump -iany -U -s0 -w - 'not port 22' | wireshark -k -i -

##### Music streaming via ssh

   ss h login@server "cat path/filename.mp3" | mplayer -

##### Extract remote gzip tarball

   ss h user@remote "cat /path/to/archive.tgz" | tar zxvf -

##### list tomcat webapps

   ss h tomcat-server ls -l webapp-dir | grep  '->' | awk ' { print $(NF-2) " " $(NF-1) " " $NF; }'

##### Migrate wordpress db between two hosts changing the URL on the fly with encryption and compression

   ss h -q ${SRC_HOST} "mysqldump add-drop-database create-options databases wordpress | sed -r \"s/${OLD_URL}/${NEW_URL}/g\" | gzip -9" | ssh ${DST_HOST} "gunzip | mysql"

##### SSH monitor

   ss h root@server 'tail max-unchanged-stats=10 -n0 -F /var/log/auth.log ' | grep Accepted | while read l ; do kdialog title "SSH monitor" passivepopup "$l" 3; done

##### Copy uncommitted changes from remote git repository

   ss h HOST '(cd REPO_DIR && git diff name-only HEAD | cpio -o -Hnewc quiet)' | cpio -iduv quiet -Hnewc

##### Show apps that use internet connection at the moment. (Multi-Language)

   ss  -p

##### Create a persistent connection to a machine

   ss h -MNf <user>@<host>

##### Show apps that use internet connection at the moment. (Multi-Language)

   ss  -p

##### Create a persistent connection to a machine

   ss h -MNf <user>@<host>

##### Mount folder/filesystem through SSH

   ss hfs name@server:/path/to/folder /path/to/mount/point

##### Temporarily ignore mismatched SSH host key

   ss h -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no username@host

##### Put at the end of the rsa public key an comment(default value is the hostname)

   ss h-keygen -C hello@world

##### mount remote directory

   ss hfs user@host:/path/to/remote/dir local-mount-point

##### ssh-keygen -b 4048 -t rsa -C "comment"

   ss h-keygen -b 4048 -t rsa -C "comment"

##### Set window name when SSH'ing while using screen

   ss h() { [ $TERM == screen ] && (screen -X title "${1##*@}"; command ssh "$@"; screen -X title '';exit;) || command ssh "$@"; }

##### Mount folder/filesystem through SSH

   ss hfs name@server:/path/to/folder /path/to/mount/point

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### runs a X session within your X session

   ss h -C -Y -l$USER xserver.mynet.xx 'Xnest -geometry 1900x1150 -query localhost'

##### To check system send and receive tcp queue current size

   ss  -ntpl

##### immediatly attach to previous tmux session when connecting through ssh

   ss h -t user@remote_host tmux attach

##### having root on server, add user's public key to his keys (no password required)

   ss h-copy-id -i user_public_key.pub root@host

##### Multiple SSH Tunnels

   ss h -L :: -L :: @

##### having root on server, add user's public key to his keys (no password required)

   ss h-copy-id -i user_public_key.pub <user>@<remotehost>

##### Copy files between hosts while on a proxy host

   ss h <source host> "cat file" | ssh <dest host> "cat - > file"

##### VPN without VPN: Get access to networks available from your ssh server and hide behind it

   ss huttle -r <username>@<sshserver> 0/0

##### generate the moduli file for openssh if lost

   ss h-keygen -G /tmp/moduli-2048.candidates -b 2048

##### Run multiple commands on a remote host with sudo

   ss h -t user@host 'sudo bash -c "ls /var/log && cat /etc/passwd"'

##### Create & transfer tarball over ssh

   ss h -c 'tar cvzf - -C /path/to/src/*' | tar xzf -

##### scp a good script from host A which has no public access to host C, but with a hop by host B

   ss h middlehost "ssh -a root@securehost '> nicescript'" < nicescript

##### How to use rysnc over ssh tunnel

   ss hpass -p [password] rsync -av -e ssh [utente]@[indirizzoip]:/directorydacopiare/ /directorydidestinazione

##### Take a screenshot of x11 over ssh pipe to view on a mac in one line

   ss h user@host.com "DISPLAY=:0.0 import -window root png:-" | open -a /Applications/Preview.app -f

##### Generate SSH key

   ss h-keygen -t rsa -b 4096 -f ~/.ssh/<ROLE>_rsa -C "Comment goes here"

##### Anonymous ssh using tor proxy (or any socks based proxy)

   ss h -o ProxyCommand="nc -X 5 -x localhost:9050 %h %p" username@remote_host

##### SSH with debug to troubleshoot any connection issues

   ss h -v jsmith@remotehost.example.com

##### Convert an ssh2 public key to openssh format

   ss h-keygen -i -f $sshkeysfile >> authorized_keys

##### execute/start some scripts on a remote machine/server (which will terminate automatically) and disconnect from the server

   ss h remoteserver 'nohup /path/to/script `</dev/null` >nohup.out 2>&1 &'

##### Mount folder/filesystem through SSH

   ss hfs name@server:/path/to/folder /path/to/mount/point

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### Remove invalid host keys from ~/.ssh/known_hosts

   ss h-keygen -R \[localhost\]:8022

##### back ssh from firewalled hosts

   ss h -R 5497:127.0.0.1:22 -p 62220 user@public.ip

##### SSH connection with private key and port 222

   ss h -i /root/.ssh/username\@hostname -p 222 username@hostname

##### SSH connection with private key and port 222

   ss h -i /root/.ssh/username\@hostname -p 222 username@hostname

##### Create a local compressed tarball from remote host directory

   ss h user@host "tar -czf - /path/to/dir" > dir.tar.gz

##### ssh key generate

   ss h-keygen -t rsa -b 4096 -C "your_email@example.com"

##### Copy your ssh public key to a server from a machine that doesn't have ssh-copy-id

   ss h <user>@<host> 'mkdir -m 700 ~/.ssh; echo ' $(< ~/.ssh/id_rsa.pub) ' >> ~/.ssh/authorized_keys ; chmod 600 ~/.ssh/authorized_keys'

##### Create a local compressed tarball from remote host directory

   ss h user@host "tar -zcf - /path/to/dir" | tar -xvz

##### rsa 4096 key generating with passphrase

   ss h-keygen -t rsa -b 4096

##### pipe remote log web server file to lostalgia

   ss h -n user@server.tr tail -f /usr/local/nginx/logs/access.log > /tmp/access | tail -f /tmp/access | logstalgia

##### Temporarily ignore known SSH hosts

   ss h -o UserKnownHostsFile=/dev/null root@192.168.1.1

##### Sync a remote mysql database to a local db via SSH

   ss h <remoteuser>@<remoteserver> \ 'mysqldump -u <user> -p<password> <database>' \ | mysql -u <user> -p<password> <database>

##### open a screenshot of a remote desktop via ssh

   ss h user@host "ffmpeg -f x11grab -s 1920x1080 -i :0 -r 1 -t 1 -f mjpeg -" | display

##### Sync local machine date to remote machine over ssh

   ss h root@host.domain.tld "date -s '"$(date)"'";

##### Use a server as SOCKS5 proxy over SSH

   ss h -D 8080 -f -N srv1

##### Connect via SSH to VirtualBox guest VM without knowing IP address

   ss h vm-user@`VBoxManage guestproperty get "vm-name" "/VirtualBox/GuestInfo/Net/0/V4/IP" | awk '{ print $2 }'`

##### SSH/wmic to remotely kill a process on a windows box

   ss h <user>@<ip address> $(echo wmic process where \"name like \'%<process to kill>%\'\" delete)

##### get gzipped logs from webserver to local machine

   ss h user@remote "tar cfp - /path/to/log/* | gzip" > local.tar.gz

##### Replicate a directory structure from a 'basedir' in a remote server.

   ss h user@remotehost "find basedir -type d" | xargs -I {} -t mkdir -p {}

##### send message to specific remote user

   ss h youraccount@192.168.1.168 write toUsername pts/33

##### Mount folder/filesystem through SSH

   ss hfs name@server:/path/to/folder /path/to/mount/point

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### Mount folder/filesystem through SSH

   ss hfs name@server:/path/to/folder /path/to/mount/point

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### Mount folder/filesystem through SSH

   ss hfs name@server:/path/to/folder /path/to/mount/point

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### Mount folder/filesystem through SSH

   ss hfs name@server:/path/to/folder /path/to/mount/point

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### Remove a line in a text file. Useful to fix

   ss h-keygen -R <the_offending_host>

##### Attach screen over ssh

   ss h -t remote_host screen -r

##### directly ssh to host B that is only accessible through host A

   ss h -t hostA ssh hostB

##### Recover remote tar backup with ssh

   ss h user@host "cat /path/to/backup/backupfile.tar.bz2" |tar jpxf -

##### connect via ssh using mac address

   ss h root@`for ((i=100; i<=110; i++));do arp -a 192.168.1.$i; done | grep 00:35:cf:56:b2:2g | awk '{print $2}' | sed -e 's/(//' -e 's/)//'`

##### Mount folder/filesystem through SSH

   ss hfs name@server:/path/to/folder /path/to/mount/point

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### Get a MySQL DB dump from a remote machine

   ss h user@host "mysqldump -h localhost -u mysqluser -pP@$$W3rD databasename | gzip -cf" | gunzip -c > database.sql

##### Mount folder/filesystem through SSH

   ss hfs name@server:/path/to/folder /path/to/mount/point

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### ssh and attach to a screen in one line.

   ss h -t user@host screen -x <screen name>

##### Duplicate installed packages from one machine to the other (RPM-based systems)

   ss h root@remote.host "rpm -qa" | xargs yum -y install

##### Mount folder/filesystem through SSH

   ss hfs name@server:/path/to/folder /path/to/mount/point

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### Create an SSH tunnel for accessing your remote MySQL database with a local port

   ss h -CNL 3306:localhost:3306 user@site.com

##### Start an X app remotely

   ss h -f user@remote.ip DISPLAY=:0.0 smplayer movie.avi

##### Securely stream (and save) a file from a remote server

   ss h USER@HOST cat REMOTE_FILE.mp4 | tee LOCAL_FILE.mp4 | mplayer -

##### Create a local compressed tarball from remote host directory

   ss h user@host "tar -cf - /path/to/dir" | gzip > dir.tar.gz

##### Create an SSH connection (reverse tunnel) through your firewall.

   ss h -R 2001:localhost:22 [username]@[remote server ip]

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### Sync MySQL Servers via secure SSH-tunnel

   ss h -f -L3307:127.0.0.1:3306 -N -t -x user@host sleep 600 ; mk-table-sync execute verbose u=root,p=xxx,h=127.0.0.1,P=3307 u=root,p=xxx,h=localhost

##### poor man's vpn

   ss huttle dns -vvr user@server 0/0

##### Stream audio over ssh

   ss h [user]@[address] "mpg321 -" < [file].mp3

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### run complex remote shell cmds over ssh, without escaping quotes

   ss h host -l user $(<cmd.txt)

##### analyze traffic remotely over ssh w/ wireshark

   ss h root@server.com 'tshark -f "port !22" -w -' | wireshark -k -i -

##### How to establish a remote Gnu screen session that you can re-connect to

   ss h -t user@some.domain.com /usr/bin/screen -xRR

##### Copy a file over SSH without SCP

   ss h HOST cat < LOCALFILE ">" REMOTEFILE

##### ssh -A user@somehost

   ss h -A user@somehost

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### Record output of any command using 'tee' at backend; mainly can be used to capture the output of ssh from client side while connecting to a server.

   ss h user@server | tee logfilename

##### Run local bash script on remote server

   ss h -T user@server < script.sh

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### Transfer large files/directories with no overhead over the network

   ss h user@host "cd targetdir; tar cfp - *" | dd of=file.tar

##### Remove invalid key from the known_hosts file for the IP address of a host

   ss h-keygen -R `host hostname | cut -d " " -f 4`

##### Tell local Debian machine to install packages used by remote Debian machine

   ss h remotehost 'dpkg get-selections' | dpkg set-selections && dselect install

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### Setup an ssh tunnel

   ss f -f -N -L 4321:home.network.com:25 user@home.network.com

##### Remotely sniff traffic and pass to snort

   ss h root@pyramid \ "tcpdump -nn -i eth1 -w -" | snort -c /etc/snort/snort.conf -r -

##### Forward port 8888 to remote machine for SOCKS Proxy

   ss h -D 8888 user@site.com

##### Copy ssh keys to user@host to enable password-less ssh logins.

   ss h-copy-id user@host

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### Launch firefox on a remote linux server

   ss h -fY user@REMOTESERVER firefox -no-remote

##### Dump dvd from a different machine onto this one.

   ss h user@machine_A dd if=/dev/dvd0 > dvddump.iso

##### Backup entire system through SSH

   ss h -C USER@HOST tar -c exclude /proc exclude /sys / | tar -x

##### Mount folder/filesystem through SSH

   ss hfs name@server:/path/to/folder /path/to/mount/point

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### Reverse SSH

   ss h -f -N -R 8888:localhost:22 user@somedomain.org

##### setup a tunnel from destination machine port 80 to localhost 2001, via a second (hub) machine.

   ss h -N -L2001:localhost:80 -o "ProxyCommand ssh someuser@hubmachine nc -w 5 %h %p" someuser@destinationmachine

##### Create a persistent remote Proxy server through an SSH channel

   ss h -fND localhost:PORT USER@SSH_ENABLED_SERVER

##### Synchronize date and time with a server over ssh

   ss h user@server sudo date -s @`( date -u +"%s" )`

##### remote diff with side-by-side ordering.

   ss h $HOST -l$USER cat /REMOTE/FILE | sdiff /LOCAL/FILE -

##### Install your ssh key file on a remote system

   ss h user@remote 'cat >> ~/.ssh/authorized_keys2' < ~/.ssh/id_rsa.pub

##### Get ssh server fingerprints

   ss h-keygen -l -f /etc/ssh/ssh_host_rsa_key.pub && ssh-keygen -l -f /etc/ssh/ssh_host_dsa_key.pub

##### SSH Auto-login with password

   ss hpass -p "YOUR_PASSWORD" ssh -o StrictHostKeyChecking=no YOUR_USERNAME@SOME_SITE.COM

##### eavesdrop

   ss h USER@REMOTESYSTEM arecord - | aplay -

##### ssh: change directory while connecting

   ss h -t server 'cd /etc && $SHELL'

##### Single use vnc-over-ssh connection

   ss h -f -L 5900:localhost:5900 your.ssh.server "x11vnc -safer -localhost -nopw -once -display :0"; vinagre localhost:5900

##### SSH connection through host in the middle; with key redirection

   ss h -o "ProxyCommand ssh user@reachable_host -W %h:%p" user@unreacheable_host

##### Remote execute command as sudoer via ssh

   ss hpass -p 'sshpssword' ssh -t <sshuser>@<remotehost> "echo <sudopassword> | sudo -S <command>"

##### Get the version of sshd on a remote system

   ss h -vN hostname 2>&1 | grep "remote software version"

##### Create a local compressed tarball from remote host directory

   ss h user@host "tar -zcf - /path/to/dir" > dir.tar.gz

##### Transfer SSH public key to another machine in one step

   ss h-keygen; ssh-copy-id user@host; ssh user@host

##### Automatic ssh Session Logger

   ss h(){ L="\$HOME/logs/$(date +%F_%H:%M)-$USER";/usr/bin/ssh -t "$@" "mkdir -p \"${L%/*}\";screen -xRRS $USER script -f \"$L\"";}

##### "hidden" remote shell

   ss h -T user@host /bin/bash -i

##### Mount folder/filesystem through SSH

   ss hfs name@server:/path/to/folder /path/to/mount/point

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### send file to remote machine and unzip using ssh

   ss h user@host 'gunzip - > file' < file.gz

##### remote-pbzip2 and transfer a directory to local file

   ss h user@host 'tar -c use-compress-prog=pbzip2 /<dir>/<subdir>' > <localfile>.tar.bz2

##### Lookup autonomous systems of all outgoing http/s traffic

   ss  -t -o state established '( dport = :443 || dport = :80 )'|grep tcp|awk '{ print $5 }'|sed s/:http[s]*//g|sort -u|netcat whois.cymru.com 43|grep -v "AS Name"|sort -t'|' -k3

##### Harder, Faster, Stronger SSH clients

   ss h -4 -C -c blowfish-cbc

##### Change SSH RSA passphrase

   ss h-keygen -f ~/.ssh/id_rsa -p

##### gzip over ssh

   ss h 10.0.0.4 "cat /tmp/backup.sql | gzip -c1" | gunzip -c > backup.sql

##### Restore a local drive from the image on remote host via ssh

   ss h user@server 'dd if=sda.img' | dd of=/dev/sda

##### Copy from host 1 to host 2 through your host

   ss h root@host1 ?cd /somedir/tocopy/ && tar -cf ? .? | ssh root@host2 ?cd /samedir/tocopyto/ && tar -xf -?

##### Run a command on a remote machine

   ss h user@host "ps aux | grep httpd | wc -l"

##### Copy stdin to your X11 buffer

   ss h user@host cat /path/to/some/file | xclip

##### copy from host1 to host2, through your host

   ss h user@<source_host>  tar cz <path> | ssh user@<destination_host>  tar vxzC <path>

##### get a directory from one machine to another using tar and ssh

   ss h somemachine "cd some dir; tar zcpf - somedirname" |tar zxpf -

##### Stream audio over ssh ogg version

   ss h [user]@[host] "ogg123 -" < [podcast].ogg

##### Remove invalid key from the known_hosts file for the IP address of a host

   ss h-keygen -R $(dig +short host.domain.tld)

##### Backup a remote database to your local filesystem

   ss h user@host 'mysqldump dbname | gzip' > /path/to/backups/db-backup-`date +%Y-%m-%d`.sql.gz

##### Debug a remote php application (behind firewall) using ssh tunnel for XDEBUG port 9000

   ss h -R 9000:localhost:9000 you@remote-php-web-server.com

##### remove hostname from known_hosts

   ss h-keygen -R hostname

##### analyze traffic remotely over ssh w/ wireshark

   ss h user@server.com sudo tcpdump -i eth0  -w - 'port 80'| /Applications/Wireshark.app/Contents/Resources/bin/wireshark -k -i -

##### Mount folder/filesystem through SSH

   ss hfs name@server:/path/to/folder /path/to/mount/point

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### Remove a line from a file using sed (useful for updating known SSH server keys when they change)

   ss h-keygen -R <thehost>

##### copy from host1 to host2, through your host

   ss h root@host1 "cd /somedir/tocopy/ && tar -cf - ." | ssh root@host2 "cd /samedir/tocopyto/ && tar -xf -"

##### Forwards connections to your port 2000 to the port 22 of a remote host via ssh tunnel

   ss h -NL 2000:remotehost:22 remotehost

##### HTTP GET request on wireshark remotly

   ss h USER@HOST "sudo tshark -i eth0 -f 'tcp port 80 and tcp[((tcp[12:1] & 0xf0) >> 2):4] = 0x47455420' -w -" | wireshark -k -i -

##### Run any GUI program remotely

   ss h -fX <user>@<host> <program>

##### Get and read log from remote host (works with log on pipe, too)

   ss h remoteUser@remoteHost "tail -f /var/log/scs/remoteLogName" | tee localLogName

##### Copy files and directories from a remote machine to the local machine

   ss h user@host "(cd /path/to/remote/top/dir ; tar cvf - ./*)" | tar xvf -

##### Skip banner on ssh login prompt

   ss h -q user@server

##### Get backup from remote host, then expand in current directory using tar

   ss h -l username server.tdl "tar -czf - /home/username/public_html" | tar -xzf -

##### ssh batch jobs: query hundreds of hosts with an ssh command

   ss h -tq -o "BatchMode yes" $HOST  <some_command> >> to_a_file

##### sshfs usage

   ss hfs /root/Desktop/mountdirectory root@remotehost:/etc/

##### Mount folder/filesystem through SSH

   ss hfs name@server:/path/to/folder /path/to/mount/point

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### Copy your SSH public key on a remote machine for passwordless login - the easy way

   ss h-copy-id username@hostname

##### Tunnel ssh through Socks Proxy

   ss h -o ProxyCommand='nc -x ProxyHost:8080 %h %p' TargetHost

##### copy remote ssh session output to local clipboard

   ss h [remote-machine] "cat file" | xclip -selection c

##### tail -f a log file over ssh into growl

   ss h -t HOSTNAME 'tail -f LOGFILE' | while read; do growlnotify -t "TITLE" -m "$REPLY"; done

##### A command to copy mysql tables from a remote host to current host via ssh.

   ss h username@remotehost 'mysqldump -u <dbusername> -p<dbpassword> <dbname> tbl_name_1 tbl_name_2 tbl_name_3' | mysql -u <localusername> -p<localdbpassword> <localdbname> < /dev/stdin

##### test moduli file  generated  for openssh

   ss h-keygen -T moduli-2048 -f /tmp/moduli-2048.candidates

##### tunnel vnc port

   ss h -L 5900:localhost:5900 user@exampleserver.com

##### A command to copy mysql tables from a remote host to current host via ssh.

   ss h username@remotehost 'mysqldump -u <dbusername> -p<dbpassword> <dbname> tbl_name_1 tbl_name_2 tbl_name_3 | gzip -c -' | gzip -dc - | mysql -u <localusername> -p<localdbpassword> <localdbname>

##### tail a log over ssh

   ss h  -t remotebox "tail -f /var/log/remote.log"

##### Backup with SSH in a archive

   ss h -i $PRIVATEKEY $HOST -C 'cd $SOURCE; tar -cz numeric-owner .' | tee $DESTINATION/backup.tgz | tar -tz

##### backup system over ssh, exlucde common dirs

   ss h root@192.168.0.1 "cd /;nice -n 10 tar cvpP ?exclude={"/proc/*","/sys*","/tmp/*","/home/user/*"} /">backup.tar.gz

##### Validate openssh key & print checksum

   ss h-keygen -l -f [pubkey] | awk '{print $2}' | tr -ds ':' '' | egrep -ie "[a-f0-9]{32}"

##### Secure netcat chat - SSH

   ss h hostname nc -l 9876

##### Live stream a remote desktop over ssh using only ffmpeg

   ss h user@host "ffmpeg -f x11grab -r 5 -s 1280x720 -i :0 -f avi -" | ffplay - &>/dev/null

##### Don't save commands in bash history (only for current session)

   ss h user@hostname.domain "> ~/.bash_history"

##### Mount folder/filesystem through SSH

   ss hfs name@server:/path/to/folder /path/to/mount/point

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### Get listening ports on a localhost

   ss  -ln | awk '$3~/([0-9]+)/{print $3}' | sed 's/.*\:\([0-9]\+\)$/\1/'

##### ssh X tunneling over multiple ssh hosts (through ssh proxy)

   ss h -t -X -A user@sshproxy ssh -X -A user@sshhost

##### RDP through SSH tunnel

   ss h -f -L3389:<RDP_HOST>:3389 <SSH_PROXY> "sleep 10" && rdesktop -T'<WINDOW_TITLE>' -uAdministrator -g800x600 -a8 -rsound:off -rclipboard:PRIMARYCLIPBOARD -5 localhost

##### Remote screenshot

   ss h user@remote-host "DISPLAY=:0.0 import -window root -format png -"|display -format png -

##### analyze traffic remotely over ssh w/ wireshark

   ss h root@HOST tcpdump -U -s0 -w - 'not port 22' | wireshark -k -i -

##### Copy a folder tree through ssh using compression (no temporary files)

   ss h <host> 'tar -cz /<folder>/<subfolder>' | tar -xvz

##### Connect to google talk through ssh by setting your IM client to use the localhost 5432 port

   ss h -f -N -L 5432:talk.google.com:5222 user@home.network.com

##### Speed Up WAN File Transfer With Compression

   ss h 10.0.0.4 "gzip -c /tmp/backup.sql" |gunzip > backup.sql

##### copy public key

   ss h-copy-id host

##### Validate openssh key & print checksum

   ss h-keygen -l -f [pubkey] | cut -d ' ' -f 2 | tr -ds '\n:' ''

##### Import MySQL db to localhost.

   ss h remote_user@remote_host 'mysqldump -h localhost -u username -ppass -B db_name | gzip -cf' | gunzip -c | mysql -uroot

##### SSL tunnel to proxy remote mysql port

   ss h -T -N -L 23306:localhost:3306 root@mysql.domain.com

##### Mount folder/filesystem through SSH

   ss hfs name@server:/path/to/folder /path/to/mount/point

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### ssh to machine behind shared NAT

   ss h -NR 0.0.0.0:2222:127.0.0.1:22 user@jump.host.com

##### View ~/.ssh/known_hosts key information

   ss h-keygen -l -f ~/.ssh/known_hosts

##### Copy a file over SSH without SCP

   ss h username1@servername1 -t ssh username2@servername2 uuencode -m testfile1.tar - | uudecode > testfile1.tar

##### analyze traffic remotely over ssh w/ wireshark

   ss h root@HOST tcpdump -iany -U -s0 -w - 'not port 22' | wireshark -k -i -

##### Music streaming via ssh

   ss h login@server "cat path/filename.mp3" | mplayer -

##### Extract remote gzip tarball

   ss h user@remote "cat /path/to/archive.tgz" | tar zxvf -

##### list tomcat webapps

   ss h tomcat-server ls -l webapp-dir | grep  '->' | awk ' { print $(NF-2) " " $(NF-1) " " $NF; }'

##### Migrate wordpress db between two hosts changing the URL on the fly with encryption and compression

   ss h -q ${SRC_HOST} "mysqldump add-drop-database create-options databases wordpress | sed -r \"s/${OLD_URL}/${NEW_URL}/g\" | gzip -9" | ssh ${DST_HOST} "gunzip | mysql"

##### SSH monitor

   ss h root@server 'tail max-unchanged-stats=10 -n0 -F /var/log/auth.log ' | grep Accepted | while read l ; do kdialog title "SSH monitor" passivepopup "$l" 3; done

##### Copy uncommitted changes from remote git repository

   ss h HOST '(cd REPO_DIR && git diff name-only HEAD | cpio -o -Hnewc quiet)' | cpio -iduv quiet -Hnewc

##### Show apps that use internet connection at the moment. (Multi-Language)

   ss  -p

##### Create a persistent connection to a machine

   ss h -MNf <user>@<host>

##### Mount folder/filesystem through SSH

   ss hfs name@server:/path/to/folder /path/to/mount/point

##### Temporarily ignore mismatched SSH host key

   ss h -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no username@host

##### Put at the end of the rsa public key an comment(default value is the hostname)

   ss h-keygen -C hello@world

##### mount remote directory

   ss hfs user@host:/path/to/remote/dir local-mount-point

##### ssh-keygen -b 4048 -t rsa -C "comment"

   ss h-keygen -b 4048 -t rsa -C "comment"

##### Set window name when SSH'ing while using screen

   ss h() { [ $TERM == screen ] && (screen -X title "${1##*@}"; command ssh "$@"; screen -X title '';exit;) || command ssh "$@"; }

##### Mount folder/filesystem through SSH

   ss hfs name@server:/path/to/folder /path/to/mount/point

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### runs a X session within your X session

   ss h -C -Y -l$USER xserver.mynet.xx 'Xnest -geometry 1900x1150 -query localhost'

##### To check system send and receive tcp queue current size

   ss  -ntpl

##### immediatly attach to previous tmux session when connecting through ssh

   ss h -t user@remote_host tmux attach

##### having root on server, add user's public key to his keys (no password required)

   ss h-copy-id -i user_public_key.pub root@host

##### Multiple SSH Tunnels

   ss h -L :: -L :: @

##### having root on server, add user's public key to his keys (no password required)

   ss h-copy-id -i user_public_key.pub <user>@<remotehost>

##### Copy files between hosts while on a proxy host

   ss h <source host> "cat file" | ssh <dest host> "cat - > file"

##### VPN without VPN: Get access to networks available from your ssh server and hide behind it

   ss huttle -r <username>@<sshserver> 0/0

##### generate the moduli file for openssh if lost

   ss h-keygen -G /tmp/moduli-2048.candidates -b 2048

##### Run multiple commands on a remote host with sudo

   ss h -t user@host 'sudo bash -c "ls /var/log && cat /etc/passwd"'

##### Create & transfer tarball over ssh

   ss h -c 'tar cvzf - -C /path/to/src/*' | tar xzf -

##### scp a good script from host A which has no public access to host C, but with a hop by host B

   ss h middlehost "ssh -a root@securehost '> nicescript'" < nicescript

##### How to use rysnc over ssh tunnel

   ss hpass -p [password] rsync -av -e ssh [utente]@[indirizzoip]:/directorydacopiare/ /directorydidestinazione

##### Take a screenshot of x11 over ssh pipe to view on a mac in one line

   ss h user@host.com "DISPLAY=:0.0 import -window root png:-" | open -a /Applications/Preview.app -f

##### Generate SSH key

   ss h-keygen -t rsa -b 4096 -f ~/.ssh/<ROLE>_rsa -C "Comment goes here"

##### Anonymous ssh using tor proxy (or any socks based proxy)

   ss h -o ProxyCommand="nc -X 5 -x localhost:9050 %h %p" username@remote_host

##### SSH with debug to troubleshoot any connection issues

   ss h -v jsmith@remotehost.example.com

##### Convert an ssh2 public key to openssh format

   ss h-keygen -i -f $sshkeysfile >> authorized_keys

##### execute/start some scripts on a remote machine/server (which will terminate automatically) and disconnect from the server

   ss h remoteserver 'nohup /path/to/script `</dev/null` >nohup.out 2>&1 &'

##### Mount folder/filesystem through SSH

   ss hfs name@server:/path/to/folder /path/to/mount/point

##### Compare a remote file with a local file

   ss h user@host cat /path/to/remotefile | diff /path/to/localfile -

##### SSH connection through host in the middle

   ss h -t reachable_host ssh unreachable_host

##### Remove invalid host keys from ~/.ssh/known_hosts

   ss h-keygen -R \[localhost\]:8022

##### back ssh from firewalled hosts

   ss h -R 5497:127.0.0.1:22 -p 62220 user@public.ip

##### SSH connection with private key and port 222

   ss h -i /root/.ssh/username\@hostname -p 222 username@hostname

##### Temporarily ignore known SSH hosts

   ss h -o UserKnownHostsFile=/dev/null root@192.168.1.1

##### Connect via SSH to VirtualBox guest VM without knowing IP address

   ss h vm-user@`VBoxManage guestproperty get "vm-name" "/VirtualBox/GuestInfo/Net/0/V4/IP" | awk '{ print $2 }'`
