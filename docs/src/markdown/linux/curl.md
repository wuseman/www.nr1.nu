# curl


### Dump header to file

    curl -sL --dump-header cookie.txt http://192.168.32.1

## Store and save cookies

    curl -b cookie.txt -c cookie.txt http://192.168.32.1/index.html

## Method 2: Store and save cookies

    curl --cookie cookie.txt --cookie-jar cookie.txt http://192.168.32.1/index.html will both store and send saved cookies

### Method 3: Use STDOUT/STDIN for login

write to STDOUT and save into $cookie variable read cookie from $cookie variable

    cookie=$(curl -c - 192.168.32.1)
    curl --cookie <(echo "$cookie") http://192.168.32.1/index.html

### Add a Cookie

    curl -b 'session=<token>' https://google.com

### Add Two Cookies

    curl -b 'session=<token>' -b 'loggedin=true' https://google.com

### Add an Empty Cookie

    curl -b 'session=' https://google.com

### Save Cookies to a File

    curl -c cookies.txt https://www.google.com

### Load Cookies from a File

    curl -b cookies.txt https://www.google.com


### Use curl behind socks5 proxy

    curl  --socks5-hostname localhost:8001 http://www.google.com/

# Tor, for Windows

    curl  --socks5-hostname localhost:9150 https://check.torproject.org

### Progress bar

    curl  --silent ftp://ftp.example.com/file.zip

### Save to a file

    curl  -o filename foo.com/filename

### Show headers

    curl  ${url} -I -o headers -s

### Print all repos from a user

    curl  -s https://api.github.com/users/user/repos?per_page=1000\
        |grep git_url\
        |awk '{print $2}'\
        |sed 's/"\(.*\)",/\1/'

### Print WAN IP

    curl  ifconfig.me

### Print WAN IP

    curl  -s http://checkip.dyndns.org/ | grep -o "[[:digit:].]\+"

### Print info about WAN ip

    curl  ipinfo.io

### Check weather

    curl  wttr.in/sydney

### See where a shortened url takes you before click

    curl  -sI url | sed -n 's/Location: *//p'

### Send email with curl and gmail 

    curl  -n --ssl-reqd --mail-from "<user@gmail.com>" \
        --mail-rcpt "<user@server.tld>" --url smtps://smtp.gmail.com:465 -T file.txt

### Read Email

    curl -u username:password imap://mail.example.com 

### List all mailboxes and NOT view any specific message

    curl -u "username:password" imap://mail.example.com \
        -X 'UID FETCH 1234' 

### Send an http HEAD request w/curl

    curl  -I http://localhost

### Extract tarball from internet without local saving

    curl  http://example.com/a.gz | tar xz

### List all repos from wuseman

    curl  --silent https://api.github.com/repos/wuseman/

### List info from a repo

    curl  --silent "https://api.github.com/repos/wuseman/emagnet"

### List info about a user

    curl  -Ls https://api.github.com/users/wuseman

### List a users gists

    curl  -Ls https://api.github.com/users/wuseman/gists

### Print Geo info (geoipupdate.sh must be runned before)

    curl  ipinfo.io/23.66.166.151

### Pentration testing

    curl  -s -D  http://167.71.67.124/ -o /dev/null | grep -i Server\|X-Powered-By

### Sqlmap hacking

    curl  -k -i --raw -X POST -d "action=saveadwords&delconf=1&oId[]=1" https://uuruu.ru 

### This is better than -I for header

    curl  -s -D - -o /dev/null http://example.com

###  Heaer output

    curl  -L -v -s -o /dev/null google.de

## Print info about Moon

    curl  wttr.in/Moon

![Screenshot](https://uuruu.ru/linux/images/curl_moon.png)

### Extract url

    curl  --head --silent --write-out "%{redirect_url}\n" \
        --output /dev/null https://git.io/Ju8HK          

### Save file download to another nanme

    curl  -o magazine.pdf -C - https://uuruu.ru/foo.pd

### Get the HTTP status code of a URL

    curl -Lw '%{http_code}' -s -o /dev/null -I SOME_URL

### Check response time to a website

    curl -s -w 'Http code: %{http_code}\nTotal time:%{time_total}s\n' -o /dev/null https://uuruu.ru 

### Just basic documentio

    curl -w "%{time_total}\n" -o /dev/null -s www.example.com 

### Read  your incoming EMAIL

    curl -u username:password --silent "https://mail.google.com/mail/feed/atom" | tr -d '
        ' | awk -F '' '{for (i=2; i<=NF; i++) {print $i}}' | sed -n "s/'

## Pastebins

### Upload stdout to clbin

    echo hi| curl -F 'clbin=<-' https://clbin.com

### It also supports image uploads (PNG, JPG, and GIF):

    curl -F 'clbin=@image.png' https://clbin.com

### If you want to use Sprunge.us instead, type:

    cat textfile.txt | curl -F 'sprunge=<-' http://sprunge.us

### Upload on IX.io

    curl -F 'f:1=@file.txt' ix.io
    cat file.txt | curl -F 'f:1=<-' ix.io

## Parallel


### Visit google five times in one command, various methods below:

    seq 1 5 | xargs -n1 -P 5 curl -I "https://www.google.com"
    xargs -I % -P 5 curl "https://www.google.com" \ < <(printf '%s\n' {1..5})
    echo "https://www.google.com https://www.facebook.com https://www.yahoo.com" | xargs -P 5 -n 1 curl -I
    xargs -P 5 -n 1 curl -O < list.txt


## Good References

    https://fedingo.com/how-to-run-multiple-curl-requests-in-parallel/
