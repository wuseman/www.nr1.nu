# trap

##### Changing the terminal title to the last shell command

   trap  'echo -e "\e]0;$BASH_COMMAND\007"' DEBUG

##### Ignore the specified signal

   trap  '' 1 2 20 24(signal number)

##### Execute a command on logout

   trap  cmd 0

##### Source zshrc/bashrc in all open terminals

   trap  "source ~/.zshrc" USR1

##### Simple example of the trap command

   trap  "echo \"$0 process $$ killed on $(date).\"; exit " HUP INT QUIT ABRT TERM STOP

##### A signal trap that logs when your script was killed and what other processes were running at that time

   trap  "echo \"$0 process $$ killed on $(date).\" | tee ${0##*/}_$$_termination.log; echo 'Active processes at the time were logged to ${0##*/}_$$_termination.log'; ps u >> ${0##*/}_$$_termination.log; exit " HUP INT QUIT ABRT TERM STOP

##### Changing the terminal title to the last shell command

   trap  'echo -e "\e]0;$BASH_COMMAND\007"' DEBUG

##### Execute a command on logout

   trap  cmd 0

##### Source zshrc/bashrc in all open terminals

   trap  "source ~/.zshrc" USR1

##### Simple example of the trap command

   trap  "echo \"$0 process $$ killed on $(date).\"; exit " HUP INT QUIT ABRT TERM STOP

##### A signal trap that logs when your script was killed and what other processes were running at that time

   trap  "echo \"$0 process $$ killed on $(date).\" | tee ${0##*/}_$$_termination.log; echo 'Active processes at the time were logged to ${0##*/}_$$_termination.log'; ps u >> ${0##*/}_$$_termination.log; exit " HUP INT QUIT ABRT TERM STOP
