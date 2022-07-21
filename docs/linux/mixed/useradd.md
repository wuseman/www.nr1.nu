# useradd

##### Add a user to a group

   useradd  -G {group-name} username

##### Create new user with home dir and given password

   useradd  -m -p $(perl -e'print crypt("passwordscelta", "stigghiola")') user

##### Change the primary group of a user

   useradd  -g linux anish && id

##### Creating new user with encrypted password

   useradd  -m -s /bin/bash -p $(mkpasswd hash=SHA-512 password) username

##### Create new user with home directory and given password

   useradd  -m -p $(perl -e'print crypt("pass", "mb")') user

##### Creat a new user with no shell. Useful to provide other services without giving shell access.

   useradd  -s /sbin/nologin nicdev

##### Create new user with home dir and given password

   useradd  -m -p $(perl -e'print crypt("passwordscelta", "stigghiola")') user

##### Change the primary group of a user

   useradd  -g linux anish && id

##### Creating new user with encrypted password

   useradd  -m -s /bin/bash -p $(mkpasswd hash=SHA-512 password) username

##### Create new user with home directory and given password

   useradd  -m -p $(perl -e'print crypt("pass", "mb")') user
