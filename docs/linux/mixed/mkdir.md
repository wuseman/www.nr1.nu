# mkdir

##### Making a directory using bash or cmd

   mkdir  <dir name>

##### Extract 2 copies of .tar.gz content

   mkdir  copy{1,2}; gzip -dc file.tar.gz | tee >( tar x -C copy1/ ) | tar x -C copy2/

##### Batch Convert MP3 Bitrate

   mkdir  save && for f in *.mp3; do lame -b xxx "$f" ./save/"${f%.mp3}.mp3"; done

##### Batch remove protection from all pdf files in a directory

   mkdir  -p temp && for f in *.pdf ; do qpdf password=YOURPASSWORDHERE decrypt "$f" "temp/$f"; done && mv temp/* . && rm -rf temp

##### rsync from one remote to another remote, only local computer has an open ssh key

   mkdir  r1 && sshfs remote1:/home/user r1 && rsync r1/stuff remote2:~/backups/

##### Move all epub keyword containing files to Epub folder

   mkdir  Epub ; mv -v target-directory=Epub $(fgrep -lr epub *)

##### make multiple directories

   mkdir  {1..100}

##### Mount a CD-ROM on Solaris (SPARC)

   mkdir  -p /cdrom/unnamed_cdrom ; mount -F hsfs -o ro `ls -al /dev/sr* |awk '{print "/dev/" $11}'` /cdrom/unnamed_cdrom

##### Overcome Bash's expansion order

   mkdir  ${1..10}

##### journaling directories

   mkdir  `date | sed 's/[: ]/_/g'`

##### make directory tree

   mkdir  -p work/{d1,d2}/{src,bin,bak}

##### make 100 directories with leading zero, 001...100, using bash3.X

   mkdir  0{0..9}{0..9};mv 000 100

##### replace text in all files in folder, into subfolder

   mkdir  replaced;for i in *; do cat "$i"| sed 's/foo/bar/' > "replaced/$i"; done

##### Go to the created directory after using mkdir

   mkdir () { /bin/mkdir $@ && eval cd "\$$#"; }

##### Losslessly rotate videos from your phone by 90 degrees.

   mkdir  rotated; for v in *.3gp; do ffmpeg -i $v -vf transpose=2 -vcodec ffv1 rotated/${v/3gp/avi} ; done

##### Use the arguments used in the last command

   mkdir  !*

##### Make a directory named with the current date

   mkdir  `date iso`

##### make 100 directories with leading zero, 001...100, using bash3.X

   mkdir  $(printf '%03d\n' {1..100})

##### make directory with current date

   mkdir  $(date +%Y_%m_%d)

##### make directory with current date

   mkdir  $(date +%F)

##### Phrack 66 is out, but the .tar.gz is not there yet on phrack.org's website

   mkdir  phrack66; (cd phrack66; for n in {1..17} ; do echo "http://www.phrack.org/issues.html?issue=66&id=$n&mode=txt" ; done | xargs wget)

##### Collect a lot of icons from /usr/share/icons (may overwrite some, and complain a bit)

   mkdir  myicons && find /usr/share/icons/ -type f | xargs cp -t myicons

##### Collect a lot of icons from /usr/share/icons (may overwrite some, and complain a bit)

   mkdir  myicons; find /usr/share/icons/ -type f -exec cp {} ./myicons/ \;

##### create dir tree

   mkdir  -p doc/{text/,img/{wallpaper/,photos/}}

##### Create the directoty recursively

   mkdir   /home/dhinesh/dir1/{dir2,dir3,dir4}/file1.txt -p

##### mkdir & cd into it as single command

   mkdir  /home/foo/doc/bar && cd $_

##### mkdir & cd into it as single command

   mkdir  /home/foo/doc/bar && cd $_

##### Creates a SSHFS volume on MacOS X (better used as an alias). Needs FuseFS and SSHFS (obvioulsly).

   mkdir  /Volumes/sshdisk 2> /dev/null; sshfs user@server:/ /Volumes/sshdisk -oreconnect,volname=SSHDisk

##### Create a directory and go inside it

   mkdir  dir; cd $_

##### Make directory including intermediate directories

   mkdir  -p a/long/directory/path

##### Make directory including intermediate directories

   mkdir  -p a/long/directory/path

##### Create directory named after current date

   mkdir  $(date +%Y%m%d)

##### make directory

   mkdir  /tmp/dir1/{0..20}

##### extract and initrd image

   mkdir  tmp ; cd tmp ; zcat ../initrd.gz | cpio -i

##### Make directory and change into immediately (No functions!)

   mkdir  -p /path/to/folder.d; \cd $_

##### Make a new dir named with present week numer

   mkdir  -v `date +%W`W

##### make directory tree

   mkdir  -p work/{d1,d2}/{src,bin,bak}

##### Losslessly rotate videos from your phone by 90 degrees.

   mkdir  rotated; for v in *.3gp; do ffmpeg -i $v -vf transpose=2 -vcodec ffv1 rotated/${v/3gp/avi} ; done

##### Use the arguments used in the last command

   mkdir  !*

##### Make a directory named with the current date

   mkdir  `date iso`

##### make 100 directories with leading zero, 001...100, using bash3.X

   mkdir  $(printf '%03d\n' {1..100})

##### make directory with current date

   mkdir  $(date +%Y_%m_%d)

##### make directory with current date

   mkdir  $(date +%F)

##### Phrack 66 is out, but the .tar.gz is not there yet on phrack.org's website

   mkdir  phrack66; (cd phrack66; for n in {1..17} ; do echo "http://www.phrack.org/issues.html?issue=66&id=$n&mode=txt" ; done | xargs wget)

##### Collect a lot of icons from /usr/share/icons (may overwrite some, and complain a bit)

   mkdir  myicons && find /usr/share/icons/ -type f | xargs cp -t myicons

##### Collect a lot of icons from /usr/share/icons (may overwrite some, and complain a bit)

   mkdir  myicons; find /usr/share/icons/ -type f -exec cp {} ./myicons/ \;

##### create dir tree

   mkdir  -p doc/{text/,img/{wallpaper/,photos/}}

##### Create the directoty recursively

   mkdir   /home/dhinesh/dir1/{dir2,dir3,dir4}/file1.txt -p

##### mkdir & cd into it as single command

   mkdir  /home/foo/doc/bar && cd $_

##### Creates a SSHFS volume on MacOS X (better used as an alias). Needs FuseFS and SSHFS (obvioulsly).

   mkdir  /Volumes/sshdisk 2> /dev/null; sshfs user@server:/ /Volumes/sshdisk -oreconnect,volname=SSHDisk

##### Create a directory and go inside it

   mkdir  dir; cd $_

##### Make directory including intermediate directories

   mkdir  -p a/long/directory/path

##### Create directory named after current date

   mkdir  $(date +%Y%m%d)

##### make directory

   mkdir  /tmp/dir1/{0..20}

##### extract and initrd image

   mkdir  tmp ; cd tmp ; zcat ../initrd.gz | cpio -i

##### Make directory and change into immediately (No functions!)

   mkdir  -p /path/to/folder.d; \cd $_
