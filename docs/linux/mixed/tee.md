# tee

##### tee to a file descriptor

   tee  >(cat - >&2)

##### Get MD5 checksum from a pipe stream and do not alter it

   tee  >(openssl md5 > sum.md5) <somefile | bzip2 > somefile.bz2

##### Copy one file to multiple files

   tee  < file.org file.copy1 file.copy2 [file.copyn] > /dev/null

##### tee to a file descriptor

   tee  >(cat - >&2)

##### Get MD5 checksum from a pipe stream and do not alter it

   tee  >(openssl md5 > sum.md5) <somefile | bzip2 > somefile.bz2

##### Copy one file to multiple files

   tee  < file.org file.copy1 file.copy2 [file.copyn] > /dev/null
