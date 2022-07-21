# xml

##### validate xml in a shell script.

   xml proc_parse.python-xml &>/dev/null <FILE> || exit 1

##### encode/decode HTML entities

   xml 2asc < inputfile > outputfile

##### Terrorist threat level text

   xml starlet sel net -t -o "Terrorist threat level: " -v //@CONDITION http://is.gd/wacQtQ

##### Insert an element into xml

   xml starlet ed -s "/breakfast_menu/food" -t elem -n 'foo' -v "bar" simple.xml

##### Adding formatting to an xml document for easier reading

   xml lint format <filename> > <output file>

##### Extract a IRC like chat log out of an Adium xml logfile

   xml starlet sel -N x="http://purl.org/net/ulf/ns/0.4-02" -T -t -m "//x:message" -v "concat(substring(@time,12,5),' &lt; ',@sender,'&gt;', ' ',.)" -n

##### Remove comments in XML file

   xml starlet ed -d '//comment()' $XML_FILE

##### extract element of xml

   xml 2 < file.xml | grep ^/path/to/element | cut -f2- -d=

##### Prettify an XML file

   xml lint format xmlout nsclean <file>

##### Obtain last stock quote from google API with xmlstarlet

   xml starlet sel net -t -m "//last" -v "@data" -n http://www.google.com/ig/api?stock=GOOG

##### Replace the content of an XML element

   xml starlet ed -u '//food[calories="650"]/calories' -v "999" simple.xml

##### extract element of xml

   xml starlet sel -t -v "/path/to/element" file.xml

##### validate xml in a shell script using xmllint

   xml lint noout some.xml 2>&1 >/dev/null || exit 1

##### Highlight the plain text in XML (or HTML, SGML, etc)

   xml pager() { xmlindent "$@" | awk '{gsub(">",">'`tput setf 4`'"); gsub("<","'`tput sgr0`'<"); print;} END {print "'`tput sgr0`'"}' | less -r; }

##### Extract herds & maintainers' email from a Gentoo metadata.xml file

   xml starlet sel -t -m '/pkgmetadata/herd' -v . -n -t -m '/pkgmetadata/maintainer' -v email metadata.xml

##### fomat/encode/escape xml

   xml  fo -e utf-8 file.xml | xml esc

##### extract element of xml

   xml starlet sel -t -c "/path/to/element" file.xml

##### Geo Weather

   xml starlet fo "http://www.google.com/ig/api?weather=$(curl -s api.hostip.info/get_html.php?ip=$(curl -s icanhazip.com)... SEE SAMPLE OUTPUT

##### Insert an element into xml

   xml starlet ed -s "/breakfast_menu/food" -t elem -n 'foo' -v "bar" simple.xml

##### Adding formatting to an xml document for easier reading

   xml lint format <filename> > <output file>

##### Extract a IRC like chat log out of an Adium xml logfile

   xml starlet sel -N x="http://purl.org/net/ulf/ns/0.4-02" -T -t -m "//x:message" -v "concat(substring(@time,12,5),' &lt; ',@sender,'&gt;', ' ',.)" -n

##### Remove comments in XML file

   xml starlet ed -d '//comment()' $XML_FILE

##### extract element of xml

   xml 2 < file.xml | grep ^/path/to/element | cut -f2- -d=

##### Prettify an XML file

   xml lint format xmlout nsclean <file>

##### Obtain last stock quote from google API with xmlstarlet

   xml starlet sel net -t -m "//last" -v "@data" -n http://www.google.com/ig/api?stock=GOOG

##### Replace the content of an XML element

   xml starlet ed -u '//food[calories="650"]/calories' -v "999" simple.xml

##### extract element of xml

   xml starlet sel -t -v "/path/to/element" file.xml

##### validate xml in a shell script using xmllint

   xml lint noout some.xml 2>&1 >/dev/null || exit 1

##### Highlight the plain text in XML (or HTML, SGML, etc)

   xml pager() { xmlindent "$@" | awk '{gsub(">",">'`tput setf 4`'"); gsub("<","'`tput sgr0`'<"); print;} END {print "'`tput sgr0`'"}' | less -r; }

##### Extract herds & maintainers' email from a Gentoo metadata.xml file

   xml starlet sel -t -m '/pkgmetadata/herd' -v . -n -t -m '/pkgmetadata/maintainer' -v email metadata.xml

##### extract element of xml

   xml starlet sel -t -c "/path/to/element" file.xml
