# gdb

##### Print stack trace of a core file without needing to enter gdb interactively

   gdb  batch quiet -ex "thread apply all bt full" -ex "quit" ${exe} ${corefile}

##### Run a program transparently, but print a stack trace if it fails

   gdb  -batch -ex "run" -ex "bt" ${my_program} 2>&1 | grep -v ^"No stack."$

##### Search gdb help pages

   gdb  command: apropos <keyword>

##### Print stack trace of a core file without needing to enter gdb interactively

   gdb  batch quiet -ex "thread apply all bt full" -ex "quit" ${exe} ${corefile}

##### Run a program transparently, but print a stack trace if it fails

   gdb  -batch -ex "run" -ex "bt" ${my_program} 2>&1 | grep -v ^"No stack."$

##### Search gdb help pages

   gdb  command: apropos <keyword>
