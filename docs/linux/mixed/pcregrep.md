# pcregrep

##### multiline re search recursive

   pcregrep  color -M -N CRLF -e "SQLEngine\.\w+\W*\([^\)]*\)" -r include='\.java$'

##### Source multiline grep with pcregrep

   pcregrep  color -M -N CRLF "owa_pattern\.\w+\W*\([^\)]*\)" source.sql

##### Recursive source regexp search with pcregrep

   pcregrep  -r exclude_dir='.svn' include='.*jsp$'  -A 2 -B 2 color   "pHtmlHome" .

##### Source multiline grep with pcregrep

   pcregrep  color -M -N CRLF "owa_pattern\.\w+\W*\([^\)]*\)" source.sql

##### Recursive source regexp search with pcregrep

   pcregrep  -r exclude_dir='.svn' include='.*jsp$'  -A 2 -B 2 color   "pHtmlHome" .
