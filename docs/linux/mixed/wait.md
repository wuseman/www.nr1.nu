# wait

##### Wait for an already launched program to stop before starting a new command.

   wait 

##### Wait for an already launched program to stop before starting a new command.

   wait  $!

##### Send an email from the terminal when job finishes

   wait _for_this.sh; echo "wait_for_this.sh finished running" | mail -s "Job Status Update" username@gmail.com

##### Send an email from the terminal when job finishes

   wait _for_this.sh; echo "wait_for_this.sh finished running with status $?" | mail -s "Job Status Update" username@gmail.com

##### Wait for processes, even if not childs of current shell

   wait  536; anywait 536; anywaitd 537; anywaitp 5562 5563 5564

##### Wait for an already launched program to stop before starting a new command.

   wait  $!

##### Send an email from the terminal when job finishes

   wait _for_this.sh; echo "wait_for_this.sh finished running" | mail -s "Job Status Update" username@gmail.com

##### Send an email from the terminal when job finishes

   wait _for_this.sh; echo "wait_for_this.sh finished running with status $?" | mail -s "Job Status Update" username@gmail.com
