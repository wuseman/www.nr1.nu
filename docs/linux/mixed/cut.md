# cut

##### Get unique basewords from Hashcat pot

   cut  -f 2 -d ':' oclHashcat.pot | egrep -oi '[a-z]{1,20}' | sort | uniq > base.pot

##### Shows users and 'virtual users' on your a unix-type system

   cut  -d: -f1 /etc/passwd | sort

##### get one field inside another that is delimited by space

   cut  -f2  file.txt | cut -d " " -f1

##### cut with tab or other white space chars

   cut  -f1 -d"<TAB>"

##### Display unique values of a column

   cut  -f 3 | uniq

##### Lists all usernames in alphabetical order

   cut  -d: -f1 /etc/passwd | sort

##### exclude a column with cut

   cut  -f5 complement

##### Short one line while loop that outputs parameterized content from one file to another

   cut  -f 1 three-column.txt > first-column.txt

##### strips the first field of each line where the delimiter is the first ascii character

   cut  -f2 -d`echo -e '\x01'` file

##### Lists all clients of a Squid proxy

   cut  -c23-37 /var/log/squid3/access.log | cut -d' ' -f1 | sort | uniq

##### print all except first collumn

   cut  -f 2- -d " "

##### Count accesses per domain

   cut  -d'/' -f3 file | sort | uniq -c

##### Remove the first character of each line in a file

   cut  -c 2- < <file>

##### Print all fields in a file/output from field N to the end of the line

   cut  -f N- file.dat

##### Extract busiest times from apache access log

   cut  -d " " -f1,4 access_log  | sort | uniq -c | sort -rn | head

##### extract column from csv file

   cut  -d, -f5

##### Display unique values of a column

   cut  -d',' -f6 file.csv | sort | uniq

##### Cut the first 'N' characters of a line

   cut  -c 1-N

##### Cut the first 'N' characters of a line

   cut  -c -N

##### list all crontabs for users

   cut  -d: -f1 /etc/passwd | grep -vE "#" | xargs -i{} crontab -u {} -l

##### most used unix commands

   cut  -d\    -f 1 ~/.bash_history | sort | uniq -c | sort -rn | head -n 10 | sed 's/.*/    &/g'

##### List all users

   cut  -d: -f1 /etc/passwd | sort

##### Show the most commonly used commands from .bash_history

   cut  -f1 -d" " ~/.bash_history | sort | uniq -c | sort -nr | head -n 30

##### Select columns in a file

   cut  -d: -f 1 names.txt

##### Filter IP's in apache access logs based on use

   cut  -d ' ' -f 1 /var/log/apache2/access_logs |  uniq -c | sort -n

##### Lists all users in alphabetical order

   cut  -d: -f1 /etc/passwd | sort

##### List all groups

   cut  -d: -f1 /etc/group | sort

##### Create a csv file with '5-digits prefix' phone numbers, as well as occurrences per prefix

   cut  -d, -f1 /var/opt/example/dumpfile.130610_subscriber.csv | cut -c3-5 | sort | uniq -c | sed -e 's/^ *//;/^$/d' | awk -F" " '{print $2 "," $1}' > SubsxPrefix.csv

##### Lists all usernames in alphabetical order

   cut  -d: -f1 /etc/passwd | sort

##### exclude a column with cut

   cut  -f5 complement

##### Short one line while loop that outputs parameterized content from one file to another

   cut  -f 1 three-column.txt > first-column.txt

##### strips the first field of each line where the delimiter is the first ascii character

   cut  -f2 -d`echo -e '\x01'` file

##### Lists all clients of a Squid proxy

   cut  -c23-37 /var/log/squid3/access.log | cut -d' ' -f1 | sort | uniq

##### print all except first collumn

   cut  -f 2- -d " "

##### Count accesses per domain

   cut  -d'/' -f3 file | sort | uniq -c

##### Remove the first character of each line in a file

   cut  -c 2- < <file>

##### Print all fields in a file/output from field N to the end of the line

   cut  -f N- file.dat

##### Extract busiest times from apache access log

   cut  -d " " -f1,4 access_log  | sort | uniq -c | sort -rn | head

##### extract column from csv file

   cut  -d, -f5

##### Display unique values of a column

   cut  -d',' -f6 file.csv | sort | uniq

##### Cut the first 'N' characters of a line

   cut  -c 1-N

##### Cut the first 'N' characters of a line

   cut  -c -N

##### list all crontabs for users

   cut  -d: -f1 /etc/passwd | grep -vE "#" | xargs -i{} crontab -u {} -l

##### most used unix commands

   cut  -d\    -f 1 ~/.bash_history | sort | uniq -c | sort -rn | head -n 10 | sed 's/.*/    &/g'

##### List all users

   cut  -d: -f1 /etc/passwd | sort

##### Show the most commonly used commands from .bash_history

   cut  -f1 -d" " ~/.bash_history | sort | uniq -c | sort -nr | head -n 30
