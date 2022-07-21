# quickscript

##### Create a bash script from last commands

   quickscript  () { filename="$1"; history | cut -c 8- | sed -e '/^###/{h;d};H;$!d;x' | sed '$d' > ${filename:?No filename given} }

##### Create a bash script from last commands

   quickscript  () { filename="$1"; history | cut -c 8- | sed -e '/^###/{h;d};H;$!d;x' | sed '$d' > ${filename:?No filename given} }
