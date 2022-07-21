# copy

##### Join multipart archive in binary mode under Windows with command line

   copy  /b part.1 + part.2 + part.n file.extension

##### Copy with progress

   copy (){ cp -v "$1" "$2"&watch -n 1 'du -h "$1" "$2";printf "%s%%\n" $(echo `du -h "$2"|cut -dG -f1`/0.`du -h "$1"|cut -dG -f1`|bc)';}
