# tar

### Best compression for folders

    tar cf - paths-to-archive | pigz -9 -p 32 > archive.tar.gz

### Compress with tar

    tar --use-compress-program="pigz --best --recursive" -cf archive.tar.gz YourData

### Compress with tar and monitor with pv

    tar --use-compress-program="pigz --best --recursive | pv" -cf archive.tar.gz YourData

### Fast compressing

    tar -cf bigbackup.tar.gz -I pigz /opt

### Fast decrompressing

    tar -I pigz -xf /mnt/sd/current/backup/bigbackup_web.tar.gz -C /tmp

### Decrompess without deleting file

    pigz -f -d foo.iso

### Another way to compress a tar archive

    tar cf - Pictures/ | pigz > pictures.tar.g<

### Cinoress a file with 4 cpu cores

    pigz -9 -k -p4 archlinux.iso

### Decrompressing files

    pigz -d archlinux.iso.gz OR unpigz foo.iso


### Compress with max compression

env GZIP=-9 tar cvzf file.tar.gz /path/to/directory

### Gzip instead of tar

tar -cvf files.tar /path/to/file0 /path/to/file1 ; gzip -9 files.tar

### Create xz archive

XZ_OPT=-9 tar -Jcvf file.tar.xz /path/to/directory

### Create gzip

tar cv /path/to/directory | gzip --best > file.tar.g

### Smallest tar 

tar cv path/to/data | xz -9 > file.tar.xz

### Create gzip with multi cores

tar cf - paths-to-archive | pigz -9 -p 32 > archive.tar.gz

### Compress multiple folders same time

for folders in ./*; tar cv $folders|xz -9 > $folders.tar.gz; done

### Compress

tar --use-compress-program="pigz --best --recursive" -cf archive.tar.gz YourData

### Fast unpack

tar -I pigz -xf /mnt/sd/current/backup/bigbackup_web.tar.gz -C /tmp

### COmpress and do all job on server

tar -cf bigbackup.tar.gz -I pigz /opt

### Same as above

ssh user@box 'cd /dir1/ && tar -cf - file | gzip -9' >file.tar.gz

### Backup /wwwdata on server from local pc

tar zcvf - /wwwdata | ssh user@server"cat > /backup/wwwdata.tar.gz"

### Encrypt archive

tar zcf - /data2/ | gpg -e | ssh -t vivek@nas03 'cat - > data2-dd-mm-yyyy.tar.gz.gpg'

### Copy from server to local system

ssh vivek@server1.cyberciti.biz 'tar zcf - /some/dir' | tar zxf -

### Linux system hard drive backup/mirror using tar and ssh

Let us copy the entire hard disk drive named /dev/sdvf from local machine to the remote AWS EC2 cloud backup server:
 
dd if=/dev/sdvf | ssh backupimg@vpc-aws-mumbai-backup-001 'dd of=prod-disk-hostname-sdvf-dd-mm-yyyy.img'

### To restore a local drive from the image on the server, reverse the command. For instance, we can restore a local hard disk drive from the image stored on the remote AWS EC2 cloud backup server as follows:

 ssh backupimg@vpc-aws-mumbai-backup-001 'dd if=prod-disk-hostname-sdvf-dd-mm-yyyy.img' | dd of=/dev/sdvf

### Moving data to a new Linux system

The problem with scp and other command copying the directory structure is that Symbolic links, special devices, sockets, named pipes, and other stuff not copied. Hence, we use tar over ssh. For example, copy all data from nuc-box. Open the terminal on x230 laptop and run the ssh command along with tar command:

ssh vivek@nuc-box 'tar czf - /home/vivek' | tar xvzf - -C /home/vivek

### How to extract tar over ssh

cat my-data.tar.gz | ssh user@server1.cyberciti.biz "tar zxvf -"
cat my-data.tar.gz | ssh user@server1.cyberciti.biz "cd /path/to/dest/; tar zxvf -"

### In this example, restore tar backup over ssh session from the remote machine to local dir:

cd /; ssh root@192.168.1.201 "cat /backup/wwwdata.tar.gz" | tar zxvf -

### How to tar over SSH with progress bar

tar zcf - . | pv | ssh vivek@server1.cyberciti.biz "cat > /backups/box42/backup-dd-mm-yyyy.tgz"

### Some more examples of tar over ssh:

tar cvjf - * | ssh vivek@nixcraft "(cd /dest/; tar xjf -)"
tar cvzf - mydir/ | ssh vivek@backupbox "cat > /backups/myfile.tgz"
tar cvzf - /var/www/html | ssh vivek@server1.cyberciti.biz "dd of=/backups/www.tar.gz"
ssh vivek@box2 "cat /backups/www.tar.gz" | tar xvzf -
tar cvjf - * | ssh root@home.nas02 "(cd /dest/; tar xjf - )"

### Sshfs works fine

mkdir /data/
sshfs vivek@server1.cyberciti.biz:/ /data/
tar -zcvf /data/file.tar.gz /home/vivek/

## Copy root from server, examples

### Copy root from server with Rsync: 

rsync -zvr --exclude /dev/ / backup_server

### Copy root from server with dd and netcat

nc -l 4242 | gunzip | cat > my_full_disk_backup_of_PC_named_foo
dd if=/dev/sda of=- bs=1M | gzip | nc -p 4242 name_of_the_destination

### Copy root from server with ssh

tar cf - files... | ssh remotehost 'cd /destination && tar xvf -'
tar zcf - files... | ssh remotehost 'cd /destination && tar xzvf -'

### Backup /usr from server and compress on server and store on local pc

ssh root@192.168.1.186 tar cvfz - /usr > remote_files.tar.gz
