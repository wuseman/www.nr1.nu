# ripgrep

### Set colors for matching in .bashrc
```sh
alias rg="rg --colors 'match:none' \
    --colors 'match:bg:0x33,0x66,0xFF' \
    --colors 'match:fg:white' \
    --colors 'match:style:bold'"
```

### Grep only uppercase

```sh
rga "^[[:upper:]]" <somefile>.txt 

```
### Search for only A-Za-z

```sh
rga "([A-Za-z ]*)" <somefile>.txt 

```
### Grep wuzi for three times then quit

```sh
rga -E "wuzi{3}" <somefile>.txt 

```
### Grep  two strings

```sh
rga -E "(GPL|General Public License)" <somefile>.txt 

```
### Count the number of matches

```sh
rga -c "wuzi" <somefile>.txt 

```
### Get with ```sh
rga exact x strings matches from output

```sh
rga "^[A-Za-z0-9]\{6\}$" myfile.text 

```
### Grep all non-ascii character in file

```sh
rga --color='auto' -P -n '[^\x00-\x7F]' 

```
### Get all domains from html

```sh
rga -oP '(?<=www\.)\s?[^\/]*'  

```
### Grep tab

```sh
rga $'\t' 

```
### PRint installed packages from today

```sh
rga -e `date +%Y-%m-%d` /var/log/dpkg.log | awk '/install / {print $4}' | 

```
### Search for a php command backdoor

```sh
rga -RPl --include=*.{php,txt,asp} "(passthru|shell_exec|system|phpinfo|base64_decode|chmod|mkdir|fopen|fclose|readf?ile) *\(" /var/www/

```
### Find all strings that ends with wuzi  

```sh
rga "wuzi$" <somefile>.txt   

```
### Print lines begining with range of letters

```sh
rga ^[A-D] table.txt

```
### 1xGrep http/ftp urls

```sh
rga -Eoi '<a [^>]+>'

```
### 2xGrep http/ftp urls

```sh
rga -Eo 'href="[^\"]+"'

```
### 3xGrep http/ftp urls

```sh
rga -Eo '(http|https)://[^/"]+'

```
### 4xGrep http/ftp urls

```sh
rga -Eo "(http|https)://[a-zA-Z0-9./?=_-]*"

```
### Grep emails only

```sh
rga -srhw "[[:alnum:]]\+@[[:alnum:]]\+"

```
### Grep emails by domain

ag --nofilename -t --nobreak --nocolor "\b[A-Za-z0-9._%+-]+@polisen.se:...*"

```
### Grep emails only

```sh
rga -E -o -r "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b"

```
### Grep emails and passwords

```sh
rga -rEiEio "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b:...*"

```
### Grep mac addr

```sh
rga -io '[0-9a-f]{12}'

```
### Grep AND & OR 

```sh
rga 'Manager.*Sales\|Developer*Tech'

```
### Search only for the full word

```sh
rga -w "of" table.txt

```
### Print 3 lines after word

```sh
rga -A 3 "of" table.txt

```
### Print 3 lines above word

```sh
rga -B 3 "of" table.txt

```
### Select Matches at Ending

```sh
rga "fish$"

```
### Match from a Set of Characters

```sh
rga "c[aeiou]t"

```
### Specify Repetitions in Pattern

```sh
rga -E "[aeiou]{3}"

```
### Display all Sub-directories

ls -l ~ | ```sh
rga "drw"

```
### Search Text in Files

```sh
rga -l 'main'

```
### Find Network Hosts

```sh
rga -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" /etc/hosts

```
### Count Number of Empty Lines

```sh
rga -c "^$"

```
### Remove empty lines

```sh
rga -v -e '^$'

```
### Remove empty lines

```sh
rga -v -e '^[[:space:]]*$'

```
### Grep sterr

command 2>&1 >/dev/null | ```sh
rga 'something'

```
### Extract between 2 words

echo "Here is a string" | ```sh
rga -o -P '(?<=Here).*(?=string)'

```
### Print word after another word 

echo "field1 field2 field3 field4" | ```sh
rga -oP '(?<=field3 )[^ ]*'

