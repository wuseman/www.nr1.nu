# open

##### Open Finder from the current Terminal location

   open  .

##### Open Finder from the current Terminal location

   open  .

##### Open Finder from the current Terminal location

   open  .

##### generate random password

   open ssl rand -base64 6

##### Convert a PKCS#8 private key to PEM format

   open ssl pkcs8 -inform DER -nocrypt -in [priv key] -out [pem priv key]

##### Identify a PKCS#8 Private Key

   open ssl ans1parse -inform DER < [priv key]

##### Create web site ssl certificates

   open ssl req -new -x509 -extensions v3_ca -days 1100 -subj "/C=CA/ST=CA/L=SomeCity/O=EXAMPLE Inc./OU=Web Services/CN=example.com/emailAddress=postmaster@example.com" -nodes -keyout web.key -out web.crt

##### Generate a new private key and Certificate Signing Request

   open ssl req -out CSR.csr -new -newkey rsa:2048 -nodes -keyout privateKey.key

##### Generate a self-signed certificate

   open ssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -keyout privateKey.key -out certificate.crt

##### Generate a certificate signing request (CSR) for an existing private key

   open ssl req -out CSR.csr -key privateKey.key -new

##### Generate a certificate signing request based on an existing certificate

   open ssl x509 -x509toreq -in certificate.crt -out CSR.csr -signkey privateKey.key

##### Open Finder from the current Terminal location

   open  -a Finder <path>

##### Connect to SMTP server using STARTTLS

   open ssl s_client -starttls smtp -crlf -connect 127.0.0.1:25

##### open an mac application from mac osx command line terminal

   open  -a /Applications/Safari.app $1

##### generate random password

   open ssl rand -base64 1000 | tr "[:upper:]" "[:lower:]" | tr -cd "[:alnum:]" | tr -d "lo" | cut -c 1-8 | pbcopy

##### Use FileMerge to compare two files

   open diff <file1> <file2>

##### Produce a pseudo random password with given length in base 64

   open ssl rand -base64 <length>

##### Test for Weak SSL Ciphers

   open ssl s_client -connect [host]:[sslport] -cipher LOW

##### Securely destroy data on given device hugely faster than /dev/urandom

   open ssl enc -aes-256-ctr -pass pass:"$(dd if=/dev/urandom bs=128 count=1 2>/dev/null | base64)" -nosalt < /dev/zero > randomfile.bin

##### View acceptable client certificate CA names asked for during SSL renegotiations

   open ssl s_client -connect www.example.com:443 -prexit

