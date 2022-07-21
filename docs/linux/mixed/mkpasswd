# mkpasswd

##### generate /etc/shadow-style password

   mkpasswd  -5 pa33w0rd saltsalt

##### Random password generating function

   mkpasswd () { head -c $(($1)) /dev/urandom | uuencode - | sed -n 's/.//;2s/\(.\{'$1'\}\).*/\1/p' ;}

##### generate hash for puppet

   mkpasswd  -m sha-512
