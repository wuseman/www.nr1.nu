# multitail

##### Watch several log files in a single window

   multitail  /var/log/messages /var/log/apache2/access.log /var/log/mail.info

##### Watch several log files of different machines in a single multitail window on your own machine

   multitail  -l 'ssh machine1 "tail -f /var/log/apache2/error.log"' -l 'ssh machine2 "tail -f /var/log/apache2/error.log"'

##### Watch several log files in a single window

   multitail  /var/log/messages /var/log/apache2/access.log /var/log/mail.info

##### Watch several log files of different machines in a single multitail window on your own machine

   multitail  -l 'ssh machine1 "tail -f /var/log/apache2/error.log"' -l 'ssh machine2 "tail -f /var/log/apache2/error.log"'
