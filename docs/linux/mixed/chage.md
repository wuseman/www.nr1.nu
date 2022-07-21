# chage

##### Disable password   expiration and clear password history for VMware vcenter appliance

   chage  -M -1 root; echo "" > /etc/security/opasswd

##### Show account security settings

   chage  -l <user>

##### How to expire the password to force her change [Linux]

   chage  -d 0 -m 0 -M 60 [user]

##### Show account security settings

   chage  -l <user>
