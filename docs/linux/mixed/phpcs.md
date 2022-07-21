# phpcs

##### Gather list of PHPCS error messages sorted by frequency

   phpcs  no-colors standard=WordPress-Core -s  $( find . -name '*.php' ) | ack -o '(?<=\()\w+(\.\w+)+(?=\)$)' | sort | uniq -c | sort -nr

##### Gather list of PHPCS error messages sorted by frequency

   phpcs  no-colors standard=WordPress-Core -s  $( find . -name '*.php' ) | ack -o '(?<=\()\w+(\.\w+)+(?=\)$)' | sort | uniq -c | sort -nr
