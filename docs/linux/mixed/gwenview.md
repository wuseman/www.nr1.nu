# gwenview

##### View the newest xkcd comic.

   gwenview  `wget -O - http://xkcd.com/ | grep 'png' | grep '<img src="http://imgs.xkcd.com/comics/' | sed s/title=\".*//g | sed 's/.png\"/.png/g' | sed 's/<img src=\"//g'`
