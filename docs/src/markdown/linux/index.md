<p align="center">
  <img width="120px" src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Tux.svg/506px-Tux.svg.png?20220320193426" />
  <h2 align="center"># myBestOneLiners </h2>
  <h3 align="center">And some other tips and tricks..</h3>
</p>

***

Do you know a better or more efficient way to perform any of my oneliners, I would like to know how this can be done, I love learning new ways and doing it effectively and I love linux. If you see something that is wrong or "negative", I also want to know, feel free to explain why as clearly as possible AND I want to know how to do it in the right "way". Pipefalls there is so much of, I want to do it the "right" way and get deeper into the "POSIX" way to do things, contribute pleaase 🐧 

If you can not then I hope I contributed to you instead via sharing the knowledge.

You can copy and use my wiki as much as you want as long as you follow GPL v3.0 but IF you want to link or share something from my wiki I would be happy if you make a link to the wiki so more people can find here and the more we is the better we can do this together.

All scripts are created by me personally (I will be clear with who the creator is and where I got the script from if it is not from myself) and licensed under GPL v3.0, this also applies to the scripts that I can use without a header / author / title in the script.

Thank you for showing your respect and being honest, I'm passionate about freedom and freedom of speech! 

🐧  GNU/Linux/Pipes/Authors - Power 🐧 
***

My Hardware used in previews:

```sh
Internet : 10000Mbit.se(Telia)
CPU Model: Intel(R) Xeon(R) CPU E5-2680 v3 @ 2.50GHz
CPU Cores: printf '%s' $(nproc) = 48
```

Atm I use  $((nproc + 1)) for the best perfomance, for threads I trying to use $((nproc + 1)) x 2 for best perfomance. 

```sh
export NUMCPUS=$(nproc)
export NUMCPUSPLUSONE=$(( NUMCPUS + 1 ))
export NUMTHREADS=$(( NUMCPUSPLUSONE + NUMCPUS ))
```
And then: 

```sh
parallel -j${NUMCPUSPLUSONE} -n${NUMTHREADS} ....
```

If someone has another awesome suggestion how to speed up things, please let me know :) 

### Really fast portscanner with colorized output:

65535 ports scanned in ~3.5s 

