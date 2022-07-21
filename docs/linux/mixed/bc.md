# bc

##### A handy calculator

   bc 

##### convert .bin / .cue into .iso image

   bc hunk IMAGE.bin IMAGE.cue IMAGE.iso

##### Convert seconds into minutes and seconds

   bc  <<< 'obase=60;299'

##### floating point operations in shell scripts

   bc  -l <<< s(3/5)

##### Floating point power p of x

   bc  -l <<< "x=2; p=0.5; e(l(x)*p)"

##### Uptime in minute

   bc  <<<  `uptime | sed -e 's/^.*up //' -e 's/[^0-9:].*//' | sed 's/:/*60+/g'`

##### command line calculator (zsh version)

   bc  <<<"..."

##### convert .bin / .cue into .iso image

   bc hunk IMAGE.bin IMAGE.cue IMAGE.iso

##### Convert seconds into minutes and seconds

   bc  <<< 'obase=60;299'

##### floating point operations in shell scripts

   bc  -l <<< s(3/5)

##### Floating point power p of x

   bc  -l <<< "x=2; p=0.5; e(l(x)*p)"

##### Uptime in minute

   bc  <<<  `uptime | sed -e 's/^.*up //' -e 's/[^0-9:].*//' | sed 's/:/*60+/g'`

##### command line calculator (zsh version)

   bc  <<<"..."
