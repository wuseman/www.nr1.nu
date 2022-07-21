# getdji

##### get ^DJI

   getdji  (){local url sedcmd;url='http://finance.yahoo.com/q?d=t&s=^DJI';sedcmd='/(DJI:.*)/,/Day.*/!d;s/^ *//g;';sedcmd="$sedcmd/Change:/s/Down / -/;/Change:/s/Up / +/;";sedcmd="$sedcmd/Open:/s//&   /";lynx -dump "$url" | sed "$sedcmd"; }
