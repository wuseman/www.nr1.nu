# check

##### Power Supply Triggered Alert

   check (){ power=$(acpi -a) ; if [[ $power == *on-line* ]] ; then echo "supply is on"; else echo "somebody is steeling your laptop"; amixer -c0 set Master 100+ unmute ; mpg123 nuclear-alarm.mp3 ; fi } ;while true; do check ; sleep 2 ; done

##### Install MP4Box

   check  output

##### Matrix Style

   check  the sample output below, the command was too long :(

##### checking space availabe on all /proc/mounts points (using Nagios check_disk)

   check _disk -w 15% -c 10% $(for x in $(cat /proc/mounts |awk '{print $2}')\; do echo -n " -p $x "\; done)

##### Shows what processes need to be restarted after system upgrade

   check restart

##### See where a shortened url takes you before click

   check (){ curl -sI $1 | sed -n 's/Location: *//p';}

##### Check if a .no domain is available

   check _dns_no() { for i in $* ; do if `wget -O - -q http://www.norid.no/domenenavnbaser/whois/?query=$i.no | grep "no match" &>/dev/null` ; then echo $i.no "available" ; fi ; sleep 1 ;done }

##### Check a port's state on a given host

   check port() { sudo nmap -sS -p $1 $2 }

##### Matrix Style

   check  the sample output below, the command was too long :(

##### checking space availabe on all /proc/mounts points (using Nagios check_disk)

   check _disk -w 15% -c 10% $(for x in $(cat /proc/mounts |awk '{print $2}')\; do echo -n " -p $x "\; done)

##### Shows what processes need to be restarted after system upgrade

   check restart

##### See where a shortened url takes you before click

   check (){ curl -sI $1 | sed -n 's/Location: *//p';}

##### Check if a .no domain is available

   check _dns_no() { for i in $* ; do if `wget -O - -q http://www.norid.no/domenenavnbaser/whois/?query=$i.no | grep "no match" &>/dev/null` ; then echo $i.no "available" ; fi ; sleep 1 ;done }

##### Check a port's state on a given host

   check port() { sudo nmap -sS -p $1 $2 }
