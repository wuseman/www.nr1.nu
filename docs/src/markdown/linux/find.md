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

### Report disk usage by file type
```sh
find . -type f -empty -prune -o -type f -printf "%s\t" -exec file --brief --mime-type '{}' \; \
	| awk 'BEGIN {printf("%12s\t%12s\n","bytes","type")} {type=$2; a[type]+=$1} END {for (i in a) printf("%12u\t%12s\n", a[i], i)|"sort -nr"}'
```

###  Find with invert match - e.g. find every file that is not mp3 
```sh
find . -name '*' -type f -not -path '*.mp3'
```
### Find files/dirs modified within a given period
```sh
find . -type d -newermt "2019-01-01" \! -newermt "2019-02-01" -exec ls -ld {} \;
```
###  Count the total number of hours of your music collection
```sh
find . -print0 | xargs -0 -P 40 -n 1 sh -c 'ffmpeg -i "$1" 2>&1 | grep "Duration:" | cut -d " " -f 4 | sed "s/.$//" | tr "." ":"' - | awk -F ':' '{ sum1+=$1; sum2+=$2; sum3+=$3; sum4+=$4; if (sum4 > 100) { sum3+=1; sum4=0 }; if (sum3 > 60) { sum2+=1; sum3=0 }; if (sum2 > 60) { sum1+=1; sum2=0 } if (NR % 100 == 0) { printf "%.0f:%.0f:%.0f.%.0f\n", sum1, sum2, sum3, sum4 } } END { printf "%.0f:%.0f:%.0f.%.0f\n", sum1, sum2, sum3, sum4 }'
```
### Store the output of find in an array
```sh
mapfile -d $'\0' arr < <(find /path/to -print0)
```
### Find all log files modified 24 hours ago, and zip them
```sh
find . -type f -mtime +1 -name "*.log" -exec zip -m {}.zip {} \; >/dev/null
```
### List status of all GIT repos
```sh
find ~ -name ".git" 2> /dev/null | sed 's/\/.git/\//g' | awk '{print "-------------------------\n\033[1;32mGit Repo:\033[0m " $1; system("git --git-dir="$1".git --work-tree="$1" status")}'
```

### Change the encoding of all files in a directory and subdirectories
```sh
find . -type f  -name '*.java' -exec sh -c 'iconv -f cp1252 -t utf-8 "$1" > converted && mv converted "$1"' -- {} \;
```

### Find all files recursively with specified string in the filename and output any lines found containing a different string.
```sh
find . -name *conf* -exec grep -Hni 'matching_text' {} \; > matching_text.conf.list
```