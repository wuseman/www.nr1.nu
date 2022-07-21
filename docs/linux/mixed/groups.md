# groups

##### Find common groups between two users

   groups  user1 user2|cut -d: -f2|xargs -n1|sort|uniq -d

##### List all users and groups

   groups  $(cut -f1 -d":" /etc/passwd) | sort

##### Find common groups between two users

   groups  user1 user2|cut -d: -f2|xargs -n1|sort|uniq -d

##### List all users and groups

   groups  $(cut -f1 -d":" /etc/passwd) | sort
