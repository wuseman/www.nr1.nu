# mailq

##### Delete Mailer-Daemon messages

   mailq  |awk '/MAILER-DAEMON/{gsub("*","");printf("postsuper -d %s\n",$1)}'|bash

##### delete all DrWeb status, failure and other messages on a postfix server

   mailq  | grep DrWEB | awk {'print $1'} | sed s/*//g | postsuper -d -

##### delete all DrWeb status, failure and other messages on a postfix server

   mailq  | grep DrWEB | awk {'print $1'} | sed s/*//g | postsuper -d -
