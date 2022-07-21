# python

##### Serve current directory tree at http://$HOSTNAME:8000/

   python  -m SimpleHTTPServer

##### Serve current directory tree at http://$HOSTNAME:8000/

   python  -m SimpleHTTPServer

##### Serve current directory tree at http://$HOSTNAME:8000/

   python  -m SimpleHTTPServer

##### Serve current directory tree at http://$HOSTNAME:8000/

   python  -m SimpleHTTPServer

##### Create some random sounds

   python  -c "import os; print [i * bytearray(os.urandom(10)) for i in bytearray(os.urandom(10000))]" | padsp tee /dev/audio > /dev/null

##### generate random string

   python  -c 'import string, random; print "".join(random.choice(string.letters+string.digits) for x in range(6))'

##### Remove dashes in UUID

   python  -c "from uuid import UUID; print UUID('63b726a0-4c59-45e4-af65-bced5d268456').hex;"

##### Serve the current directory at http://localhost:8000/

   python  -m SimpleHTTPServer

##### Print your local hostname with python

   python  -c "import platform; print platform.node()"

##### calculate in commandline with python

   python  -c "print 1+1"

##### bind a web server in $PWD

   python  -c "import SimpleHTTPServer;SimpleHTTPServer.test()"

##### command line calculator (zsh version)

   python 3

##### One-Liner to Display IP Addresses

   python  -c "import socket; print '\n'.join(socket.gethostbyname_ex(socket.gethostname())[2])"

##### Get your public ip

   python  -c "import socket; s=socket.socket(socket.AF_INET, socket.SOCK_DGRAM); s.connect(('google.com', 80)); print s.getsockname()[0]"

##### Python version 3: Serve current directory tree at http://$HOSTNAME:8000/

   python  -m http.server

##### find system's indianness

   python  -c "import sys;print (sys.byteorder) + ' endian'"

##### FizzBuzz one-liner in Python

   python  -c'for i in range(1,101):print"FizzBuzz"[i*i%3*4:8i**4%5]or i'

##### An alternative to: python -m SimpleHTTPServer for Arch Linux

   python 3 -m http.server

##### Convert YAML to JSON

   python  -c 'import sys, yaml, json; json.dump(yaml.load(sys.stdin), sys.stdout, indent=4)' < file.yaml > file.json

##### Stream (almost) any music track in mplayer

   python 2 -c 'import urllib2 as u, sys as s, json as j, subprocess as p;p.call(["mplayer", u.urlopen(j.loads(u.urlopen("http://ex.fm/api/v3/song/search/%s" % "+".join(s.argv[1:])).read())["songs"][0]["url"]).geturl().split("#")[0]])' lenny kravitz fly away

##### Convert CSV to JSON

   python  -c "import csv,json;print json.dumps(list(csv.reader(open('csv_file.csv'))))"

##### Display the list of all opened tabs from Firefox via a python one-liner and a shell hack to deal with python indentation.

   python 2 <<< $'import json\nf = open("sessionstore.js", "r")\njdata = json.loads(f.read())\nf.close()\nfor win in jdata.get("windows"):\n\tfor tab in win.get("tabs"):\n\t\ti = tab.get("index") - 1\n\t\tprint tab.get("entries")[i].get("url")'

##### put current directory in LAN quickly

   python  -m SimpleHTTPServer

##### python - covert image to base64 string for data URI use

   python  -c 'print open("path/to/image.png", "rb").read().encode("base64").replace("\n","")'

##### convert ascii string to hex

   python  -c 'print "hello".encode("hex")'

##### retrieve the source address used to contact a given host

   python  -c 'import socket;  s = socket.socket(socket.AF_INET, socket.SOCK_STREAM); s.connect(("<hostname>", <port>)); print s.getsockname()[0] ; s.close() ;' 2> /dev/null

##### Print all commands of a user on commandlinefu.com

   python  -c "import requests; from bs4 import BeautifulSoup; print '\n'.join([cmd.text for cmd in BeautifulSoup(requests.get('http://www.commandlinefu.com/commands/by/${USER}').content, 'html.parser').find_all('div','command')])"

##### Upgrade pip-installed python packages

   python  -c "import pip; print(' '.join([x.project_name for x in pip.get_installed_distributions()]))" | xargs sudo pip install -U

##### Generate a ZenCart-style MD5 password hash.

   python  -c 'p="SeCuR3PwD";import hashlib as h;s=h.md5(p).hexdigest()[:2];pw=h.md5(s+p).hexdigest();print pw+":"+s;'

##### Google URL shortener

   python  -c 'import googl; print googl.Googl("<your_google_api_key>").shorten("'$someurl'")[u"id"]'

##### python smtp server

   python  -m smtpd -n -c DebuggingServer localhost:1025

##### python smtp server

   python  -m smtpd -n -c DebuggingServer localhost:1025

##### Generate random valid mac addresses

   python  -c "from itertools import imap; from random import randint; print ':'.join(['%02x'%x for x in imap(lambda x:randint(0,255), range(6))])"

##### Command line calculator

   python  -ic "from __future__ import division; from math import *; from random import *"

