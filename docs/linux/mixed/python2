# python2

##### Stream (almost) any music track in mplayer

   python2  -c 'import urllib2 as u, sys as s, json as j, subprocess as p;p.call(["mplayer", u.urlopen(j.loads(u.urlopen("http://ex.fm/api/v3/song/search/%s" % "+".join(s.argv[1:])).read())["songs"][0]["url"]).geturl().split("#")[0]])' lenny kravitz fly away

##### Display the list of all opened tabs from Firefox via a python one-liner and a shell hack to deal with python indentation.

   python2  <<< $'import json\nf = open("sessionstore.js", "r")\njdata = json.loads(f.read())\nf.close()\nfor win in jdata.get("windows"):\n\tfor tab in win.get("tabs"):\n\t\ti = tab.get("index") - 1\n\t\tprint tab.get("entries")[i].get("url")'

##### Stream (almost) any music track in mplayer

   python2  -c 'import urllib2 as u, sys as s, json as j, subprocess as p;p.call(["mplayer", u.urlopen(j.loads(u.urlopen("http://ex.fm/api/v3/song/search/%s" % "+".join(s.argv[1:])).read())["songs"][0]["url"]).geturl().split("#")[0]])' lenny kravitz fly away

##### Display the list of all opened tabs from Firefox via a python one-liner and a shell hack to deal with python indentation.

   python2  <<< $'import json\nf = open("sessionstore.js", "r")\njdata = json.loads(f.read())\nf.close()\nfor win in jdata.get("windows"):\n\tfor tab in win.get("tabs"):\n\t\ti = tab.get("index") - 1\n\t\tprint tab.get("entries")[i].get("url")'
