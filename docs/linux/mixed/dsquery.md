# dsquery

##### List members of a group

   dsquery  group -samid "Group_SAM_Account_Name" | dsget group -members -expand

##### Find number of computers in domain, OU, etc .

   dsquery  computer DC=example,DC=com -limit 150 | find /c /v ""

##### List of computers not logged into in more than four weeks

   dsquery  computer -name COMPUTERNAME -inactive 4

##### Add members of one group to another

   dsquery  group -samid "group_name" | dsmod group "cn=group_name",dc=example,dc=com" -addmbr

##### Find number of computers in domain, OU, etc .

   dsquery  computer DC=example,DC=com -limit 150 | find /c /v ""

##### List of computers not logged into in more than four weeks

   dsquery  computer -name COMPUTERNAME -inactive 4