##### interactive rss-based colorful commandline-fu reader perl oneliner (v0.1)

   open  R,"curl -s http://feeds2.feedburner.com/Command-line-fu|xml2|"; while(<R>){ chomp; m(^/rss/channel/item/title=) and do{ s/^.*?=//; ($t,$d,$l)=($_,undef,undef) }; m(^/rss/channel/item/description=) and do{ s/^.*?=//; push @d,$_ }; m(^/rss/channel/item

##### Generate a random password

   open ssl rand -base64 12

##### Encrypted archive with openssl and tar

   open ssl des3 -salt -in unencrypted-data.tar -out encrypted-data.tar.des3

##### Encode/Decode text to/from Base64 on a Mac w/out Mac Ports

   open ssl base64 -in base64.decoded.txt -out base64.encoded.txt

##### remove password from openssl key file

   open ssl rsa -in /path/to/originalkeywithpass.key -out /path/to/newkeywithnopass.key

##### OpenSSL one line CSR & Key generation

   open ssl req -nodes -newkey rsa:2048 -keyout server.key -out server.csr -subj "/C=BR/ST=State/L=City/O=Company Inc./OU=IT/CN=domain.com"

##### Extract public key from private

   open ssl rsa -in key.priv -pubout > key.pub

##### Decode base64-encoded file in one line of Perl

   open ssl base64 -d < file.txt > out

##### Download SSL server certificate with opsnessl

   open ssl s_client -connect www.example.com:443 > /tmp/example.com.cert

##### Generate a Random MAC address

   open ssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//'

##### Opens an explorer.exe file browser window for the current working directory or specified dir (Fixed)

   open (){ if [[ -n "$1" ]];then explorer /e, $(cygpath -mal "$PWD/$1");else explorer /e, $(cygpath -mal "$PWD");fi }

##### Test a SSLv2 connection

   open ssl s_client -connect localhost:443 -ssl2

##### Decrypt exported android wallet keys for import into desktop client (LTC,FTC,BTC)

   open ssl enc -d -aes-256-cbc -a -in bitcoin-wallet-backup -out bitcoin-wallet-backup-decrypted

##### Generate hash( of some types) from string

   open ssl dgst -sha256 <<<"test"

##### Open a file with specified application.

   open  -a BBEdit file.sql

##### view certificate details

   open ssl x509 -in filename.crt -noout -text

##### AES file encryption with openssl

   open ssl aes-256-cbc -salt -in secrets.txt -out secrets.txt.enc

##### Generate random valid mac addresses

   open ssl rand -hex 6 | sed 's/\(..\)/:\1/g; s/^.\(.\)[0-3]/\12/; s/^.\(.\)[4-7]/\16/; s/^.\(.\)[89ab]/\1a/; s/^.\(.\)[cdef]/\1e/'

##### Opens an explorer.exe file browser window for the current working directory

   open () { explorer /e, $(cygpath -wap "${1:-$PWD}"); }

##### Generate a Random (unicast) MAC address

   open ssl rand -hex 1 | tr '[:lower:]' '[:upper:]' | xargs echo "obase=2;ibase=16;" | bc | cut -c1-6 | sed 's/$/00/' | xargs echo "obase=16;ibase=2;" | bc | sed "s/$/:$(openssl rand -hex 5 | sed 's/\(..\)/\1:/g; s/.$//' | tr '[:lower:]' '[:upper:]')/"

##### Debug openssl from CLI

   open ssl s_client -state -connect site.com:443

##### Convert pkcs12 Certificate to ASCII for use in PHP

   open ssl pkcs12 -info -nodes -in /path/to/encryptedp12 > /path/to/asciip12

##### SSL get expiration date from remote site

   open ssl s_client -showcerts -servername www.google.com -connect www.google.com:443 </dev/null | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' | openssl x509 -noout -subject -dates

##### How to determine SSL cert expiration date from a PEM encoded

   open ssl x509 -enddate -noout -in file.pem

##### Check an MD5 hash of the public key to ensure that it matches with what is in a CSR or private key

   open ssl x509 -noout -modulus -in certificate.crt | openssl md5 openssl rsa -noout -modulus -in privateKey.key | openssl md5 openssl req -noout -modulus -in CSR.csr | openssl md5

##### Check an SSL connection. All the certificates (including Intermediates) should be displayed

   open ssl s_client -connect www.paypal.com:443

##### ssl Convert a DER file (.crt .cer .der) to PEM

   open ssl x509 -inform der -in certificate.cer -out certificate.pem

##### ssl Convert a PEM file to DER (crt etc)

   open ssl x509 -outform der -in certificate.pem -out certificate.crt

##### Convert a PKCS#12 file (.pfx .p12) containing a private key and certificates to PEM

   open ssl pkcs12 -in keyStore.pfx -out keyStore.pem -nodes

##### Convert a PEM certificate file and a private key to PKCS#12 (.pfx .p12)

   open ssl pkcs12 -export -out certificate.pfx -inkey privateKey.key -in certificate.crt -certfile CACert.crt

##### ssl Check a Certificate Signing Request (CSR)

   open ssl req -text -noout -verify -in CSR.csr

##### ssl Check a private key

   open ssl rsa -in privateKey.key -check

##### ssl Check a certificate

   open ssl x509 -in certificate.crt -text -noout

##### Check a PKCS#12 file (.pfx or .p12)

   open ssl pkcs12 -info -in keyStore.p12

##### Remove a passphrase from a private key

   open ssl rsa -in privateKey.pem -out newPrivateKey.pem

##### Open the last modified file of a certain type

   open -command $(ls -rt *.type | tail -n 1)

##### Decrypt SSL

   open ssl pkcs8 -in /etc/pki/tls/web.key -out /root/wc.key -nocrypt && tshark -o "ssl.desegment_ssl_records:TRUE" -o "ssl.desegment_ssl_application_data:TRUE" -o "ssl.keys_list:,443,http,/root/wc.key" -o "ssl.debug_file:rsa.log" -R "(tcp.port eq 443)"

##### Generate Random Passwords

   open ssl rand 6 -base64

##### Generate random password in Linux CLI

   open ssl rand -base64 12

##### Calculate md5 sum with openssl

   open ssl dgst -md5 file.ext

##### Create a P12 file, using OpenSSL

   open ssl pkcs12 -export -in /dir/CERTIFICATE.pem -inkey /dir/KEY.pem -certfile /dir/CA-cert.pem -name "certName" -out /dir/certName.p12

##### Open Finder from the current Terminal location

   open  .

##### generate random password

   open ssl rand -base64 6

##### Connect to SMTP server using STARTTLS

   open ssl s_client -starttls smtp -crlf -connect 127.0.0.1:25

##### Produce a pseudo random password with given length in base 64

   open ssl rand -base64 <length>

##### Test for Weak SSL Ciphers

   open ssl s_client -connect [host]:[sslport] -cipher LOW

##### Securely destroy data on given device hugely faster than /dev/urandom

   open ssl enc -aes-256-ctr -pass pass:"$(dd if=/dev/urandom bs=128 count=1 2>/dev/null | base64)" -nosalt < /dev/zero > randomfile.bin

##### View acceptable client certificate CA names asked for during SSL renegotiations

   open ssl s_client -connect www.example.com:443 -prexit

##### interactive rss-based colorful commandline-fu reader perl oneliner (v0.1)

   open  R,"curl -s http://feeds2.feedburner.com/Command-line-fu|xml2|"; while(<R>){ chomp; m(^/rss/channel/item/title=) and do{ s/^.*?=//; ($t,$d,$l)=($_,undef,undef) }; m(^/rss/channel/item/description=) and do{ s/^.*?=//; push @d,$_ }; m(^/rss/channel/item

##### Generate a random password

   open ssl rand -base64 12

##### Encrypted archive with openssl and tar

   open ssl des3 -salt -in unencrypted-data.tar -out encrypted-data.tar.des3

##### Encode/Decode text to/from Base64 on a Mac w/out Mac Ports

   open ssl base64 -in base64.decoded.txt -out base64.encoded.txt

##### remove password from openssl key file

   open ssl rsa -in /path/to/originalkeywithpass.key -out /path/to/newkeywithnopass.key

##### OpenSSL one line CSR & Key generation

   open ssl req -nodes -newkey rsa:2048 -keyout server.key -out server.csr -subj "/C=BR/ST=State/L=City/O=Company Inc./OU=IT/CN=domain.com"

##### Extract public key from private

   open ssl rsa -in key.priv -pubout > key.pub

##### Decode base64-encoded file in one line of Perl

   open ssl base64 -d < file.txt > out

##### Download SSL server certificate with opsnessl

   open ssl s_client -connect www.example.com:443 > /tmp/example.com.cert

##### Generate a Random MAC address

   open ssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//'

##### Opens an explorer.exe file browser window for the current working directory or specified dir (Fixed)

   open (){ if [[ -n "$1" ]];then explorer /e, $(cygpath -mal "$PWD/$1");else explorer /e, $(cygpath -mal "$PWD");fi }

##### Test a SSLv2 connection

   open ssl s_client -connect localhost:443 -ssl2

##### Decrypt exported android wallet keys for import into desktop client (LTC,FTC,BTC)

   open ssl enc -d -aes-256-cbc -a -in bitcoin-wallet-backup -out bitcoin-wallet-backup-decrypted

##### Generate hash( of some types) from string

   open ssl dgst -sha256 <<<"test"

##### Open a file with specified application.

   open  -a BBEdit file.sql

##### view certificate details

   open ssl x509 -in filename.crt -noout -text

##### AES file encryption with openssl

   open ssl aes-256-cbc -salt -in secrets.txt -out secrets.txt.enc

##### Generate random valid mac addresses

   open ssl rand -hex 6 | sed 's/\(..\)/:\1/g; s/^.\(.\)[0-3]/\12/; s/^.\(.\)[4-7]/\16/; s/^.\(.\)[89ab]/\1a/; s/^.\(.\)[cdef]/\1e/'

##### Opens an explorer.exe file browser window for the current working directory

   open () { explorer /e, $(cygpath -wap "${1:-$PWD}"); }

##### Generate a Random (unicast) MAC address

   open ssl rand -hex 1 | tr '[:lower:]' '[:upper:]' | xargs echo "obase=2;ibase=16;" | bc | cut -c1-6 | sed 's/$/00/' | xargs echo "obase=16;ibase=2;" | bc | sed "s/$/:$(openssl rand -hex 5 | sed 's/\(..\)/\1:/g; s/.$//' | tr '[:lower:]' '[:upper:]')/"

##### Debug openssl from CLI

   open ssl s_client -state -connect site.com:443

##### Convert pkcs12 Certificate to ASCII for use in PHP

   open ssl pkcs12 -info -nodes -in /path/to/encryptedp12 > /path/to/asciip12

##### SSL get expiration date from remote site

   open ssl s_client -showcerts -servername www.google.com -connect www.google.com:443 </dev/null | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' | openssl x509 -noout -subject -dates

##### How to determine SSL cert expiration date from a PEM encoded

   open ssl x509 -enddate -noout -in file.pem

##### Check an MD5 hash of the public key to ensure that it matches with what is in a CSR or private key

   open ssl x509 -noout -modulus -in certificate.crt | openssl md5 openssl rsa -noout -modulus -in privateKey.key | openssl md5 openssl req -noout -modulus -in CSR.csr | openssl md5

##### Check an SSL connection. All the certificates (including Intermediates) should be displayed

   open ssl s_client -connect www.paypal.com:443

##### ssl Convert a DER file (.crt .cer .der) to PEM

   open ssl x509 -inform der -in certificate.cer -out certificate.pem

##### ssl Convert a PEM file to DER (crt etc)

   open ssl x509 -outform der -in certificate.pem -out certificate.crt

##### Convert a PKCS#12 file (.pfx .p12) containing a private key and certificates to PEM

   open ssl pkcs12 -in keyStore.pfx -out keyStore.pem -nodes

##### Convert a PEM certificate file and a private key to PKCS#12 (.pfx .p12)

   open ssl pkcs12 -export -out certificate.pfx -inkey privateKey.key -in certificate.crt -certfile CACert.crt

##### ssl Check a Certificate Signing Request (CSR)

   open ssl req -text -noout -verify -in CSR.csr

##### ssl Check a private key

   open ssl rsa -in privateKey.key -check

##### ssl Check a certificate

   open ssl x509 -in certificate.crt -text -noout

##### Check a PKCS#12 file (.pfx or .p12)

   open ssl pkcs12 -info -in keyStore.p12

##### Remove a passphrase from a private key

   open ssl rsa -in privateKey.pem -out newPrivateKey.pem

##### Open the last modified file of a certain type

   open -command $(ls -rt *.type | tail -n 1)
