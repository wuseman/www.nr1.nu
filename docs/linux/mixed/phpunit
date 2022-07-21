# phpunit

##### PHPUnit: Show the 5 slowest tests with their runtime

   phpunit  log-json php://stdout | awk '$NF ~ '/,/' && $1 ~ /"(test|time)"/' | cut -d: -f2- | sed "N;s/\n//" | sed "s/,//"| awk 'BEGIN{FS=""}; {print $2 $1}' | sort -r | head -n 5

##### PHPUnit: Show the 5 slowest tests with their runtime

   phpunit  log-json php://stdout | awk '$NF ~ '/,/' && $1 ~ /"(test|time)"/' | cut -d: -f2- | sed "N;s/\n//" | sed "s/,//"| awk 'BEGIN{FS=""}; {print $2 $1}' | sort -r | head -n 5
