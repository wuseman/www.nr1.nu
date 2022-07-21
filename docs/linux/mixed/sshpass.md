# sshpass

##### Login To SSH Server / Provide SSH Password Using A Shell Script

   sshpass  -p 't@uyM59bQ' ssh username@server.example.com

##### SSH Auto-login with password

   sshpass  -p "YOUR_PASSWORD" ssh -o StrictHostKeyChecking=no YOUR_USERNAME@SOME_SITE.COM

##### Remote execute command as sudoer via ssh

   sshpass  -p 'sshpssword' ssh -t <sshuser>@<remotehost> "echo <sudopassword> | sudo -S <command>"

##### How to use rysnc over ssh tunnel

   sshpass  -p [password] rsync -av -e ssh [utente]@[indirizzoip]:/directorydacopiare/ /directorydidestinazione

##### SSH Auto-login with password

   sshpass  -p "YOUR_PASSWORD" ssh -o StrictHostKeyChecking=no YOUR_USERNAME@SOME_SITE.COM

##### Remote execute command as sudoer via ssh

   sshpass  -p 'sshpssword' ssh -t <sshuser>@<remotehost> "echo <sudopassword> | sudo -S <command>"

##### How to use rysnc over ssh tunnel

   sshpass  -p [password] rsync -av -e ssh [utente]@[indirizzoip]:/directorydacopiare/ /directorydidestinazione