```
### Print word afer another word

echo "field1 field2 field3 field4" | ```sh
rga -oP '(?<=field2 )\w+'

```
### Filename

```sh
rga -Po '"id":.*?[^\\]",'

```
### Grep wstrings that wich is include 22 words or more

```sh
rga ’ˆ.\{22,\}$’

```
### Search for multiple patterns, all files in current dir

```sh
rga 'apple|banana|orange'  <somefile>.txt                                                             

```
### Same as above thing, case-insensitive

```sh
rga -i 'apple|banana|orange' *                                                                                                                                                                           

```
### All lines matching multiple patterns

```sh
rga 'score|nation|liberty|equal' <somefile>.txt                                

```
### Grep "Foo" or "Goo"

```sh
rga '[FG]oo' <somefile>.txt   

```
### Grep Blank Characters.

```sh
rga "^[[:blank:]]        <somefile>.txt  

```
### Find blank lines

```sh
rga "^$" <somefile>.txt  

```
### Show all matches, and five lines before each match

```sh
rga -B5 "test" <somefile>.txt      

```
### Show all matches, and ten lines after each match

```sh
rga -A10 "test" <somefile>.txt      

```
### Five lines before and ten lines after

```sh
rga -B5 -A5 "test" <somefile>.txt                                                                                                                                                                                                       
```

### Grep IPV6

```sh
rga "^\([0-9a-fA-F]\{0,4\}:\)\{1,7\}[0-9a-fA-F]\{0,4\}$"

```
### Grep IPV4

```sh
rga -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}"

```
### Grep networks hsots

```sh
rga -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" /etc/hosts 

```
### Grep valid ips only

```sh
rga -o '\b(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)' /etc/hosts 

```
### Print idle / usage in percentage of cpu

```sh
rga "cpu " /proc/stat | awk -F ' ' '{total = $2 + $3 + $4 + $5} END {print "idle \t used\n" $5*100/total "% " $2*100/total "%"}'

# Examples

printf '%s\n' \
'These are IPs for related computers' \
'PC1 IP is: 192.168.0.1' \
'PC2 IP is: 192.168.1.2' \
'PC3 IP is: 192.168.10.255' \
'PC4 IP is: unknown' > testfile

```
### Match IPv4 Addresses but don't arga dots

```sh
rga '\<([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\>' testfile

```
### Match (0-255).(0-255).(0-255). Format

```sh
rga '(\<([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\>\.){3}' testfile

```
### Grep  (0-255).(0-255).(0-255).(0-255) Format IPv4 Addresses, dots included

```sh
rga '(\<([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\>\.){3}\<([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\>'
```
### Extract emails from file

```sh
rga -E -o "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b" file.txt
```

### Extract valid IP addresses

```sh
rga -E -o "(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)" file.txt
```

### Extract passwords

```sh
rga -i "pwd\|passw" file.txt
```

### Extract users

```sh
rga -i "user\|invalid\|authentication\|login" file.txt
```

### Extract hashes

Extract md5 hashes ({32}), sha1 ({40}), sha256({64}), sha512({128})

```sh
rga -oE '(^|[^a-fA-F0-9])[a-fA-F0-9]{32}([^a-fA-F0-9]|$)' *.txt | ```sh
rga -o '[a-fA-F0-9]{32}' > md5-hashes.txt
```

### Extract valid MySQL-Old hashes

```sh
rga -e "[0-7][0-9a-f]{7}[0-7][0-9a-f]{7}" *.txt > mysql-old-hashes.txt
```
### Extract blowfish hashes

```sh
rga -e "$2a\$\08\$(.){75}" *.txt > blowfish-hashes.txt
```

### Extract Joomla hashes

```sh
rga -o "([0-9a-zA-Z]{32}):(w{16,32})" *.txt > joomla.txt
```

### Extract VBulletin hashes

```sh
rga -o "([0-9a-zA-Z]{32}):(S{3,32})" *.txt > vbulletin.txt
```

### Extraxt phpBB3-MD5

