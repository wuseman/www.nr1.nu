# security

##### Unlock and access an ssh key keychain entry from CLI

   security  unlock-keychain; security find-generic-password -ga "/Users/mruser/.ssh/id_dsa" 2>&1 > /dev/null
