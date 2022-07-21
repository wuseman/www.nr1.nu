# regenerateCSR

##### new ssl key and csr based on a previous ssl certificate

   regenerateCSR  () { openssl genrsa -out $2 2048; openssl x509 -x509toreq -in $1 -out $3 -signkey $2; }

##### new ssl key and csr based on a previous ssl certificate

   regenerateCSR  () { openssl genrsa -out $2 2048; openssl x509 -x509toreq -in $1 -out $3 -signkey $2; }
