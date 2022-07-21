# rsync

##### Resume a partially copied file

   rsync  -a append source-file destination

##### remote backups with rsync

   rsync  delete -az -e 'ssh -c blowfish -i /your/.ssh/backup_key -ax' /path/to/backup remote-host:/dest/path/

##### File count into directories

   rsync  stats dry-run -ax /home/myself/ /tmp

##### rsync Command that limits bandwidth

   rsync  -arvx numeric-ids stats progress bwlimit=1000 file server:destination_directory

##### Real full backup copy of /etc folder

   rsync  -a /etc /destination

##### Transfer files with rsync over ssh on a non-standard port.

   rsync  -P -e 'ssh -p PORT' SRC DEST

##### shows which files differ in two direcories

   rsync  -avz dry-run /somewhere/source_directory /somewhereelse/target_directory

##### Upload - rsync using key pair

   rsync  -avvvz -e "ssh -i /root/.ec2/id_rsa-gsg-keypair"  archive progress /root/.ec2/id_rsa-gsg-keypair  root@ec2-75-101-212-113.compute-1.amazonaws.com:/root

##### Upload - rsync using key pair

   rsync  -avvvz -e "ssh -i /root/.ec2/id_rsa-gsg-keypair" archive progress /root/.ec2/id_rsa-gsg-keypair root@ec2-75-101-212-113.compute-1.amazonaws.com:/root

##### Sync two directories

   rsync  -a -v delete sending_directory target_directory

##### rsync with progress bar.

   rsync  -av progress ./file.txt user@host:/path/to/dir

##### Create a mirror of a local folder, on a remote server

   rsync  -e "/usr/bin/ssh -p22" -a progress stats delete -l -z -v -r -p /root/files/ user@remote_server:/root/files/

##### Start a quick rsync daemon for fast copying on internal secure network

   rsync  daemon port 9999 no-detach -v config .rsyncd.conf

##### Best command EVER!!

   rsync 

##### rsync + find

   rsync  -avz -e ssh files-from=<(find -mtime +30 -mtime -60) source dest

##### Migrate Server with rsync

   rsync  -ayz -e ssh exclude=/proc exclude=/sys exclude=/dev / root@NEWHOST:/MNTDIR

##### create an incremental backup of a directory using hard links

   rsync  -a delete link-dest=../lastbackup $folder $dname/

##### Copy the contents of one partition to another

   rsync  -avxHAXW info=progress2 /old-disk /new-disk/

##### Rsync two directories with filtered extensions

   rsync  -rv include '*/' include '*.txt' exclude '*' srcDir/ desDir/

##### Remote copy directories and files through an SSH tunnel host

   rsync  -avz -e 'ssh -A sshproxy ssh' srcdir remhost:dest/path/

##### syncronizing datas beetween two folder (A and B) excluding some directories in A (dir1 and dir2)

   rsync  -av ignore-existing exclude="dir1" exclude="dir2" /pathA /pathB

##### How to backup hard disk timely?

   rsync  -a link-dest=/media/backup/$HOSTNAME/$PREVDATE 'exclude=/[ps][ry][os]' exclude=/media/backup/$HOSTNAME / /media/backup/$HOSTNAME/$DATE/

##### Resume scp of a big file

   rsync  partial progress rsh=ssh  $file_source $user@$host:$destination_file

##### Rsync a directory excluding pesky .svn dirs

   rsync  -rv exclude .svn src/dir/ dest/dir/

##### rsync over ssh via non-default ssh port

   rsync  -e 'ssh -p PORT' user@host:SRC DEST

##### Rsync files with spaces

   rsync  [options]  * target

##### Start a quick rsync daemon for fast copying on internal secure network

   rsync  daemon port 1234 no-detach -v config rsyncd.conf

##### Rsync remote data as root using sudo

   rsync  rsync-path 'sudo rsync' username@source:/folder/ /local/

##### rsync instead of scp

   rsync  progress partial rsh="ssh -p 8322" bwlimit=100 ipv4 user@domain.com:~/file.tgz .

##### Copy specific files recursively using the same tree organization.

   rsync  -vd files-from=<(find .  -name entries -print ) .   ../target_directory

##### resume scp-filetransfer with rsync

   rsync  partial progress rsh=ssh user@host:remote-file local-file

