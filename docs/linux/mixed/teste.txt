# teste.txt

##### List system's users

   teste.txt  < cut -d : -f 1,5 /etc/passwd | tr : \\t | tr a-z A-Z | cat teste.txt
