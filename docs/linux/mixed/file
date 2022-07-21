# file

##### total text files in current dir

   file  -i * | grep 'text/plain' | wc -l

##### Get a file's type and metadata

   file  <filename>

##### Provide a list of all ELF binary objects (executable or libs) in a directory

   file  /usr/bin/* | grep ELF | cut -d":" -f1

##### Alternative for basename using grep to extract file name

   file Name()  { echo "$1" | grep -o "[^/]*$"; }

##### Command to find filesystem type

   file  -sL /dev/sda7

##### Reorder file with max 100 file per folder

   file s -type f | xargs -n100 | while read l; do mkdir $((++f)); cp $l $f; done

##### How far is Mac OS X 10.6 from 64-bit?

   file  /System/Library/Extensions/*.kext/Contents/MacOS/* |grep -i x86_64 |nl |tail -1 |cut -f1 -f3 && file /System/Library/Extensions/*.kext/Contents/MacOS/* |grep -v x86_64 |nl |tail -1 |cut -f1 -f3

##### split a postscript file

   file =orig.ps; for i in $(seq `grep "Pages:" $file | sed 's/%%Pages: //g'`); do psselect $i $file $i\_$file; done

##### How far is Mac OS X 10.6 from 64-bit?

   file  /System/Library/Extensions/*.kext/Contents/MacOS/* |grep -i x86_64 |nl | tail -1 | cut -f1 -f3; file /System/Library/Extensions/*.kext/Contents/MacOS/* |grep -i "mach-o object i386" |nl | tail -1 | cut -f1 -f3

##### Resample MP3's to 44.1kHz

   file  /music/dir/* | grep -v 44.1 | sed 's/:.*//g' | grep .mp3 | { while IFS= read; do filebak="\"$REPLY.original\""; file="\"$REPLY\""; mv $file $filebak; sox -t mp3 $filebak $file rate 44k; done; };

##### determine if a shared library is compiled as 32bit or 64bit

   file  -L <library> | grep -q '64-bit' && echo 'library is 64 bit' || echo 'library is 32 bit'

##### Use vim automation to create a colorized html file

   file =<filename>;vim ${file} -e -s -c 'runtime! syntax/syntax.vim' -c 'runtime! syntax/2html.vim' -c "w ${file}.html" -c 'q!' -c 'q!' > /dev/null

##### Use file(1) to view device information

   file  -s /dev/sd*

##### Extract extention of a file

   file xt () { echo ${1##*.}; }

##### Sort on multiple dis-contiguous keys/fields (can even specify key number/field from the end)

   file  /bin/* | msort -j -l -n-1 -n2 2> /dev/null

##### zsh only: access a file when you don't know the path, if it is in PATH

   file  =top

##### total text files in current dir

   file  -i * | grep -c 'text/plain'

##### improve copy file over ssh showing progress

   file ='path to file'; tar -cf - "$file" | pv -s $(du -sb "$file" | awk '{print $1}') | gzip -c | ssh -c blowfish user@host tar -zxf - -C /opt/games

##### Detect encoding of a text file

   file  -i <textfile>

##### Download a file securely via a remote SSH server

   file =ftp://ftp.gimp.org/pub/gimp/v2.6/gimp-2.6.10.tar.bz2; ssh server "wget $file -O -" > $PWD/${file##*/}

##### Listing package man page, services, config files and related rpm of a file, in one alias

   file info() { RPMQF=$(rpm -qf $1); RPMQL=$(rpm -ql $RPMQF);echo "man page:";whatis $(basename $1); echo "Services:"; echo -e "$RPMQL\n"|grep -P "\.service";echo "Config files:";rpm -qc $RPMQF;echo "Provided by:" $RPMQF; }

##### Use last argument of last command

   file  !$

##### Alternative for basename using grep to extract file name

   file Name(){ echo ${1##*/}; }

##### Random cow tells your fortune

   file s=(/usr/share/cowsay/cows/*);cowsay -f `printf "%s\n" "${files[RANDOM % ${#files}]}"` "`fortune`"

##### find multiple files in directory and perform search and replace on each of them

   file s=$(find /dir/file -name *.txt -exec grep -l a {} \;) && perl -p -i -e 's/old/new/g;' $files

##### Find .jpg file that is actually thumbs.db

   file  -i `find . -name '*.jpg' -print` | grep "application/msword"

##### Use vim automation to create a colorized html file

   file =<filename>;vim ${file} -e -s -c 'runtime! syntax/syntax.vim' -c 'runtime! syntax/2html.vim' -c "w ${file}.html" -c 'q!' -c 'q!' > /dev/null

##### Use file(1) to view device information

   file  -s /dev/sd*

##### Extract extention of a file

   file xt () { echo ${1##*.}; }

##### Sort on multiple dis-contiguous keys/fields (can even specify key number/field from the end)

   file  /bin/* | msort -j -l -n-1 -n2 2> /dev/null

##### zsh only: access a file when you don't know the path, if it is in PATH

   file  =top

##### total text files in current dir

   file  -i * | grep -c 'text/plain'

##### improve copy file over ssh showing progress

   file ='path to file'; tar -cf - "$file" | pv -s $(du -sb "$file" | awk '{print $1}') | gzip -c | ssh -c blowfish user@host tar -zxf - -C /opt/games

##### Detect encoding of a text file

   file  -i <textfile>

##### Download a file securely via a remote SSH server

   file =ftp://ftp.gimp.org/pub/gimp/v2.6/gimp-2.6.10.tar.bz2; ssh server "wget $file -O -" > $PWD/${file##*/}

##### Listing package man page, services, config files and related rpm of a file, in one alias

   file info() { RPMQF=$(rpm -qf $1); RPMQL=$(rpm -ql $RPMQF);echo "man page:";whatis $(basename $1); echo "Services:"; echo -e "$RPMQL\n"|grep -P "\.service";echo "Config files:";rpm -qc $RPMQF;echo "Provided by:" $RPMQF; }

##### Use last argument of last command

   file  !$

##### Alternative for basename using grep to extract file name

   file Name(){ echo ${1##*/}; }

##### Random cow tells your fortune

   file s=(/usr/share/cowsay/cows/*);cowsay -f `printf "%s\n" "${files[RANDOM % ${#files}]}"` "`fortune`"

##### find multiple files in directory and perform search and replace on each of them

   file s=$(find /dir/file -name *.txt -exec grep -l a {} \;) && perl -p -i -e 's/old/new/g;' $files
