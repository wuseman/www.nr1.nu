# xclip

##### Copy your public key to clipboard

   xclip  -sel clip < ~/.ssh/id_rsa.pub

##### copy file to clipboard

   xclip  file.txt

##### get xclip to own the clipboard contents

   xclip  -o -selection clipboard | xclip -selection clipboard

##### Convert clipboard HTML content to markdown (for github, trello, etc)

   xclip  -selection clipboard -o -t text/html | pandoc -f html -t markdown_github -

##### Spell check the text in clipboard (paste the corrected clipboard if you like)

   xclip  -o > /tmp/spell.tmp; aspell check /tmp/spell.tmp ; cat /tmp/spell.tmp | xclip

##### Show URL/text in clipboard as QR code

   xclip  -o -sel clipboard | qrencode -o - | xview stdin

##### Sort lines on clipboard

   xclip  -o -selection clipboard | sort | xclip -i -selection clipboard

##### Copy command output to clipboard (or selection)

   xclip  -i <(pwd)

##### copy file to clipboard

   xclip  file.txt

##### get xclip to own the clipboard contents

   xclip  -o -selection clipboard | xclip -selection clipboard

##### Convert clipboard HTML content to markdown (for github, trello, etc)

   xclip  -selection clipboard -o -t text/html | pandoc -f html -t markdown_github -

##### Spell check the text in clipboard (paste the corrected clipboard if you like)

   xclip  -o > /tmp/spell.tmp; aspell check /tmp/spell.tmp ; cat /tmp/spell.tmp | xclip

##### Show URL/text in clipboard as QR code

   xclip  -o -sel clipboard | qrencode -o - | xview stdin

##### Sort lines on clipboard

   xclip  -o -selection clipboard | sort | xclip -i -selection clipboard

##### Copy command output to clipboard (or selection)

   xclip  -i <(pwd)
