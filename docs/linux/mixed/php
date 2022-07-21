# php

##### Convert serialized PHP data into JSON

   php  -r 'echo json_encode( unserialize( file_get_contents( "php://stdin" ) ) );'

##### Show "Max" settings for PHP

   php  -i|grep -i max

##### run php code inline from the command line

   php  -r 'echo strtotime("2009/02/13 15:31:30")."\n";'

##### a simple bash one-liner to create php file and call php function

   php  -r 'echo str_rot13 ("Hello World");'

##### Testing php configuration

   php  -i

##### Find the location of the currently loaded php.ini file

   php  -i | grep php.ini

##### phpinfo from the command line

   php  -r "phpinfo();"

##### Testing php configuration

   php  -r phpinfo();

##### Check which modules your PHP is using

   php  -m

##### Run the built in PHP-server in current folder

   php  -S 127.0.0.1:8080

##### php show list pdo module

   php  -m|grep pdo

##### Syntax highlight PHP source

   php  -s source.php > source.html

##### Congratulations on new year

   php  -r 'function a(){$i=10;while($i)echo str_repeat(" ",rand(1,79))."*".PHP_EOL;}$i=99;while($i){a();echo str_repeat(" ",34)."Happy New Year 2011".PHP_EOL;a();usleep(200000);}'

##### Testing php configuration

   php  -r "phpinfo\(\);"

##### Find the location of the currently loaded php.ini file

   php  ini

##### PHPUnit: Show the 5 slowest tests with their runtime

   php unit log-json php://stdout | awk '$NF ~ '/,/' && $1 ~ /"(test|time)"/' | cut -d: -f2- | sed "N;s/\n//" | sed "s/,//"| awk 'BEGIN{FS=""}; {print $2 $1}' | sort -r | head -n 5

##### Gather list of PHPCS error messages sorted by frequency

   php cs no-colors standard=WordPress-Core -s  $( find . -name '*.php' ) | ack -o '(?<=\()\w+(\.\w+)+(?=\)$)' | sort | uniq -c | sort -nr

##### Testing php configuration

   php  -e -c /path/to/php.ini -r 'echo "OK\n";';

##### phpinfo from the command line

   php  -i

##### View facebook friend list [hidden or not hidden]

   php  -r "echo ini_get('allow_url_fopen');" php -r "echo function_exists('curl_init');" php -r "echo function_exists('json_decode');"

##### Look PHP Version

   php  -v

##### run php code inline from the command line

   php  -r 'echo strtotime("2009/02/13 15:31:30")."\n";'

##### a simple bash one-liner to create php file and call php function

   php  -r 'echo str_rot13 ("Hello World");'

##### Testing php configuration

   php  -i

##### Find the location of the currently loaded php.ini file

   php  -i | grep php.ini

##### phpinfo from the command line

   php  -r "phpinfo();"

##### Testing php configuration

   php  -r phpinfo();

##### Check which modules your PHP is using

   php  -m

##### Run the built in PHP-server in current folder

   php  -S 127.0.0.1:8080

##### php show list pdo module

   php  -m|grep pdo

##### Syntax highlight PHP source

   php  -s source.php > source.html

##### Congratulations on new year

   php  -r 'function a(){$i=10;while($i)echo str_repeat(" ",rand(1,79))."*".PHP_EOL;}$i=99;while($i){a();echo str_repeat(" ",34)."Happy New Year 2011".PHP_EOL;a();usleep(200000);}'

##### Testing php configuration

   php  -r "phpinfo\(\);"

##### Find the location of the currently loaded php.ini file

   php  ini

##### PHPUnit: Show the 5 slowest tests with their runtime

   php unit log-json php://stdout | awk '$NF ~ '/,/' && $1 ~ /"(test|time)"/' | cut -d: -f2- | sed "N;s/\n//" | sed "s/,//"| awk 'BEGIN{FS=""}; {print $2 $1}' | sort -r | head -n 5

##### Gather list of PHPCS error messages sorted by frequency

   php cs no-colors standard=WordPress-Core -s  $( find . -name '*.php' ) | ack -o '(?<=\()\w+(\.\w+)+(?=\)$)' | sort | uniq -c | sort -nr

##### Testing php configuration

   php  -e -c /path/to/php.ini -r 'echo "OK\n";';

##### phpinfo from the command line

   php  -i

##### View facebook friend list [hidden or not hidden]

   php  -r "echo ini_get('allow_url_fopen');" php -r "echo function_exists('curl_init');" php -r "echo function_exists('json_decode');"
