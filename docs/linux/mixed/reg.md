# reg

##### Exclude a file or folder from Microsoft Forefront's scanning engine

   reg  add "HKLM\SOFTWARE\Microsoft\Microsoft Antimalware\Exclusions\Paths" /v "C:\temp\evil.exe" /t REG_DWORD /d 00000000

##### Verify Windows SNMP settings

   reg  query HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SNMP\Parameters\ValidCommunities

##### new ssl key and csr based on a previous ssl certificate

   reg enerateCSR () { openssl genrsa -out $2 2048; openssl x509 -x509toreq -in $1 -out $3 -signkey $2; }

##### new ssl key and csr based on a previous ssl certificate

   reg enerateCSR () { openssl genrsa -out $2 2048; openssl x509 -x509toreq -in $1 -out $3 -signkey $2; }
