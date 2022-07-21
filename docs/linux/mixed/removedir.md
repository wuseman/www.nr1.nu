# removedir

##### Remove current directory

   removedir  () { echo "Deleting the current directory $PWD Are you sure?"; read human; if [[ "$human" = "yes" ]]; then blah=$(echo "$PWD" | sed 's/ /\\ /g'); foo=$(basename "$blah"); rm -Rf ../$foo/ && cd ..; else echo "I'm watching you" | pv -qL 10; fi; }

##### Remove current directory (REVISED)

   removedir (){ read -p "Delete the current directory $PWD ? " human;if [ "$human" = "yes" ]; then [ -z "${PWD##*/}" ] && { echo "$PWD not set" >&2;return 1;}; rm -Rf ../"${PWD##*/}"/ && cd ..; else echo "I'm watching you" | pv -qL 10; fi; }
