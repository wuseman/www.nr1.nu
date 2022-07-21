# autossh

##### Setup a persistant SSH tunnel w/ pre-shared key authentication

   autossh  -f -i /path/to/key -ND local-IP:PORT User@Server

##### SSH tunneling self-connection

   autossh  -M 0 -p 22 -C4c arcfour,blowfish-cbc -NfD 8080 -2 -L localport1:server1:remoteport1 -L bind_address2:localport2:server2:remoteport2 user@sshserver

##### Permanent mysql ssh tunnel  to server

   autossh  -M 3307 -f user@server.com -L 3307:127.0.0.1:3306

##### Have an ssh session open forever

   autossh  -M50000 -t server.example.com 'screen -raAd mysession'

##### Start a SOCKS proxy to avoid a restrictive firewall

   autossh  -N -D localhost:1080 myhome.example.net -p 443

##### Autossh Tunnel Through Proxy

   autossh  -o "ProxyCommand nc proxy <proxy_hostname_or_ip>:<proxy_port> %h %p" -M 20000 -f -N <hostname_or_ip> -p 443 -R 2222:localhost:22 -C

##### Create an SSH SOCKS proxy server on localhost:8000 that will re-start itself if something breaks the connection temporarily

   autossh  -f -M 20000 -D 8000 somehost -N

##### Setup a persistant SSH tunnel w/ pre-shared key authentication

   autossh  -f -i /path/to/key -ND local-IP:PORT User@Server

##### SSH tunneling self-connection

   autossh  -M 0 -p 22 -C4c arcfour,blowfish-cbc -NfD 8080 -2 -L localport1:server1:remoteport1 -L bind_address2:localport2:server2:remoteport2 user@sshserver

##### Permanent mysql ssh tunnel  to server

   autossh  -M 3307 -f user@server.com -L 3307:127.0.0.1:3306

##### Have an ssh session open forever

   autossh  -M50000 -t server.example.com 'screen -raAd mysession'

##### Start a SOCKS proxy to avoid a restrictive firewall

   autossh  -N -D localhost:1080 myhome.example.net -p 443

##### Autossh Tunnel Through Proxy

   autossh  -o "ProxyCommand nc proxy <proxy_hostname_or_ip>:<proxy_port> %h %p" -M 20000 -f -N <hostname_or_ip> -p 443 -R 2222:localhost:22 -C

##### Create an SSH SOCKS proxy server on localhost:8000 that will re-start itself if something breaks the connection temporarily

   autossh  -f -M 20000 -D 8000 somehost -N
