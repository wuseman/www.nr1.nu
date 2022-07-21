# gcc

##### Display GCC Predefined Macros

   gcc  -dM -E - < /dev/null

##### The 1 millionth fibonacci number

   gcc  -x c -o /tmp/out - -lgmp <<< '#include <stdlib.h> ... SEE SAMPLE OUTPUT FOR FULL COMMAND

##### Klingon programming; weak code must die

   gcc  -Wall -Werror -o prog prog.c || rm -f prog.c

##### Display GCC Predefined Macros

   gcc  -dM -E - <<<''

##### List of macros defined by gcc

   gcc  -dM -E - </dev/null

##### See a full list of compiler defined symbols

   gcc  -dM -E - < /dev/null

##### Apply only preprocessor for .c file and beautify output

   gcc  -E code.c | sed '/^\#/d' | indent -st -i2 > code-x.c

##### Display GCC Predefined Macros

   gcc  -dM -E - < /dev/null

##### Display GCC Predefined Macros

   gcc  -dM -E - <<<''

##### List of macros defined by gcc

   gcc  -dM -E - </dev/null

##### See a full list of compiler defined symbols

   gcc  -dM -E - < /dev/null

##### Apply only preprocessor for .c file and beautify output

   gcc  -E code.c | sed '/^\#/d' | indent -st -i2 > code-x.c
