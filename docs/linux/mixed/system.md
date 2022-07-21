# system

##### Change default values on Foundry (Brocade) RX and MLX BigIron L3 (routers & switches)

   system  max <some value>

##### On Mac OS X, runs System Profiler Report and e-mails it to specified address.

   system _profiler | mail -s "$HOSTNAME System Profiler Report" user@domain.com

##### Show battery infomations for OS X 10.5.x

   system _profiler SPPowerDataType | egrep -e "Connected|Charge remaining|Full charge capacity|Condition" | sed -e 's/^[ \t]*//'

##### Get Hardware UUID in Mac OS X

   system _profiler SPHardwareDataType | awk '/UUID/ { print $3; }'

##### Show running services (using systemctl)

   system ctl no-page -t service -a state running no-legend

##### Find all PowerPC applications on OS X

   system _profiler SPApplicationsDataType | perl -nl -e  '@al=<>; $c=@al; while($j<$c){ $apps[$i].=$al[$j]; $i++ if ($al[$j] ) =~ /^\s\s\s\s\S.*:$/; $j++} while($k<$i){ $_=$apps[$k++]; if (/Kind: PowerPC/s) {print;}}'

##### Find all PowerPC applications on OS X

   system _profiler SPApplicationsDataType | grep -A3 -B4 "Kind: PowerPC"

##### Print failed units in systemd

   system ctl failed | head -n -6 | tail -n -1

##### On Mac OS X, runs System Profiler Report and e-mails it to specified address.

   system _profiler | mail -s "$HOSTNAME System Profiler Report" user@domain.com

##### Show battery infomations for OS X 10.5.x

   system _profiler SPPowerDataType | egrep -e "Connected|Charge remaining|Full charge capacity|Condition" | sed -e 's/^[ \t]*//'

##### Get Hardware UUID in Mac OS X

   system _profiler SPHardwareDataType | awk '/UUID/ { print $3; }'

##### Show running services (using systemctl)

   system ctl no-page -t service -a state running no-legend

##### Find all PowerPC applications on OS X

   system _profiler SPApplicationsDataType | perl -nl -e  '@al=<>; $c=@al; while($j<$c){ $apps[$i].=$al[$j]; $i++ if ($al[$j] ) =~ /^\s\s\s\s\S.*:$/; $j++} while($k<$i){ $_=$apps[$k++]; if (/Kind: PowerPC/s) {print;}}'

##### Find all PowerPC applications on OS X

   system _profiler SPApplicationsDataType | grep -A3 -B4 "Kind: PowerPC"