##### Backup entire directory using rsync

   rsync  -avzhP <[[user@]host1:]directory1> <[[user@]host2:]directory2>

##### exclude file(s) from rsync

   rsync  -vazuK exclude "*.mp3" exclude "*.svn*" * user@host:/path

##### Copy with progress

   rsync  progress file1 file2

##### Synchronise a file from a remote server

   rsync  -av -e ssh user@host:/path/to/file.txt .

##### Copy a file from a remote server to your local box using on-the-fly compression

   rsync  -Pz user@remotehost:/path/file.dat .

##### Sync the existing directory structure to destination, without transferring any files

   rsync  -av -f"+ */" -f"- *" [source] [dest]

##### Resume scp of a big file

   rsync  -a -v stats -e ssh /home root@<newserver>:/root/

##### move a lot of files over ssh

   rsync  -az /home/user/test user@sshServer:/tmp/

##### How to backup hard disk timely?

   rsync  -av link-dest=$(ls -1d /backup/*/ | tail -1) /data/ /backup/$(date +%Y%m%d%H%M)/

##### Resume aborted scp file transfers

   rsync  partial progress rsh=ssh SOURCE DESTINATION

##### Virtualbox rsync copy (without defining any virtualbox configuration)

   rsync  -a progress -e 'ssh -p 2200 -i .vagrant/machines/default/virtualbox/private_key' vagrant@127.0.0.1:/vagrant/vm/old_timecapsule_backup /Volumes/2TB/

##### rsync over ssh using alternative port number

   rsync  -arvz -e 'ssh -p 2233' progress delete remote-user@remote-server.org:/path/to/folder /path/to/local/folder

##### Rsync between two servers

   rsync  -zav progress original_files_directory/ root@host(IP):/path/to/destination/

##### sync two folders except hidden files

   rsync  -vau exclude='.*' SOURCE-PATH/myfold TARGET-PATH

##### Copy files based on extension with recursive and keeping directory structure

   rsync  -rv include '*/' include '*.jar' exclude '*' srcDir desDir

##### Copy recursivelly files of specific filetypes

   rsync  -rvtW progress include='*.wmv' include='*.mpg' exclude='*.*' <sourcedir> <destdir>

##### Transfer Entire recursive from one host to another. Only copies files that are newer or do not exist

   rsync  -azE -e "ssh -pPortnumber" src_dir user@hostB:dest_dir

##### Backup files incremental with rsync to a NTFS-Partition

   rsync  -rtvu modify-window=1 progress /media/SOURCE/ /media/TARGET/

##### Microsoft Robocopy imitation (with recursion, pruning, and compression)

   rsync  -ahhmz progress stats [[user@]host:]/source/path/ [[user@]host:]/destination/path/

##### Sync copy directories except (OSX)

   rsync  -rP exclude=x source/ target/

##### The fastest remote directory rsync over ssh archival I can muster (40MB/s over 1gb NICs)

   rsync  -aHAXxv numeric-ids delete progress -e "ssh -T -c arcfour -o Compression=no -x" user@<source>:<source_dir> <dest_dir>

##### Transfer with rsync a file using SSH with a forced HMAC integrity algorithm

   rsync  -av -e "ssh -o MACs=hmac-ripemd160" progress partial user@remotehost://path/to/remote/stuff .

##### make rsync progress output suitable for shell script reading

   rsync  progress user@host:/path/to/source /path/to/target/ | stdbuf -oL tr '\r' '\n' >> rsyncprogress.txt

##### Synchronize directory copy

   rsync  -avz ~/src ~/des/

##### rsync from remote to local with non standard ssh port

   rsync  -avz -e "ssh -p $portNumber" user@remote.host:/path/to/copy /local/path

##### rsync from remote to local

   rsync  -chavzP stats user@remote.host:/path/to/copy /path/to/local/storage

##### Optimal way of deleting huge numbers of files

   rsync  -a delete empty-dir/ target-dir/

##### copy with progress bar - rsync

   rsync  -rv <src> <dst> progress

##### Incremental copy to remote host

   rsync  -v ignore-existing `ls | head -n 40` root@localhost:/location

##### copy root to new device

   rsync  -aHux exclude=/proc/* exclude=/sys/* /* /mnt/target/

##### copy with progress bar - rsync

   rsync  -aP no-whole-file inplace

##### Sync files in /var/www/html dir with other server excluding files in exclude_files.txt

   rsync   -arl  rsh=ssh progress exclude-from=/etc/localbin/exclude_files.txt  /var/www/html/source/* <user>@<server>:/var/www/html/source/

##### rsync a hierarchy but matching only one filename

   rsync  -avz dry-run include="only-include-this-filename" -f 'hide,! */' source/folder/ target/folder/

##### rsync...

   rsync  -avz -e ssh user@host:/srcpath destpath

##### All what exists in dir B and not in dir A will be copied from dir B to new or existing dir C

   rsync  -v -r size-only compare-dest=../A/ B/ C/

##### rsync progress indicator which updates in-place

   rsync  recursive info=progress2 <src> <dst>

##### Copy only hidden files and directories with rsync.

   rsync  -a /path/from/.[^.]* /path/to

##### Incremental Backup via rsync

   rsync  -aAXv / exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/home/*","/lost+found/*"} <backup path> > <path_of log file>

##### rsync over ssh

   rsync  -avz -e ssh username@hostname:/path/to/remote/dir/ /path/to/local/dir/

##### Real full backup copy of /etc folder

   rsync  -a /etc /destination

##### rsync with progress bar.

   rsync  -av progress ./file.txt user@host:/path/to/dir

##### Create a mirror of a local folder, on a remote server

   rsync  -e "/usr/bin/ssh -p22" -a progress stats delete -l -z -v -r -p /root/files/ user@remote_server:/root/files/

##### rsync + find

   rsync  -avz -e ssh files-from=<(find -mtime +30 -mtime -60) source dest

##### Migrate Server with rsync

   rsync  -ayz -e ssh exclude=/proc exclude=/sys exclude=/dev / root@NEWHOST:/MNTDIR

##### create an incremental backup of a directory using hard links

   rsync  -a delete link-dest=../lastbackup $folder $dname/

##### Copy the contents of one partition to another

   rsync  -avxHAXW info=progress2 /old-disk /new-disk/

##### Rsync two directories with filtered extensions

   rsync  -rv include '*/' include '*.txt' exclude '*' srcDir/ desDir/

##### Remote copy directories and files through an SSH tunnel host

   rsync  -avz -e 'ssh -A sshproxy ssh' srcdir remhost:dest/path/

##### syncronizing datas beetween two folder (A and B) excluding some directories in A (dir1 and dir2)

   rsync  -av ignore-existing exclude="dir1" exclude="dir2" /pathA /pathB

##### How to backup hard disk timely?

   rsync  -a link-dest=/media/backup/$HOSTNAME/$PREVDATE 'exclude=/[ps][ry][os]' exclude=/media/backup/$HOSTNAME / /media/backup/$HOSTNAME/$DATE/

##### Resume scp of a big file

   rsync  partial progress rsh=ssh  $file_source $user@$host:$destination_file

##### Rsync a directory excluding pesky .svn dirs

   rsync  -rv exclude .svn src/dir/ dest/dir/

##### rsync over ssh via non-default ssh port

   rsync  -e 'ssh -p PORT' user@host:SRC DEST

##### Rsync files with spaces

   rsync  [options]  * target

##### Start a quick rsync daemon for fast copying on internal secure network

   rsync  daemon port 1234 no-detach -v config rsyncd.conf

##### Rsync remote data as root using sudo

   rsync  rsync-path 'sudo rsync' username@source:/folder/ /local/

##### rsync instead of scp

   rsync  progress partial rsh="ssh -p 8322" bwlimit=100 ipv4 user@domain.com:~/file.tgz .

##### Copy specific files recursively using the same tree organization.

   rsync  -vd files-from=<(find .  -name entries -print ) .   ../target_directory

##### resume scp-filetransfer with rsync

   rsync  partial progress rsh=ssh user@host:remote-file local-file

##### Backup entire directory using rsync

   rsync  -avzhP <[[user@]host1:]directory1> <[[user@]host2:]directory2>

##### exclude file(s) from rsync

   rsync  -vazuK exclude "*.mp3" exclude "*.svn*" * user@host:/path

##### Copy with progress

   rsync  progress file1 file2

##### Synchronise a file from a remote server

   rsync  -av -e ssh user@host:/path/to/file.txt .

##### Copy a file from a remote server to your local box using on-the-fly compression

   rsync  -Pz user@remotehost:/path/file.dat .

##### Sync the existing directory structure to destination, without transferring any files

   rsync  -av -f"+ */" -f"- *" [source] [dest]

##### Resume scp of a big file

   rsync  -a -v stats -e ssh /home root@<newserver>:/root/

##### move a lot of files over ssh

   rsync  -az /home/user/test user@sshServer:/tmp/

##### How to backup hard disk timely?

   rsync  -av link-dest=$(ls -1d /backup/*/ | tail -1) /data/ /backup/$(date +%Y%m%d%H%M)/

##### Resume aborted scp file transfers

   rsync  partial progress rsh=ssh SOURCE DESTINATION

##### Virtualbox rsync copy (without defining any virtualbox configuration)

   rsync  -a progress -e 'ssh -p 2200 -i .vagrant/machines/default/virtualbox/private_key' vagrant@127.0.0.1:/vagrant/vm/old_timecapsule_backup /Volumes/2TB/

##### rsync over ssh using alternative port number

   rsync  -arvz -e 'ssh -p 2233' progress delete remote-user@remote-server.org:/path/to/folder /path/to/local/folder

##### Rsync between two servers

   rsync  -zav progress original_files_directory/ root@host(IP):/path/to/destination/

##### sync two folders except hidden files

   rsync  -vau exclude='.*' SOURCE-PATH/myfold TARGET-PATH

##### Copy files based on extension with recursive and keeping directory structure

   rsync  -rv include '*/' include '*.jar' exclude '*' srcDir desDir

##### Copy recursivelly files of specific filetypes

   rsync  -rvtW progress include='*.wmv' include='*.mpg' exclude='*.*' <sourcedir> <destdir>

##### Transfer Entire recursive from one host to another. Only copies files that are newer or do not exist

   rsync  -azE -e "ssh -pPortnumber" src_dir user@hostB:dest_dir

##### Backup files incremental with rsync to a NTFS-Partition

   rsync  -rtvu modify-window=1 progress /media/SOURCE/ /media/TARGET/

##### Microsoft Robocopy imitation (with recursion, pruning, and compression)

   rsync  -ahhmz progress stats [[user@]host:]/source/path/ [[user@]host:]/destination/path/

##### Sync copy directories except (OSX)

   rsync  -rP exclude=x source/ target/

##### The fastest remote directory rsync over ssh archival I can muster (40MB/s over 1gb NICs)

   rsync  -aHAXxv numeric-ids delete progress -e "ssh -T -c arcfour -o Compression=no -x" user@<source>:<source_dir> <dest_dir>

##### Transfer with rsync a file using SSH with a forced HMAC integrity algorithm

   rsync  -av -e "ssh -o MACs=hmac-ripemd160" progress partial user@remotehost://path/to/remote/stuff .

##### make rsync progress output suitable for shell script reading

   rsync  progress user@host:/path/to/source /path/to/target/ | stdbuf -oL tr '\r' '\n' >> rsyncprogress.txt

##### Synchronize directory copy

   rsync  -avz ~/src ~/des/

##### rsync from remote to local with non standard ssh port

   rsync  -avz -e "ssh -p $portNumber" user@remote.host:/path/to/copy /local/path

##### rsync from remote to local

   rsync  -chavzP stats user@remote.host:/path/to/copy /path/to/local/storage

##### Optimal way of deleting huge numbers of files

   rsync  -a delete empty-dir/ target-dir/

##### copy with progress bar - rsync

   rsync  -rv <src> <dst> progress

##### Incremental copy to remote host

   rsync  -v ignore-existing `ls | head -n 40` root@localhost:/location

##### copy root to new device

   rsync  -aHux exclude=/proc/* exclude=/sys/* /* /mnt/target/

##### copy with progress bar - rsync

   rsync  -aP no-whole-file inplace

##### All what exists in dir B and not in dir A will be copied from dir B to new or existing dir C

   rsync  -v -r size-only compare-dest=../A/ B/ C/
