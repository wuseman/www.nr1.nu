# rclone


### completion the autocompletion script for the specified shell
```sh  
rclone config
<press N and follow the questions>
```
### about 
```sh  
rclone about 
```
### about quota information from the remote.
```sh  
rclone authorize 
```
### authorize authorization.
```sh  
rclone backend 
```
### backend a backend-specific command.
```sh  
rclone bisync 
```
### bisync bidirectonal synchronization between two paths.
```sh  
rclone cat 
```
### cat any files and sends them to stdout.
```sh  
rclone check 
```
### check the files in the source and destination match.
```sh  
rclone checksum 
```
### checksum the files in the source against a SUM file.
```sh  
rclone cleanup 
```
### cleanup up the remote if possible.
```sh  
rclone completion 
```
### config an interactive configuration session.
```sh  
rclone copy 
```
### copy files from source to dest, skipping identical files.
```sh  
rclone copyto 
```
### copyto files from source to dest, skipping identical files.
```sh  
rclone copyurl 
```
### copyurl url content to dest.
```sh  
rclone cryptcheck 
```
### cryptcheck checks the integrity of a crypted remote.
```sh  
rclone cryptdecode 
```
### cryptdecode returns unencrypted file names.
```sh  
rclone dedupe 
```
### dedupe find duplicate filenames and delete/rename them.
```sh  
rclone delete 
```
### delete the files in path.
```sh  
rclone deletefile 
```
### deletefile a single file from remote.
```sh  
rclone genautocomplete 
```
### genautocomplete completion script for a given shell.
```sh  
rclone gendocs 
```
### gendocs markdown docs for rclone to the directory supplied.
```sh  
rclone hashsum 
```
### hashsum a hashsum file for all the objects in the path.
```sh  
rclone help 
```
### help help for rclone commands, flags and backends.
```sh  
rclone link 
```
### link public link to file/folder.
```sh  
rclone listremotes 
```
### listremotes all the remotes in the config file.
```sh  
rclone ls 
```
### ls the objects in the path with size and path.
```sh  
rclone lsd 
```
### lsd all directories/containers/buckets in the path.
```sh  
rclone lsf 
```
### lsf directories and objects in remote:path formatted for parsing.
```sh  
rclone lsjson 
```
### lsjson directories and objects in the path in JSON format.
```sh  
rclone lsl 
```
### lsl the objects in path with modification time, size and path.
```sh  
rclone md5sum 
```
### md5sum an md5sum file for all the objects in the path.
```sh  
rclone mkdir 
```
### mkdir the path if it doesn't already exist.
```sh  
rclone mount 
```
### mount the remote as file system on a mountpoint.
```sh  
rclone move 
```
### move files from source to dest.
```sh  
rclone moveto 
```
### moveto file or directory from source to dest.
```sh  
rclone ncdu 
```
### ncdu a remote with a text based user interface.
```sh  
rclone obscure 
```
### obscure password for use in the rclone config file.
```sh  
rclone purge 
```
### purge the path and all of its contents.
```sh  
rclone rc 
```
### rc a command against a running rclone.
```sh  
rclone rcat 
```
### rcat standard input to file on remote.
```sh  
rclone rcd 
```
### rcd rclone listening to remote control commands only.
```sh  
rclone rmdir 
```
### rmdir the empty directory at path.
```sh  
rclone rmdirs 
```
### rmdirs empty directories under the path.
```sh  
rclone selfupdate 
```
### selfupdate the rclone binary.
```sh  
rclone serve 
```
### serve a remote over a protocol.
```sh  
rclone settier 
```
### settier storage class/tier of objects in remote.
```sh  
rclone sha1sum 
```
### sha1sum an sha1sum file for all the objects in the path.
```sh  
rclone size 
```
### size the total size and number of objects in remote:path.
```sh  
rclone sync 
```
### sync source and dest identical, modifying destination only.
```sh  
rclone test 
```
### test a test command
```sh  
rclone touch 
```
### touch new file or change file modification time.
```sh  
rclone tree 
```
### tree the contents of the remote in a tree like fashion.
```sh  
rclone version 
```


### Simple Mount

    rclone mount cloud: --allow-non-empty --allow-other --debug-fuse -v  --vfs-cache-mode=full  /mnt/tmp

### Simple Move

    rclone move source:path dest:path
    
    
### Then lete

    rclone --min-size 100M delete remote:path

### Transfer file and ignore if file exist

    rclone copy cloud:/  -L --ignore-existing  --fast-list --max-backlog=999999         --drive-chunk-size=512M --transfers=145 --checkers=145 --buffer-size=8175M --verbose local/

### Transfer files from local PC to cloud

    rclone copy local_path/  -L --fast-list --max-backlog=999999 \
        --drive-chunk-size=512M --transfers=145 --checkers=145 --buffer-size=8175M --verbose cloud:/

### Transfer files from cloud to local PC

    rclone copy cloud:/  -L --fast-list --max-backlog=999999 \
        --drive-chunk-size=512M --transfers=145 --checkers=145 --buffer-size=8175M --verbose ~/cloud_backup

### Transfer file from cloud to local PC and show progress and also delete files after transfering is complete

    rclone copy cloud:/   -L --fast-list --max-backlog=999999 \
        --drive-chunk-size=512M --transfers=145 --checkers=145 --buffer-size=8175M --verbose ~/backup


