# brd

##### Show git branches by date - useful for showing active branches

   brd  = "! f() { for k in $(git branch $@ | sed 's/^..//; s/ .*//'); do  echo "$(git log -1 pretty='%Cgreen%ci %Cblue(%cr)%Creset ' $k) $k" ;  done | sort -r; }; f"

##### Show git branches by date - useful for showing active branches

   brd  = "! f() { for k in $(git branch $@ | sed 's/^..//; s/ .*//'); do  echo "$(git log -1 pretty='%Cgreen%ci %Cblue(%cr)%Creset ' $k) $k" ;  done | sort -r; }; f"
