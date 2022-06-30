# echo

###  Outputs list of $PATH dirs sorted by line length '
```sh
echo -e ${PATH//:/\\n} | awk '{print length, $0}' | sort -n | cut -f2- -d' '
```

### Generate a sequence of numbers 
```sh
for i in {1..10};do echo $i;done
```
### Shuffle lines
```sh
echo -e "1\n3\n3\n4" | perl -MList::Util -e 'print List::Util::shuffle <>'
```
### Generate a sequence of numbers
```sh
echo {01..10}
```
### Download a file from a webserver with telnet
```sh
(echo 'GET /'; echo; sleep 1; ) | telnet www.google.com 80
```