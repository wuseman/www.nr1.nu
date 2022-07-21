# system_profiler

##### On Mac OS X, runs System Profiler Report and e-mails it to specified address.

   system_profiler  | mail -s "$HOSTNAME System Profiler Report" user@domain.com

##### Show battery infomations for OS X 10.5.x

   system_profiler  SPPowerDataType | egrep -e "Connected|Charge remaining|Full charge capacity|Condition" | sed -e 's/^[ \t]*//'

##### Get Hardware UUID in Mac OS X

   system_profiler  SPHardwareDataType | awk '/UUID/ { print $3; }'

##### Find all PowerPC applications on OS X

   system_profiler  SPApplicationsDataType | perl -nl -e  '@al=<>; $c=@al; while($j<$c){ $apps[$i].=$al[$j]; $i++ if ($al[$j] ) =~ /^\s\s\s\s\S.*:$/; $j++} while($k<$i){ $_=$apps[$k++]; if (/Kind: PowerPC/s) {print;}}'

##### Find all PowerPC applications on OS X

   system_profiler  SPApplicationsDataType | grep -A3 -B4 "Kind: PowerPC"

##### On Mac OS X, runs System Profiler Report and e-mails it to specified address.

   system_profiler  | mail -s "$HOSTNAME System Profiler Report" user@domain.com

##### Show battery infomations for OS X 10.5.x

   system_profiler  SPPowerDataType | egrep -e "Connected|Charge remaining|Full charge capacity|Condition" | sed -e 's/^[ \t]*//'

##### Get Hardware UUID in Mac OS X

   system_profiler  SPHardwareDataType | awk '/UUID/ { print $3; }'

##### Find all PowerPC applications on OS X

   system_profiler  SPApplicationsDataType | perl -nl -e  '@al=<>; $c=@al; while($j<$c){ $apps[$i].=$al[$j]; $i++ if ($al[$j] ) =~ /^\s\s\s\s\S.*:$/; $j++} while($k<$i){ $_=$apps[$k++]; if (/Kind: PowerPC/s) {print;}}'

##### Find all PowerPC applications on OS X

   system_profiler  SPApplicationsDataType | grep -A3 -B4 "Kind: PowerPC"
