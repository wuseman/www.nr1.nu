# cowsay

##### Show all cowsay's available cowfiles

   cowsay  -l | sed  '1d;s/ /\n/g' | while read f; do cowsay -f $f $f;done

##### Even better Cowsay/Fortune

   cowsay  `fortune` | toilet gay -f term

##### Get colorful fortunes

   cowsay  `fortune` | toilet metal -f term

##### pimp text output e.g. "Linux rocks!" to look nice

   cowsay  Linux rocks!

##### let a cow tell you your fortune

   cowsay  $(fortune)

##### pimp text output e.g. "Linux rocks!" to look nice

   cowsay  Linux rocks!

##### let a cow tell you your fortune

   cowsay  $(fortune)