##### switch case of a text file

   python 3 -c 'import sys; print(sys.stdin.read().swapcase(), end="")' <input.txt

##### Pretty Print a simple csv in the command line

   python  -c 'import sys,csv; c = csv.reader(sys.stdin); [sys.stdout.write("^M".join(map(repr,r))+"\n") for r in c];' <tmp/test.csv | column -s '^M' -t

##### An easter egg built into python to give you the Zen of Python

   python  -c 'import this'

##### Convert JSON to YAML (unicode safe)

   python  -c 'import sys, yaml, json; yaml.safe_dump(json.load(sys.stdin), sys.stdout, allow_unicode=True)' < foo.json > foo.yaml

##### Convert a string to

   python  -c "print 'this is a test'.title()"

##### Using scapy to get the IP of the iface used to contact local gw (i.e. supposed host IP)

   python  -c "import scapy.all; print [x[4] for x in scapy.all.conf.route.routes if x[2] != '0.0.0.0'][0]"

##### List all available python modules

   python  -c "help('modules')"

##### Serve current directory tree at http://localhost:8000

   python 3 -m http.server

##### Reverse string, encode into hex and divide in chunk of 32 bits.

   python  -c "s = '////bin/bash'; print [s[::-1].encode('hex')[i:i+8] for i in range(0, len(s[::-1].encode('hex')), 8)]"

##### Serve current directory tree on localhost port 8000 and then directly open in Firefox (Python 3 version)

   python 3 -m http.server & firefox http://$HOSTNAME:8000/

##### Compile python script. Generated file will overwrite anything at /path/to/script.pyc

   python  -c $(echo -e 'import py_compile\npy_compile.compile("/path/to/script.py")');

##### When need to compress the Zope Database

   python  fsrecovery.py -P 0 -f <path-to-instance>/Data.fs <path-to-instance-destination>/Data.fs.packed

##### Share the current tree over the web

   python  -c "import SimpleHTTPServer;SimpleHTTPServer.test()"

##### Slow Viber.exe wine process to 1% CPU with Python to split ps string and cpulimit

   python  -c "a='$(ps -u luke | grep Viber.exe)';b= a.split(' ')[1];import os;os.system('cpulimit -l 1 -p '+b)"

##### Print a row of 50 hyphens

   python  -c 'print "-"*50'

##### python one-liner to get the current week number

   python  -c 'import datetime; print(datetime.date.today().isocalendar()[1])'

##### convert from decimal to hexadecimal

   python  -c 'print hex(1337)'

##### Generate a random password using python and random lib.

   python  -c 'import random; print "".join([random.choice("abcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*-_=+") for i in range(10)])'

##### Print a row of 50 hyphens

   python  -c 'print "-" * 50'

##### Python: Quickly locate site-packages

   python  -c "from distutils.sysconfig import get_python_lib; print get_python_lib()"

##### put current directory in LAN quickly

   python 3 -m http.server

##### Get python major.minor version in shell oneliner

   python  -c 'import sys; print(str(sys.version_info[0])+"."+str(sys.version_info[1]))'

##### Simple way to share a directory over http without touching your router

   python  -m SimpleHTTPServer 8000 &; sudo localtunnel -k ~/.ssh/id_rsa.pub 8000

##### Convert JSON to YAML

   python  -c 'import sys, yaml, json; yaml.safe_dump(json.load(sys.stdin), sys.stdout, default_flow_style=False)' < file.json > file.yaml

##### Serve current directory tree at http://$HOSTNAME:8000/

   python  -m SimpleHTTPServer

##### Serve current directory tree at http://$HOSTNAME:8000/

   python  -m SimpleHTTPServer

##### Serve current directory tree at http://$HOSTNAME:8000/

   python  -m SimpleHTTPServer

##### Python version 3: Serve current directory tree at http://$HOSTNAME:8000/

   python  -m http.server

##### find system's indianness

   python  -c "import sys;print (sys.byteorder) + ' endian'"

##### FizzBuzz one-liner in Python

   python  -c'for i in range(1,101):print"FizzBuzz"[i*i%3*4:8i**4%5]or i'

##### An alternative to: python -m SimpleHTTPServer for Arch Linux

   python 3 -m http.server

##### Convert YAML to JSON

   python  -c 'import sys, yaml, json; json.dump(yaml.load(sys.stdin), sys.stdout, indent=4)' < file.yaml > file.json

##### Stream (almost) any music track in mplayer

   python 2 -c 'import urllib2 as u, sys as s, json as j, subprocess as p;p.call(["mplayer", u.urlopen(j.loads(u.urlopen("http://ex.fm/api/v3/song/search/%s" % "+".join(s.argv[1:])).read())["songs"][0]["url"]).geturl().split("#")[0]])' lenny kravitz fly away

##### Convert CSV to JSON

   python  -c "import csv,json;print json.dumps(list(csv.reader(open('csv_file.csv'))))"

