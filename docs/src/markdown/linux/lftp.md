# lftp

## Settings

```
USER="wuseman"
PASSWORD="password"
IDENTD=""
```

## LFTP

### Connect -> List [main.dir] -> Disconnect
```sh
lftp -e open -u ${USER}:${PASSWORD} nr1.nu -p 65005 -e "ls;exit"        
```
### Connect -> Launch shell command
```sh
lftp -e open -u ${USER}:${PASSWORD} nr1.nu -p 65005 -e "!bash_command"
```
### Upload a file from local_dir/file to ftp_dir/file
```sh
lftp -e open -u ${USER}:${PASSWORD} nr1.nu -p 65005 -e mirror -R       
```
### Download a folder                                                
```sh
lftp -e open -u ${USER}:${PASSWORD} nr1.nu -p 65005 -e "mirror -c /path/to/ftp_dir /path/to/local_dir"                
```
### Upload a folder                                           
```sh
lftp -e open -u ${USER}:${PASSWORD} nr1.nu -p 65005 -e "mirror -R /path/to/local_dir /path/to/ftp_dir"                 
```
### Download ftp dir with 20 threads in parallel
```sh
lftp -e open -u ${USER}:${PASSWORD} nr1.nu -p 65005 -e "mirror -c -P20 /path/to/ftp_dir /path/to/local_dir"          
```


## lftp.rc

#### For fix `ls`' at 0 [`500 I won't open a connection to 192.168.1.102 (only to x.x.x.x)`]

	```sh
set ftp:ssl-allow off
```