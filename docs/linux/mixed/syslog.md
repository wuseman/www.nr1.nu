# syslog

##### Show some details of recent Leopard Time Machine activity - shell: bash, Mac OSX 10.5

   syslog  -F '$Time $Message' -k Sender /System/Library/CoreServices/backupd -k Time ge -72h | tail -n 30
