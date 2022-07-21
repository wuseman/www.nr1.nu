# snmpwalk

##### Snmpwalk a hosts's entire OID tree with SNMP V3 without Authentication or Privacy

   snmpwalk  -v3 -On -u <user> -l NoAuthNoPriv -m ALL <HOST_IP> .

##### Snmpwalk a hosts's entire OID tree with SNMP V3 with MD5 Authentication and without Privacy

   snmpwalk  -v3 -On -u <user> -l AuthNoPriv -a MD5 -A <auth_password> -m ALL <HOST_IP> .

##### Snmpwalk a hosts's entire OID tree with SNMP V3 with SHA Authentication and without Privacy

   snmpwalk  -v3 -On -u <user> -l AuthNoPriv -a SHA -A <auth_password> -m ALL <HOST_IP> .

##### Snmpwalk a hosts's entire OID tree with SNMP V3 with SHA Authentication and with Privacy

   snmpwalk  -v3 -On -u <user> -l AuthPriv -a SHA -A <auth_password> -X <encryption_password> -m ALL <HOST_IP> .

##### Snmpwalk a hosts's entire OID tree with SNMP V2

   snmpwalk  -v2c -c <community> -m ALL <HOST_IP> .

##### Snmpwalk a hosts's entire OID tree with SNMP V2

   snmpwalk  -v2c -c <community> -m ALL <HOST_IP> .
