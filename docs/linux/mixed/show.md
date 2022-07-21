# show

##### Nice way to view source code

   show _code() { pygmentize $1 | less -N }

##### fiber power levels on Foundry (Brocade) RX and MLX BigIron L3 (routers & switches)

   show  optic <slot #>

##### Display RSTP (802.1W) Info. on on Foundry (Brocade) RX and MLX BigIron L3 (routers & switches)

   show  802-1w

##### Quick access to ASCII code of a key

   show key -a

##### Show me just the ip address

   show ip() { nmcli connection show $1|grep ipv4.addresses|awk '{print $2}' ; }

##### Quick access to ASCII code of a key

   show key -a

##### Show me just the ip address

   show ip() { nmcli connection show $1|grep ipv4.addresses|awk '{print $2}' ; }
