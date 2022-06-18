# find

Search for files in a directory hierarchy

### Search for files only
  
```bash
find -type f   
```
### Search for folders only
  
```bash
find -type d
```
### Search for Symlinks ony                                                                             
  
```bash
find -type l   
```
### Search 3 levels deep                                                                               
  
```bash
find -depth 2         
```
### Search for files via regex                                                                       
  
```bash
find -regex PATTERN     
```
### Exactly 8 512-bit blocks                                                              
  
```bash
find -size 8    
```
### Smaller than 128 bytes                                                                                  
  
```bash
find -size -128c
```
### Exactly 1440KiB                                                                                 
  
```bash
find -size 1440k
```
### Larger than 10MiB                                                                                  
  
```bash
find -size +10M            
```
### Larger than 2GiB 
  
```bash
find -size +2G                
```
### Search for all files that is larger then 500MB
  
```bash
find / -type f -size +500M                                                                        
```

#### Search for all Executable files
```bash
for i in `find -type f`; do [ -x $i ] && echo "$i is executable"; done
```

### Search for `foo` text inside all files in current folder via parallel and use %150 power of our `CPU` per core
  
```bash
find . -type f | `parallel` -k -j150% -n 1000 -m grep -H -n <foo> {}
```

### Find broken symlinks and delete them 
  
```bash
find -L /path/to/check -type l -delete   
```
### Find all the links to a file
  
```bash
find -L / -samefile /path/to/file -exec ls -ld {} +
```
### Find the most recently changed files (recursively)
  
```bash
find . -type f -printf '%TY-%Tm-%Td %TT %p\n' | sort
```

### Remove Fucked Dirnames from `Microsoft Windows` and `Apple`

```bash
ls -li|find . -inum 4063242 -delete
```
### Find all gz files and extract them
  
```bash
find . -type f -iname "*.gz" -print0 -execdir atool -x {} \; -delete
```
### Last accessed between now and 24 hours ago
  
```bash
find -atime 0                                   
```
### Accessed more than 24 hours ago                                                  
  
```bash
find -atime +0 
```
### Accessed between 24 and 48 hours ago                                                                                
  
```bash
find -atime 1         
```
### Accessed more than 48 hours ago                                                                            
  
```bash
find -atime +1 
```
### Accessed less than 24 hours ago (same a 0)                                                                                
  
```bash
find -atime -1       
```
### File status changed within the last 6 hours and 30 minutes                                                                            
  
```bash
find -ctime -6h30m     
```
### Files modified within the last day                                                    
  
```bash
find /etc -type f -ctime -1      
```
### Last modified more than 1 week ago                                                                
  
```bash
find -mtime +1w                                                                              
```
### Hs exactly these permissions", i.e. bitwise equality. 
  
```bash
find /path -perm 777                                                                              
```
### Change folders permissiosn top 775
  
```bash
find . -type d -exec chmod 775 {} \;       
```
### Change files permissiosn top 664                                                       
  
```bash
find . -type f -exec chmod 775 {} \;                                                           
```
### Find deleleted fles andrestore
  
```bash
find /proc/*/fd -ls | grep  '(deleted)' 
```
### Find all 0 byted size files
  
```bash
find "$dir" -size 0       
```
### Find file typ, for example compress for ccompresed filesx
  
```bash
find / -type f -exec file {} +                                                                    
```
### Exclude Multiple Directories - Various Options
  
```bash
find . -type d \( -path dir1 -o -path dir2 -o -path dir3 \) -prune -false -o -name '*.txt'        
```

```bash
find -name "*.js" -not -path "./directory/*"
  
```bash
find / -name MyFile ! -path '*/Directory/*'
```

```bash
find . -name '*.js' | grep -v excludeddir
```
  
```bash
find . -name '*.js' -and -not -path directory
```
  
```bash
find /glftpd/site/ -type d -not -path "*/glftpd/site/databases/*" 
```
