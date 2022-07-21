# translate

##### Google Translate

   translate () { lng1="$1";lng2="$2";shift;shift; wget -qO- "http://ajax.googleapis.com/ajax/services/language/translate?v=1.0&q=${@// /+}&langpair=$lng1|$lng2" | sed 's/.*"translatedText":"\([^"]*\)".*}/\1\n/'; }

##### Google Translate

   translate  () {lang="ru"; text=`echo $* | sed 's/ /%20/g'`; curl -s -A "Mozilla/5.0" "http://translate.google.com/translate_a/t?client=t&text=$text&sl=auto&tl=$lang" | sed 's/\[\[\[\"//' | cut -d \" -f 1}

##### Google Translate

   translate (){ wget -qO- "http://ajax.googleapis.com/ajax/services/language/translate?v=1.0&q=$1&langpair=$2|${3:-en}" | sed 's/.*"translatedText":"\([^"]*\)".*}/\1\n/'; }

##### Google Translate

   translate (){ wget -qO- "http://ajax.googleapis.com/ajax/services/language/translate?v=1.0&q=$1&langpair=$2|${3:-en}" | sed 's/.*"translatedText":"\([^"]*\)".*}/\1\n/'; }

##### translate with google, get all translations

   translate () { echo $1: $(wget -q -O - 'http://www.google.de/dictionary?source=translation&q='$1'&langpair=en|de' | grep '^<span class="dct-tt">.*</span>$' | sed 's!<span class="dct-tt">\(.*\)</span>!\1, !'); }

##### Google Translate

   translate (){wget -U "Mozilla/5.0" -qO - "https://translate.google.com/translate_a/single?client=t&sl=${3:-auto}&tl=${2:-en}&dt=t&q=$1" | cut -d'"' -f2}

##### Google Translate

   translate () { lng1="$1";lng2="$2";shift;shift; wget -qO- "http://ajax.googleapis.com/ajax/services/language/translate?v=1.0&q=${@// /+}&langpair=$lng1|$lng2" | sed 's/.*"translatedText":"\([^"]*\)".*}/\1\n/'; }

##### Google Translate

   translate (){ wget -qO- "http://ajax.googleapis.com/ajax/services/language/translate?v=1.0&q=$1&langpair=$2|${3:-en}" | sed 's/.*"translatedText":"\([^"]*\)".*}/\1\n/'; }

##### translate with google, get all translations

   translate () { echo $1: $(wget -q -O - 'http://www.google.de/dictionary?source=translation&q='$1'&langpair=en|de' | grep '^<span class="dct-tt">.*</span>$' | sed 's!<span class="dct-tt">\(.*\)</span>!\1, !'); }

##### Google Translate

   translate (){wget -U "Mozilla/5.0" -qO - "https://translate.google.com/translate_a/single?client=t&sl=${3:-auto}&tl=${2:-en}&dt=t&q=$1" | cut -d'"' -f2}
