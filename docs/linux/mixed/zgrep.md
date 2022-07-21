# zgrep

##### Retrieve a download count for URLs in apache logs

   zgrep  'pattern' /var/logs/apache2/access.log* | awk '{print $7}' | sort -n | uniq -c | sort -rn

##### Check for login failures and summarize

   zgrep  "Failed password" /var/log/auth.log* | awk '{print $9}' | sort | uniq -c | sort -nr | less

##### concatenate compressed and uncompressed logs

   zgrep  -h "" `ls -tr access.log*`

##### grep compressed log files without extracting

   zgrep  -i "string" log.tar.gz

##### zgrep with colour into less

   zgrep   -i color=always "search" file.gz | less -R

##### grep across gzip files and sort by numeric day & time

   zgrep   -i color=always "string" files.gz | sort -k 2,3

##### Find installed packages in Ubuntu

   zgrep  color=always 'get install' /var/log/apt/history.log*

##### Figure out if your kernel has an option enabled

   zgrep  CONFIG_MAGIC_SYSRQ /proc/config.gz

##### Check for login failures and summarize

   zgrep  "Failed password" /var/log/auth.log* | awk '{print $9}' | sort | uniq -c | sort -nr | less

##### concatenate compressed and uncompressed logs

   zgrep  -h "" `ls -tr access.log*`

##### grep compressed log files without extracting

   zgrep  -i "string" log.tar.gz

##### zgrep with colour into less

   zgrep   -i color=always "search" file.gz | less -R

##### grep across gzip files and sort by numeric day & time

   zgrep   -i color=always "string" files.gz | sort -k 2,3

##### Find installed packages in Ubuntu

   zgrep  color=always 'get install' /var/log/apt/history.log*
