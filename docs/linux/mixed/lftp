# lftp

##### Use lftp to multi-threaded download files from websites

   lftp  -c "pget -n 10 http://example.com/foo.bar"

##### mirrors directory to a ftp server

   lftp  -ulogin,passwd -e "mirror reverse /my/from/dir/ /ftp/target/dir/" ftp.server.xx

##### Mirror a directory structure from websites with an Apache-generated file indexes

   lftp  -e "mirror -c" http://example.com/foobar/

##### Internet Speed Test

   lftp  -e 'pget http://address_to_file; exit; '

##### Multi-segment file downloading with lftp

   lftp  -u user,pass ftp://site.com -e 'pget -c -n 6 file'

##### Fastest segmented parallel sync of a remote directory over ssh

   lftp  -u user,pwd -e "set sftp:connect-program 'ssh -a -x -T -c arcfour -o Compression=no'; mirror -v -c loop use-pget-n=3 -P 2 /remote/dir/ /local/dir/; quit" sftp://remotehost:22

##### Multi-segment directory downloading with lftp

   lftp  -u user,pass ftp://site.com/ -e 'mirror -c parallel=3 use-pget-n=5 "Some folder"'

##### Gets directory and files tree listing from a FTP-server

   lftp  -u<<credentials>> <<server>> -e "du -a;exit" > server-listing.txt

##### mirrors directory to a ftp server

   lftp  -ulogin,passwd -e "mirror reverse /my/from/dir/ /ftp/target/dir/" ftp.server.xx

##### Mirror a directory structure from websites with an Apache-generated file indexes

   lftp  -e "mirror -c" http://example.com/foobar/

##### Internet Speed Test

   lftp  -e 'pget http://address_to_file; exit; '

##### Multi-segment file downloading with lftp

   lftp  -u user,pass ftp://site.com -e 'pget -c -n 6 file'

##### Fastest segmented parallel sync of a remote directory over ssh

   lftp  -u user,pwd -e "set sftp:connect-program 'ssh -a -x -T -c arcfour -o Compression=no'; mirror -v -c loop use-pget-n=3 -P 2 /remote/dir/ /local/dir/; quit" sftp://remotehost:22

##### Multi-segment directory downloading with lftp

   lftp  -u user,pass ftp://site.com/ -e 'mirror -c parallel=3 use-pget-n=5 "Some folder"'
