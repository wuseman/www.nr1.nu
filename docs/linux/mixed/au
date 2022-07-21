# au

##### Setup a persistant SSH tunnel w/ pre-shared key authentication

   au tossh -f -i /path/to/key -ND local-IP:PORT User@Server

##### SSH tunneling self-connection

   au tossh -M 0 -p 22 -C4c arcfour,blowfish-cbc -NfD 8080 -2 -L localport1:server1:remoteport1 -L bind_address2:localport2:server2:remoteport2 user@sshserver

##### Permanent mysql ssh tunnel  to server

   au tossh -M 3307 -f user@server.com -L 3307:127.0.0.1:3306

##### VI config to save files with +x when a shebang is found on line 1

   au  BufWritePost * if getline(1) =~ "^#!" | if getline(1) =~ "/bin/" | silent !chmod +x <afile> | endif | endif

##### Have an ssh session open forever

   au tossh -M50000 -t server.example.com 'screen -raAd mysession'

##### Start a SOCKS proxy to avoid a restrictive firewall

   au tossh -N -D localhost:1080 myhome.example.net -p 443

##### Convert all .wav to .mp3

   au dio-convert <dir>/*

##### Report information about executable launched on system

   au report -x

##### Autossh Tunnel Through Proxy

   au tossh -o "ProxyCommand nc proxy <proxy_hostname_or_ip>:<proxy_port> %h %p" -M 20000 -f -N <hostname_or_ip> -p 443 -R 2222:localhost:22 -C

##### Set the master volume to 90% (Ubuntu)

   au mix -v 90

##### Create an SSH SOCKS proxy server on localhost:8000 that will re-start itself if something breaks the connection temporarily

   au tossh -f -M 20000 -D 8000 somehost -N

##### Ramp the system volume up 5%

   au mix -v +5

##### Extract any archive

   au npack foo.tar.bz2

##### Setup a persistant SSH tunnel w/ pre-shared key authentication

   au tossh -f -i /path/to/key -ND local-IP:PORT User@Server

##### SSH tunneling self-connection

   au tossh -M 0 -p 22 -C4c arcfour,blowfish-cbc -NfD 8080 -2 -L localport1:server1:remoteport1 -L bind_address2:localport2:server2:remoteport2 user@sshserver

##### Permanent mysql ssh tunnel  to server

   au tossh -M 3307 -f user@server.com -L 3307:127.0.0.1:3306

##### VI config to save files with +x when a shebang is found on line 1

   au  BufWritePost * if getline(1) =~ "^#!" | if getline(1) =~ "/bin/" | silent !chmod +x <afile> | endif | endif

##### Have an ssh session open forever

   au tossh -M50000 -t server.example.com 'screen -raAd mysession'

##### Start a SOCKS proxy to avoid a restrictive firewall

   au tossh -N -D localhost:1080 myhome.example.net -p 443

##### Convert all .wav to .mp3

   au dio-convert <dir>/*

##### Report information about executable launched on system

   au report -x

##### Autossh Tunnel Through Proxy

   au tossh -o "ProxyCommand nc proxy <proxy_hostname_or_ip>:<proxy_port> %h %p" -M 20000 -f -N <hostname_or_ip> -p 443 -R 2222:localhost:22 -C

##### Set the master volume to 90% (Ubuntu)

   au mix -v 90

##### Create an SSH SOCKS proxy server on localhost:8000 that will re-start itself if something breaks the connection temporarily

   au tossh -f -M 20000 -D 8000 somehost -N
