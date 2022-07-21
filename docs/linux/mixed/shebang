# shebang

##### create a new script, automatically populating the shebang line, editing the script, and making it executable.

   shebang () { if i=$(which $1); then printf '#!%s\n\n' $i >  $2 && vim + $2 && chmod 755 $2; else echo "'which' could not find $1, is it in your \$PATH?"; fi; }

##### Retrofit a shebang to an existing script

   shebang  () { printf '%s\n' 0a '#!'"$1" . w | ed -s "$2" ; }

##### create a new script, automatically populating the shebang line, editing the script, and making it executable.

   shebang () { if i=$(which $1); then printf '#!%s\n\n' $i >  $2 && vim + $2 && chmod 755 $2; else echo "'which' could not find $1, is it in your \$PATH?"; fi; }

##### Retrofit a shebang to an existing script

   shebang  () { printf '%s\n' 0a '#!'"$1" . w | ed -s "$2" ; }
