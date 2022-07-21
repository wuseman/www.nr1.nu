# getent

##### Get contents from hosts, passwd, groups even if they're in DB/LDAP/other

   getent  [group|hosts|networks|passwd|protocols|services] [keyword]

##### force change password for all user

   getent  passwd|cut -d: -f1|xargs -n1 passwd -e

##### Determine next available UID

   getent  passwd | awk -F: '($3>600) && ($3<10000) && ($3>maxuid) { maxuid=$3; } END { print maxuid+1; }'

##### Terminal - Prints out, what the users name, notifyed in the gecos field, is

   getent  passwd $(whoami) | cut -f 5 -d: | cut -f 1 -d,

##### Get just the IP for a hostname

   getent  hosts google.com | awk '{print $1}'

##### Find which service was used by which port number

   getent  services <port_number>

##### Lists all usernames in alphabetical order

   getent  passwd | cut -d: -f1 | sort

##### Query well known ports list

   getent  services <<service>>

##### Get IP from host

   getent  hosts positon.org | cut -d' ' -f1

##### Sometimes you just want a quick way to find out if a certain user account is locked [Linux].

   getent  shadow | while IFS=: read a b c; do grep -q '!' <<< "$b" && echo "$a LOCKED" || echo "$a not locked"; done

##### Sometimes you just want a quick way to find out if a certain user account is locked [Linux].

   getent  shadow | grep '^[^:]\+:!' | cut -d: -f1

##### See the members of a group

   getent  group <group>

##### Perform a reverse DNS lookup

   getent  hosts <host>

##### Prints out, what the users name, notifyed in the gecos field, is

   getent  passwd `whoami` | cut -d ':' -f 5

##### Prints out, what the users name, notifyed in the gecos field, is

   getent  passwd `whoami` | cut -d ':' -f 5

##### get hostname/ip information

   getent  hosts 8.8.8.8

##### Create a QR code image in MECARD format

   getent  passwd $(whoami) | echo "$(perl -ne '/^([^:]+):[^:]+:[^:]+:[^:]+:([^ ]+) ?([^,]+)?,([^,]*),([^,]*),([^:,]*),?([^:,]*)/ and printf "MECARD:N:$3,$2;ADR:$5;TEL:$4;TEL:$6;EMAIL:$1@"')$HOSTNAME;;" | qrencode -o myqr.png

##### Get contents from hosts, passwd, groups even if they're in DB/LDAP/other

   getent  [group|hosts|networks|passwd|protocols|services] [keyword]

##### Determine next available UID

   getent  passwd | awk -F: '($3>600) && ($3<10000) && ($3>maxuid) { maxuid=$3; } END { print maxuid+1; }'

##### Terminal - Prints out, what the users name, notifyed in the gecos field, is

   getent  passwd $(whoami) | cut -f 5 -d: | cut -f 1 -d,

##### Get just the IP for a hostname

   getent  hosts google.com | awk '{print $1}'

##### Find which service was used by which port number

   getent  services <port_number>

##### Lists all usernames in alphabetical order

   getent  passwd | cut -d: -f1 | sort

##### Query well known ports list

   getent  services <<service>>

##### Get IP from host

   getent  hosts positon.org | cut -d' ' -f1

##### Sometimes you just want a quick way to find out if a certain user account is locked [Linux].

   getent  shadow | while IFS=: read a b c; do grep -q '!' <<< "$b" && echo "$a LOCKED" || echo "$a not locked"; done

##### Sometimes you just want a quick way to find out if a certain user account is locked [Linux].

   getent  shadow | grep '^[^:]\+:!' | cut -d: -f1

##### See the members of a group

   getent  group <group>

##### Perform a reverse DNS lookup

   getent  hosts <host>

##### Prints out, what the users name, notifyed in the gecos field, is

   getent  passwd `whoami` | cut -d ':' -f 5