![portscanner](https://user-images.githubusercontent.com/26827453/174215886-449ca2d0-4141-4ec8-a34d-e15a26ceb256.gif)

```sh
time seq 65535 | parallel -k --joblog portscan -j9 --pipe --cat -j200% -n9000 --tagstring '\033[30;3{=$_=++$::color%8=}m' 'nc -vz localhost $(head -n1 {})-$(tail -n1 {})'
```

### Download files fast as ****:

```sh
time seq 1000|parallel -a 1 -j1000 wget
```

###  Fastest segmented parallel sync of a remote directory over ssh

```sh
lftp -u user,pwd -e "set sftp:connect-program 'ssh -a -x -T -c arcfour -o Compression=no'; mirror -v -c --loop --use-pget-n=3 -P 2 /remote/dir/ /local/dir/; quit" sftp://remotehost:22
```

###  Find dupe files and colorize output:

```sh
find /glftpd/site/archive -type f|grep '([0-9]\{1,9\})\.[^.]\+$'|parallel -n1 -j200% md5sum ::: |awk 'x[$1]++ { print $2 " :::"}'|sed 's/^/Dupe: /g'|sed 's,Dupe,\x1B[31m&\x1B[0m,'
```

###  Create a progress bar over entire window until we count to 1000

![Screenshot](.previews/parallel_print_progress.gif)

```sh
seq 1000 |parallel -j30 --bar '(echo {};sleep 0.1)'
```

### Ports we probably wanna set as accpepted in our iptable chains

```sh
lsof -i -nlP|awk '{print $9, $8, $1}'|sed 's/.*://'|sort -u
```

### Print all ips that we have a conection with atm

```sh
netstat -lantp | grep ESTABLISHED |awk '{print $5}' | awk -F: '{print $1}' | sort -u
```
### Print title of website:

```sh
echo -e "URL Title: $(curl -s $1|grep -i title|cut -d'<' -f2|cut -d'>' -f2)"
```

### Run 10 curl commands in parallel via xargs

```sh
NUM="10";time seq ${NUM}|time xargs -I % -n1 -P${NUM} curl -sL ifconfig.co
xx.xxx.xxx.xx
xx.xxx.xxx.xx
xx.xxx.xxx.xx
xx.xxx.xxx.xx
xx.xxx.xxx.xx
xx.xxx.xxx.xx
xx.xxx.xxx.xx
xx.xxx.xxx.xx
xx.xxx.xxx.xx
xx.xxx.xxx.xx
real 0m0.028s
user 0m0.012s
sys  0m0.010s
```
     
### Print CPU usage 

```sh
grep "cpu " /proc/stat | awk -F ' ' '{total = $2 + $3 + $4 + $5} END {print "idle \t used\n" $5*100/total "% " $2*100/total "%"}'
```

### Rounds Slower is better, as slow as you can tolerate. Timing for different -a values, each measured 20 times:

```sh
for j in 16 32 64 100 150; do
    echo -n "-a $j takes on average";
     for i in {1..20}; do
         ssh-keygen -qa $j -t ed25519 -f test -N test;
         time ssh-keygen -qa $j -N tost -pP test -f test;
         rm test{.pub,};
     done |& ```sh
grep real | awk -F m '{print $2}' | tr -d s | awk '{sum+=$1} END{print sum/NR}';
done
```

### Print Sensor Data Without Any Extra Tools

```sh
paste <(cat /sys/class/thermal/thermal_zone*/type) <(cat /sys/class/thermal/thermal_zone*/temp) \
| column -s $'\t' -t \
| sed 's/\(.\)..$/.\1°C/'
```

### Print Sensor Data in a for-loop

```sh
for zone in `ls /sys/class/thermal/ | ```sh
grep thermal_zone`;do
    echo -n "`cat /sys/class/thermal/${zone}/type`: "
    echo `cat /sys/class/thermal/$zone/temp | sed 's/\(.\)..$/.\1°C/'`
done
```

### Print text in flashing colors

```sh
flashing_text () { 
  wuzi='*w*u*s*e*m*a*n*_*p*w*n*z \e[00;34m !';
  for i in {0..59}; do
      echo -ne "\r${wuzi:0:$i}" ;sleep 0.05;
  done };flashing_text;
```

### Print core speeds and also the real speed

```sh
awk -F": " '/cpu MHz\ */ { print "Processor (or core) running speed is: " $2 }' /proc/cpuinfo ; dmidecode | awk -F": " '/Current Speed/ { print "Processor real speed is: " $2 }'
```

### Some distro checker commands I used during the years in my scripts

```sh
distro=$(cat /etc/os-release|head -n 1|cut -d'=' -f2|sed 's/"//g'| awk '{print tolower($0)}')
distro2="$(cat /etc/issue | head -n +1 | awk '{print $1}')"
distro3="$(tr -s ' \011' '\012' < /etc/issue | head -n 1)"
distro4="$(cat /etc/issue | head -n +1 | awk '{print $1}')"
distro5="$(cat /etc/os-release | ```sh
grep "PRETTY_NAME" | sed 's/PRETTY_NAME=//g' | sed 's/["]//g' | awk '{print $1}')"
awk -F'"' '/NAME/ {print tolower($2)} /NR=2/' /etc/os-release|head -n 1
```
### Get your monitor/screen model 

```sh
while read -r output hex conn; do
    [[ -z "$conn" ]] && conn=${output%%-*}
    echo "# $output $conn   $(xxd -r -p <<< "$hex")"
done < <(xrandr --prop | awk '
    !/^[ \t]/ {
        if (output && hex) print output, hex, conn
        output=$1
        hex=""
    }
    /ConnectorType:/ {conn=$2}
    /[:.]/ && h {
        sub(/.*000000fc00/, "", hex)
        hex = substr(hex, 0, 26) "0a"
        sub(/0a.*/, "", hex)
        h=0
    }
    h {sub(/[ \t]+/, ""); hex = hex $0}
    /EDID.*:/ {h=1}
    END {if (output && hex) print output, hex, conn}
    ' | sort
)

