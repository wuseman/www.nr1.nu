# shopt

##### activate bash feature if avail

   shopt -set()  ... func to long, please refer to description

##### Enable automatic typo correction for directory names

   shopt  -s cdspell

##### Avoiding history file to be overwritten

   shopt  -s histappend

##### Enable cd by variable names

   shopt  -s cdable_vars

##### Stop long commands wrapping around and over-writing itself in the Bash shell

   shopt  -s checkwinsize

##### Bash autocomplete case insensitive search

   shopt  -s nocaseglob

##### Give {Open,True}Type files reasonable names

   shopt  -s extglob; for f in *.ttf *.TTF; do g=$(showttf "$f" 2>/dev/null | grep -A1 "language=0.*FullName" | tail -1 | rev | cut -f1 | rev); g=${g##+( )}; mv -i "$f" "$g".ttf; done

##### move you up one directory quickly

   shopt  -s autocd

##### Automaticly cd into directory

   shopt  -s autocd

##### Verify/edit bash history command before executing it

   shopt  -s histverify

##### Delete a file/directory walking subdirectories (bash4 or zsh)

   shopt  -s globstar ; rm -f **/cscope.out

##### bash glob dot-files

   shopt  -s dotglob

##### Enable ** to expand files recursively (>=bash-4.0)

   shopt  -s globstar

##### Remove all .svn folders

   shopt  -s globstar; rm -rfv **/.svn

##### Correct spellings in directory names

   shopt  -s cdspell

##### Convert a directory of pdfs into scaled down pngs

   shopt  -s nullglob; for i in $(find "Your/file/system" -name "*.pdf"); do e="$(dirname $i)/$(basename $i '.pdf').png"; gs -sDEVICE=png16m -q -dPDFFitPage -g492x380 -dTextAlphaBits=4 -dGraphicsAlphaBits=4 -dNOSUBSTDEVICECOLORS -o $e $i; done

##### Save your terminal commands in bash history in real time

   shopt  -s histappend ; PROMPT_COMMAND="history -a;$PROMPT_COMMAND"

##### Enable automatic typo correction for directory names

   shopt  -s cdspell

##### Avoiding history file to be overwritten

   shopt  -s histappend

##### Enable cd by variable names

   shopt  -s cdable_vars

##### Stop long commands wrapping around and over-writing itself in the Bash shell

   shopt  -s checkwinsize

##### Bash autocomplete case insensitive search

   shopt  -s nocaseglob

##### Give {Open,True}Type files reasonable names

   shopt  -s extglob; for f in *.ttf *.TTF; do g=$(showttf "$f" 2>/dev/null | grep -A1 "language=0.*FullName" | tail -1 | rev | cut -f1 | rev); g=${g##+( )}; mv -i "$f" "$g".ttf; done

##### move you up one directory quickly

   shopt  -s autocd

##### Automaticly cd into directory

   shopt  -s autocd

##### Verify/edit bash history command before executing it

   shopt  -s histverify

##### Delete a file/directory walking subdirectories (bash4 or zsh)

   shopt  -s globstar ; rm -f **/cscope.out

##### bash glob dot-files

   shopt  -s dotglob

##### Enable ** to expand files recursively (>=bash-4.0)

   shopt  -s globstar

##### Remove all .svn folders

   shopt  -s globstar; rm -rfv **/.svn

##### Correct spellings in directory names

   shopt  -s cdspell

##### Save your terminal commands in bash history in real time

   shopt  -s histappend ; PROMPT_COMMAND="history -a;$PROMPT_COMMAND"