```sh
rga -o '$H$S{31}' *.txt > phpBB3-md5.txt
```
#Extract Wordpress-MD5

```sh
rga -o '$P$S{31}' *.txt > wordpress-md5.txt
```
#Extract Drupal 7

```sh
rga -o '$S$S{52}' *.txt > drupal-7.txt
```
#Extract old Unix-md5

```sh
rga -o '$1$w{8}S{22}' *.txt > md5-unix-old.txt
```
#Extract md5-apr1

```sh
rga -o '$apr1$w{8}S{22}' *.txt > md5-apr1.txt
```

### Extract sha512crypt, SHA512(Unix)

```sh
rga -o '$6$w{8}S{86}' *.txt > sha512crypt.txt
```

### Extract e-mails from text files

```sh
rga -E -o "\b[a-zA-Z0-9.#?$*_-]+@[a-zA-Z0-9.#?$*_-]+.[a-zA-Z0-9.-]+\b" *.txt > e-mails.txt
```

### Extract HTTP URLs from text files

```sh
rga -shoP 'http.*?[" >]' *.txt 
```

### For extracting HTTPS, FTP and other URL format use

```sh
rga -E '(((https|ftp|gopher)|mailto)[.:][^ >"   ]*|www.[-a-z0-9.]+)[^ .,;       >">):]' *.txt > urls.txt
```

### Extract Floating point numbers

```sh
rga -E -o "^[-+]?[0-9]*.?[0-9]+([eE][-+]?[0-9]+)?$" *.txt > floats.txt
```


### Extract credit card data

#### Visa

```sh
rga -E -o "4[0-9]{3}[ -]?[0-9]{4}[ -]?[0-9]{4}[ -]?[0-9]{4}" *.txt > visa.txt
```

#### MasterCard

```sh
rga -E -o "5[0-9]{3}[ -]?[0-9]{4}[ -]?[0-9]{4}[ -]?[0-9]{4}" *.txt > mastercard.txt
```

#### American Express

```sh
rga -E -o "\b3[47][0-9]{13}\b" *.txt > american-express.txt
```

#### Diners Club

```sh
rga -E -o "\b3(?:0[0-5]|[68][0-9])[0-9]{11}\b" *.txt > diners.txt
```

#### Discover

```sh
rga -E -o "6011[ -]?[0-9]{4}[ -]?[0-9]{4}[ -]?[0-9]{4}" *.txt > discover.txt
```

#### JCB

```sh
rga -E -o "\b(?:2131|1800|35d{3})d{11}\b" *.txt > jcb.txt
```

#### AMEX

```sh
rga -E -o "3[47][0-9]{2}[ -]?[0-9]{6}[ -]?[0-9]{5}" *.txt > amex.txt
```

### Extract IDs

#### Extract Social Security Number (SSN)

```sh
rga -E -o "[0-9]{3}[ -]?[0-9]{2}[ -]?[0-9]{4}" *.txt > ssn.txt
```

#### Extract Indiana Driver License Number

```sh
rga -E -o "[0-9]{4}[ -]?[0-9]{2}[ -]?[0-9]{4}" *.txt > indiana-dln.txt
```

### Extract US Passport Cards

```sh
rga -E -o "C0[0-9]{7}" *.txt > us-pass-card.txt
```

#### Extract US Passport Number

```sh
rga -E -o "[23][0-9]{8}" *.txt > us-pass-num.txt
```

####
 Extract US Phone Numberss

```sh
rga -Po 'd{3}[s-_]?d{3}[s-_]?d{4}' *.txt > us-phones.txt
```

### #Extract ISBN Numbers
```sh
rga -a -o "\bISBN(?:-1[03])?:? (?=[0-9X]{10}$|(?=(?:[0-9]+[- ]){3})[- 0-9X]{13}$|97[89][0-9]{10}$|(?=(?:[0-9]+[- ]){4})[- 0-9]{17}$)(?:97[89][- ]?)?[0-9]{1,5}[- ]?[0-9]+[- ]?[0-9]+[- ]?[0-9X]\b" *.txt > isbn.txt
```
