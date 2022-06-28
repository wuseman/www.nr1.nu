# echo

###  Outputs list of $PATH dirs sorted by line length '

echo -e ${PATH//:/\\n} | awk '{print length, $0}' | sort -n | cut -f2- -d' '


### Generate a sequence of numbers 

for i in {1..10};do echo $i;done

### Shuffle lines

echo -e "1\n3\n3\n4" | perl -MList::Util -e 'print List::Util::shuffle <>'

### Generate a sequence of numbers

echo {01..10}

### Download a file from a webserver with telnet

(echo 'GET /'; echo; sleep 1; ) | telnet www.google.com 80