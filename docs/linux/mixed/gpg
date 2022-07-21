# gpg

##### GnuPG: Encrypt/Decrypt files

   gpg  -c sensitive.txt; gpg sensitive.txt.gpg

##### create a detached signature for file.txt

   gpg  -ab file.txt

##### encrypt file.txt using myfriend's pubkey && add your signature

   gpg  -ser 'myfriend@gmail.com' file.txt

##### Update all GPG keys in your keyring

   gpg  refresh-keys

##### verify a file using its detached signature

   gpg  verify file.txt.asc file.txt

##### decrypt file.txt.gpg using my private key

   gpg  -d file.txt.gpg -o file.txt

##### gpg decrypt a file

   gpg  output foo.txt decrypt foo.txt.pgp

##### Encryption file in commad line

   gpg  -c <filename>

##### gpg encrypt a file

   gpg  encrypt recipient 'Foo Bar' foo.txt

##### Getting GnuPG Public Keys From KeyServer

   gpg  keyserver pgp.surfnet.nl recv-key 19886493

##### Fetch all GPG keys that are currently missing in your keyring

   gpg  list-sigs | sed -rn '/User ID not found/s/^sig.+([a-FA-F0-9]{8}).*/\1/p' | xargs -i_ gpg keyserver-options no-auto-key-retrieve recv-keys _

##### Search gpg keys from commandline

   gpg  search-keys

##### gpg decrypt several files

   gpg  allow-multiple-messages decrypt-files *

##### Generate a random password 30 characters long

   gpg  gen-random armor 1 30

##### encrypt file.txt using a symmetric password

   gpg  -c file.txt

##### Destroy file contents after encryption

   gpg  -e default-recipient-self <SENSITIVE_FILE> && shred -zu "$_"

##### Show reason of revocation for 0xDEADBEEF with gpg.

   gpg  export 0xDEADBEEF | gpg list-packets | grep -Pzao ':signature packet:.*\n\t.*sigclass 0x20(\n\t.*)*'

##### gpg decrypt a file

   gpg  output foo.txt decrypt foo.txt.pgp

##### Encryption file in commad line

   gpg  -c <filename>

##### gpg encrypt a file

   gpg  encrypt recipient 'Foo Bar' foo.txt

##### Getting GnuPG Public Keys From KeyServer

   gpg  keyserver pgp.surfnet.nl recv-key 19886493

##### Fetch all GPG keys that are currently missing in your keyring

   gpg  list-sigs | sed -rn '/User ID not found/s/^sig.+([a-FA-F0-9]{8}).*/\1/p' | xargs -i_ gpg keyserver-options no-auto-key-retrieve recv-keys _

##### Search gpg keys from commandline

   gpg  search-keys

##### gpg decrypt several files

   gpg  allow-multiple-messages decrypt-files *

##### Generate a random password 30 characters long

   gpg  gen-random armor 1 30

##### encrypt file.txt using a symmetric password

   gpg  -c file.txt