```

### Simple IFS example

```sh
bash -c 'set a b c d; IFS="+-;"; echo "$*"'
```

### Date script for print days, hours, minutes and seconds between the dates

```sh
then=$(date -u -d "2014-10-25 00:00:00" +%s)
now=$(date -u +%s)
date -u -d "2014-01-01 $now sec - $then sec" +"%j days %H hours %M minutes and %S seconds"
```


### Convert a magnet url to a torrent file

```sh
WATCH_DIR="$HOME/downloads"
cd $WATCH_DIR
[[ "$1" =~ xt=urn:btih:([^&/]+) ]] || exit;
echo "d10:magnet-uri${#1}:${1}e" > "meta-${BASH_REMATCH[1]}.torrent"
```

### Check harddrive space and print green after our value is reached or not

```sh
HDFREE=$(df -h|e```sh
grep  "[0-9].*\/$"|awk '{print $5}'|sed 's/%//g')

if [[ $HDFREE -lt 50 ]]; then
echo -e "Your shared hard drive is \e[1;31m${HDFREE}%\e[0m full"
else
echo -e "Your shared hard drive is \e[1;32m${HDFREE}%\e[0m full"
fi
```

### How I grab valuable stuff from apk files (extracted)
```sh
grep -EHirn "accesskey|admin|aes|api_key|apikey|checkClientTrusted|crypt|http:|https:|password|pinning|secret|SHA256|SharedPreferences|superuser|token|X509TrustManager|insert into" APKfolder/
```

### Get Sensor Data Without Any Info 

```sh
cat /sys/class/thermal/thermal_zone*/temp
```


### Resize all jpg images to 50% of the original size

```sh
find . -maxdepth 1 -iname "*.jpg" | xargs -L1 -I{} convert -resize 50% "{}" _half/"{}"
```
### Find IOMMU groups

```sh
for d in /sys/kernel/iommu_groups/*/devices/*; do
    n=${d#*/iommu_groups/*}; n=${n%%/*}; 
    printf 'IOMMU Group %s ' "$n"; 
    lspci -nns "${d##*/}"; 
done
```

### Use curl as a pro

### Do It Once

```sh
seq 1 | parallel -n0 "curl -H 'Content-Type: application/json' https://ifconfig.co -X POST -d '{\"url\":\"https://google.com/\"}'"
```
### Do It Twice

```sh
seq 2 | parallel -n0 "curl -H 'Content-Type: application/json' https://ifconfig.co -X POST -d '{\"url\":\"https://google.com/\"}'"
```

### Do It 4 Times, But At 2 A Aime

```sh
seq 4 | parallel -n0 -j2 "curl -H 'Content-Type: application/json' https://ifconfig.co -X POST -d '{\"url\":\"https://google.com/\"}'"
```
### More parallel tricks for curl

```sh
seq 1 | parallel -n0 curl "http --ignore-stdin POST https://ifconfig.co url=https://google.com/"
```
### Continue until forever until we press ctrl+c (100x)

```sh
Before we will do it again, wait for all tasks to be completed and we start over again

target=${1:-$(cat 1)}
while true; do
    for i in $(seq 100);do curl $target > /dev/null & 
done
    wait 
done
```

# Extract credit card data

### Visa

```sh
grep -E -o "4[0-9]{3}[ -]?[0-9]{4}[ -]?[0-9]{4}[ -]?[0-9]{4}" *.txt > visa.txt
```

### #MasterCard
```sh
grep -E -o "5[0-9]{3}[ -]?[0-9]{4}[ -]?[0-9]{4}[ -]?[0-9]{4}" *.txt > mastercard.txt
```

### American Express
```sh
grep -E -o "\b3[47][0-9]{13}\b" *.txt > american-express.txt
```

### Diners Club
```sh
grep -E -o "\b3(?:0[0-5]|[68][0-9])[0-9]{11}\b" *.txt > diners.txt
```

### Discover
```sh
grep -E -o "6011[ -]?[0-9]{4}[ -]?[0-9]{4}[ -]?[0-9]{4}" *.txt > discover.txt
```

### JCB

```sh
grep -E -o "\b(?:2131|1800|35d{3})d{11}\b" *.txt > jcb.txt
```

### AMEX
```sh
grep -E -o "3[47][0-9]{2}[ -]?[0-9]{6}[ -]?[0-9]{5}" *.txt > amex.txt
```

# Extract IDs


### Extract Social Security Number (SSN)
```sh
grep -E -o "[0-9]{3}[ -]?[0-9]{2}[ -]?[0-9]{4}" 
```

### Extract Indiana Driver License Number
```sh
grep -E -o "[0-9]{4}[ -]?[0-9]{2}[ -]?[0-9]{4}" 
```

### Extract US Passport Cards
```sh
grep -E -o "C0[0-9]{7}" 
```

### Extract US Passport Number
```sh
grep -E -o "[23][0-9]{8}"
```

### Extract US Phone Numberss
```sh
grep -Po 'd{3}[s-_]?d{3}[s-_]?d{4}' 
```

### Extract ISBN Numbers
```sh
grep -a -o "\bISBN(?:-1[03])?:? (?=[0-9X]{10}$|(?=(?:[0-9]+[- ]){3})[- 0-9X]{13}$|97[89][0-9]{10}$|(?=(?:[0-9]+[- ]){4})[- 0-9]{17}$)(?:97[89][- ]?)?[0-9]{1,5}[- ]?[0-9]+[- ]?[0-9]+[- ]?[0-9X]\b" 
```

### Check if a zip or a rar file has password-protection

If you need to check if zip or rar file has password protection you can do it this way.

Author: https://supportex.net/blog/2011/08/bash-check-zip-rar-file-password-protection/ 

* ZIP 
 
```sh
crypted=$( 7z l -slt -- $file | grep -i -c "Encrypted = +" )
if [ "$crypted" -eq "1" ]; then
    protected=1
fi
```

* Unrar

```sh
unrar x -p- -y -o+ "$file" 1&gt; /dev/null 2&gt; /dev/null
if [ "$?" -eq "3" ] ; then
    unrar x -p$password -y -o+ "$file" 1&gt; /dev/null 2&gt; /dev/null
fi
```
