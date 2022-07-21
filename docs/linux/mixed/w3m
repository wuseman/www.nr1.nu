# w3m

##### retrieve GMT time from websites ( generally accruate )

   w3m  -dump_head www.fiat.com | awk '/Date+/{print $6, $7}'

##### What is my ip?

   w3m  miip.cl | grep ip

##### What is my ip?

   w3m  http://amit-agarwal.co.in/mystuff/getip_txt.php will return the ip in text format.

##### test

   w3m 

##### Get NFL/MLB Scores/Time

   w3m  -no-cookie http://m.espn.go.com/nfl/scoreboard?|sed 's/ Final/ : Final/g'|sed 's/ F\// : F\//g'|sed 's/, / : /g'|grep -i ':'

##### Get a funny one-liner from www.onelinerz.net

   w3m  -dump_source http://www.onelinerz.net/random-one-liners/1/ | awk ' /.*<div id=\"oneliner_[0-9].*/ {while (! /\/div/ ) { gsub("\n", ""); getline; }; gsub (/<[^>][^>]*>/, "", $0); print $0}'

##### get a random command-line-fu tip

   w3m  -dump http://www.commandlinefu.com/commands/random/plaintext

##### Get your external ip right into your xclipboard

   w3m  mon-ip.com -dump|grep -Eo "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}"|uniq|xclip -selection clipboard

##### Get NFL/MLB Scores/Time

   w3m  -no-cookie http://m.espn.go.com/nfl/scoreboard?|sed 's/ Final/ : Final/g'|sed 's/ F\// : F\//g'|sed 's/, / : /g'|grep -i ':'

##### Get a funny one-liner from www.onelinerz.net

   w3m  -dump_source http://www.onelinerz.net/random-one-liners/1/ | awk ' /.*<div id=\"oneliner_[0-9].*/ {while (! /\/div/ ) { gsub("\n", ""); getline; }; gsub (/<[^>][^>]*>/, "", $0); print $0}'

##### get a random command-line-fu tip

   w3m  -dump http://www.commandlinefu.com/commands/random/plaintext
