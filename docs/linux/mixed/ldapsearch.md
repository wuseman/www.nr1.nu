# ldapsearch

##### Dump 389ds schema

   ldapsearch  -xLLL -b "cn=schema" "(objectclass=*)" \  \* objectclasses attributetypes | perl -p0e 's/\n //g'

##### search for groups in ldap

   ldapsearch  -H ldap://localhost:389 -D cn=username,ou=users,dc=domain -x -W -b ou=groups,dc=domain  '(member=cn=username,ou=users,dc=domain)' | grep ^dn | sed "s/dn\: cn=\([^,]*\),ou=\([^,]*\),.*/\2 \1/"

##### decoding Active Directory date format

   ldapsearch  -v -H ldap://<server> -x -D cn=<johndoe>,cn=<users>,dc=<ourdomain>,dc=<tld> -w<secret> -b ou=<lazystaff>,dc=<ourdomain>,dc=<tld> -s sub sAMAccountName=* '*' | perl -pne 's/(\d{11})\d{7}/"DATE-AD(".scalar(localtime($1-11644473600)).")"/e'

##### Bypass 1000 Entry limit of Active Directory with ldapsearch

   ldapsearch  -LLL  -H ldap://${HOST}:389 -b 'DC=${DOMAIN},DC=${TLD}' -D '${USER}' -w 'password' objectclass=* -E pr=2147483647/noprompt

##### eDirectory LDAP Search for Statistics

   ldapsearch  -h ldapserver.willeke.com -p389 -b "" -s base -D cn=admin,ou=administration,dc=willeke,dc=com -w secretpwd "(objectclass=*)" chainings removeEntryOps referralsReturned listOps modifyRDNOps repUpdatesIn repUpdatesOut strongAuthBinds addEntryOps

##### LDAP list of users and their details

   ldapsearch  -x -LLL uid=*

##### LDAP search to query an ActiveDirectory server

   ldapsearch  -LLL -H ldap://activedirectory.example.com:389 -b 'dc=example,dc=com' -D 'DOMAIN\Joe.Bloggs' -w 'p@ssw0rd' '(sAMAccountName=joe.bloggs)'

##### decoding Active Directory date format

   ldapsearch  -v -H ldap://<server> -x -D cn=<johndoe>,cn=<users>,dc=<ourdomain>,dc=<tld> -w<secret> -b ou=<lazystaff>,dc=<ourdomain>,dc=<tld> -s sub sAMAccountName=* '*' | perl -pne 's/(\d{11})\d{7}/"DATE-AD(".scalar(localtime($1-11644473600)).")"/e'

##### Bypass 1000 Entry limit of Active Directory with ldapsearch

   ldapsearch  -LLL  -H ldap://${HOST}:389 -b 'DC=${DOMAIN},DC=${TLD}' -D '${USER}' -w 'password' objectclass=* -E pr=2147483647/noprompt

##### eDirectory LDAP Search for Statistics

   ldapsearch  -h ldapserver.willeke.com -p389 -b "" -s base -D cn=admin,ou=administration,dc=willeke,dc=com -w secretpwd "(objectclass=*)" chainings removeEntryOps referralsReturned listOps modifyRDNOps repUpdatesIn repUpdatesOut strongAuthBinds addEntryOps

##### LDAP list of users and their details

   ldapsearch  -x -LLL uid=*

##### LDAP search to query an ActiveDirectory server

   ldapsearch  -LLL -H ldap://activedirectory.example.com:389 -b 'dc=example,dc=com' -D 'DOMAIN\Joe.Bloggs' -w 'p@ssw0rd' '(sAMAccountName=joe.bloggs)'
