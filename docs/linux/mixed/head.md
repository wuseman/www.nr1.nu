# head

##### Generate a random password 30 characters long

   head  -c 24 /dev/urandom | base64

##### Print just line 4 from a textfile

   head  -n X | tail -n 1

##### 20char long alpahnumeric "password"

   head  -c20 /dev/urandom | xxd -ps

##### get line#1000 from text.

   head  -1000 < lines.txt | tail -1

##### Creates a random passwort from /dev/urandom [0-9A-za-z]

   head  -c $((<pw-lenght>-2)) /dev/urandom | uuencode -m - | sed -e '1d' -e '3d' | sed -e 's/=.*$//g'

##### Pick a random line from a file

   head  -$(($RANDOM % $(wc -l < file.txt) +1 )) file.txt | tail -1

##### Go to the Nth line of file

   head  -n 13 /etc/services | tail -n 1

##### Print all the lines between 10 and 20 of a file

   head  -n 20 <filename> | tail

##### Look for English words in /dev/urandom

   head  -100000 /dev/urandom | strings > temp.txt && for w in $(cat webster-dictionary.txt); do if [ ${#w} -gt 3 ]; then grep -io $w temp.txt; fi; done

##### Look for English words in /dev/urandom

   head  -100000 /dev/urandom | strings|tr '[A-Z]' '[a-z]'|sort >temp.txt && wget -q http://www.mavi1.org/web_security/wordlists/webster-dictionary.txt -O-|tr '[A-Z]' '[a-z]'|sort >temp2.txt&&comm -12 temp.txt temp2.txt

##### Outputs a 10-digit random number

   head  -c4 /dev/urandom | od -N4 -tu4 | sed -ne '1s/.* //p'

##### Get AWS temporary credentials ready to export based on a MFA virtual appliance

   head  -n1 | xargs -I {} aws sts get-session-token serial-number $MFA_ID duration-seconds 900 token-code {} output text query [Credentials.AccessKeyId,Credentials.SecretAccessKey,Credentials.SessionToken]

##### Generate a quick, lengthy password

   head  /dev/urandom | md5sum | base64

##### Printout a list of field numbers (awk index) from a CSV file with headers as first line.

   head  -1 file.csv | tr ',' '\n' | tr -d " " | awk '{print NR,$0}'

##### Count Number of Columns in TPC-H table-file (or any pipe seperated file

   head  -n1  nation.tbl | sed 's/\(.\)/\1\n/g' | sort | uniq -c | grep \| | awk  '{ print $1 }'

##### generate a randome 10 character password

   head  -c7 /dev/urandom|base64|tr -d '='

##### Outputs a 10-digit random number

   head  -c10 <(echo $RANDOM$RANDOM$RANDOM)

##### Print nicely in columns a chunk of text that is separated by tab

   head  filename.txt | column -t -s $'\t'

##### Extract specific lines from a text file using Stream Editor (sed)

   head  -n1 sample.txt | tail -n1

##### Look for English words in /dev/urandom

   head  -100000 /dev/urandom | strings > temp.txt && for w in $(cat webster-dictionary.txt); do if [ ${#w} -gt 3 ]; then grep -io $w temp.txt; fi; done

##### Look for English words in /dev/urandom

   head  -100000 /dev/urandom | strings|tr '[A-Z]' '[a-z]'|sort >temp.txt && wget -q http://www.mavi1.org/web_security/wordlists/webster-dictionary.txt -O-|tr '[A-Z]' '[a-z]'|sort >temp2.txt&&comm -12 temp.txt temp2.txt

##### Outputs a 10-digit random number

   head  -c4 /dev/urandom | od -N4 -tu4 | sed -ne '1s/.* //p'

##### Get AWS temporary credentials ready to export based on a MFA virtual appliance

   head  -n1 | xargs -I {} aws sts get-session-token serial-number $MFA_ID duration-seconds 900 token-code {} output text query [Credentials.AccessKeyId,Credentials.SecretAccessKey,Credentials.SessionToken]

##### Generate a quick, lengthy password

   head  /dev/urandom | md5sum | base64

##### Printout a list of field numbers (awk index) from a CSV file with headers as first line.

   head  -1 file.csv | tr ',' '\n' | tr -d " " | awk '{print NR,$0}'

##### Count Number of Columns in TPC-H table-file (or any pipe seperated file

   head  -n1  nation.tbl | sed 's/\(.\)/\1\n/g' | sort | uniq -c | grep \| | awk  '{ print $1 }'

##### generate a randome 10 character password

   head  -c7 /dev/urandom|base64|tr -d '='

##### Outputs a 10-digit random number

   head  -c10 <(echo $RANDOM$RANDOM$RANDOM)