##### Display the list of all opened tabs from Firefox via a python one-liner and a shell hack to deal with python indentation.

   python 2 <<< $'import json\nf = open("sessionstore.js", "r")\njdata = json.loads(f.read())\nf.close()\nfor win in jdata.get("windows"):\n\tfor tab in win.get("tabs"):\n\t\ti = tab.get("index") - 1\n\t\tprint tab.get("entries")[i].get("url")'

##### put current directory in LAN quickly

   python  -m SimpleHTTPServer

##### python - covert image to base64 string for data URI use

   python  -c 'print open("path/to/image.png", "rb").read().encode("base64").replace("\n","")'

##### convert ascii string to hex

   python  -c 'print "hello".encode("hex")'

##### retrieve the source address used to contact a given host

   python  -c 'import socket;  s = socket.socket(socket.AF_INET, socket.SOCK_STREAM); s.connect(("<hostname>", <port>)); print s.getsockname()[0] ; s.close() ;' 2> /dev/null

##### Print all commands of a user on commandlinefu.com

   python  -c "import requests; from bs4 import BeautifulSoup; print '\n'.join([cmd.text for cmd in BeautifulSoup(requests.get('http://www.commandlinefu.com/commands/by/${USER}').content, 'html.parser').find_all('div','command')])"

##### Upgrade pip-installed python packages

   python  -c "import pip; print(' '.join([x.project_name for x in pip.get_installed_distributions()]))" | xargs sudo pip install -U

##### Generate a ZenCart-style MD5 password hash.

   python  -c 'p="SeCuR3PwD";import hashlib as h;s=h.md5(p).hexdigest()[:2];pw=h.md5(s+p).hexdigest();print pw+":"+s;'

##### Google URL shortener

   python  -c 'import googl; print googl.Googl("<your_google_api_key>").shorten("'$someurl'")[u"id"]'

##### python smtp server

   python  -m smtpd -n -c DebuggingServer localhost:1025

##### Generate random valid mac addresses

   python  -c "from itertools import imap; from random import randint; print ':'.join(['%02x'%x for x in imap(lambda x:randint(0,255), range(6))])"

##### Command line calculator

   python  -ic "from __future__ import division; from math import *; from random import *"

##### switch case of a text file

   python 3 -c 'import sys; print(sys.stdin.read().swapcase(), end="")' <input.txt

##### Pretty Print a simple csv in the command line

   python  -c 'import sys,csv; c = csv.reader(sys.stdin); [sys.stdout.write("^M".join(map(repr,r))+"\n") for r in c];' <tmp/test.csv | column -s '^M' -t

##### An easter egg built into python to give you the Zen of Python

   python  -c 'import this'

##### Convert JSON to YAML (unicode safe)

   python  -c 'import sys, yaml, json; yaml.safe_dump(json.load(sys.stdin), sys.stdout, allow_unicode=True)' < foo.json > foo.yaml

##### Convert a string to

   python  -c "print 'this is a test'.title()"

##### Using scapy to get the IP of the iface used to contact local gw (i.e. supposed host IP)

   python  -c "import scapy.all; print [x[4] for x in scapy.all.conf.route.routes if x[2] != '0.0.0.0'][0]"

##### List all available python modules

   python  -c "help('modules')"

##### Serve current directory tree at http://localhost:8000

   python 3 -m http.server

##### Reverse string, encode into hex and divide in chunk of 32 bits.

   python  -c "s = '////bin/bash'; print [s[::-1].encode('hex')[i:i+8] for i in range(0, len(s[::-1].encode('hex')), 8)]"

##### Serve current directory tree on localhost port 8000 and then directly open in Firefox (Python 3 version)

   python 3 -m http.server & firefox http://$HOSTNAME:8000/

##### Compile python script. Generated file will overwrite anything at /path/to/script.pyc

   python  -c $(echo -e 'import py_compile\npy_compile.compile("/path/to/script.py")');

##### When need to compress the Zope Database

   python  fsrecovery.py -P 0 -f <path-to-instance>/Data.fs <path-to-instance-destination>/Data.fs.packed

##### Share the current tree over the web

   python  -c "import SimpleHTTPServer;SimpleHTTPServer.test()"

##### Slow Viber.exe wine process to 1% CPU with Python to split ps string and cpulimit

   python  -c "a='$(ps -u luke | grep Viber.exe)';b= a.split(' ')[1];import os;os.system('cpulimit -l 1 -p '+b)"

##### Print a row of 50 hyphens

   python  -c 'print "-"*50'

##### python one-liner to get the current week number

   python  -c 'import datetime; print(datetime.date.today().isocalendar()[1])'

##### convert from decimal to hexadecimal

   python  -c 'print hex(1337)'

##### Generate a random password using python and random lib.

   python  -c 'import random; print "".join([random.choice("abcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*-_=+") for i in range(10)])'

##### Print a row of 50 hyphens

   python  -c 'print "-" * 50'

##### Python: Quickly locate site-packages

   python  -c "from distutils.sysconfig import get_python_lib; print get_python_lib()"

##### Convert JSON to YAML

   python  -c 'import sys, yaml, json; yaml.safe_dump(json.load(sys.stdin), sys.stdout, default_flow_style=False)' < file.json > file.yaml
