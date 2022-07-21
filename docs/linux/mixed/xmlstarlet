# xmlstarlet

##### Terrorist threat level text

   xmlstarlet  sel net -t -o "Terrorist threat level: " -v //@CONDITION http://is.gd/wacQtQ

##### Insert an element into xml

   xmlstarlet  ed -s "/breakfast_menu/food" -t elem -n 'foo' -v "bar" simple.xml

##### Extract a IRC like chat log out of an Adium xml logfile

   xmlstarlet  sel -N x="http://purl.org/net/ulf/ns/0.4-02" -T -t -m "//x:message" -v "concat(substring(@time,12,5),' &lt; ',@sender,'&gt;', ' ',.)" -n

##### Remove comments in XML file

   xmlstarlet  ed -d '//comment()' $XML_FILE

##### Obtain last stock quote from google API with xmlstarlet

   xmlstarlet  sel net -t -m "//last" -v "@data" -n http://www.google.com/ig/api?stock=GOOG

##### Replace the content of an XML element

   xmlstarlet  ed -u '//food[calories="650"]/calories' -v "999" simple.xml

##### extract element of xml

   xmlstarlet  sel -t -v "/path/to/element" file.xml

##### Extract herds & maintainers' email from a Gentoo metadata.xml file

   xmlstarlet  sel -t -m '/pkgmetadata/herd' -v . -n -t -m '/pkgmetadata/maintainer' -v email metadata.xml

##### extract element of xml

   xmlstarlet  sel -t -c "/path/to/element" file.xml

##### Geo Weather

   xmlstarlet  fo "http://www.google.com/ig/api?weather=$(curl -s api.hostip.info/get_html.php?ip=$(curl -s icanhazip.com)... SEE SAMPLE OUTPUT

##### Insert an element into xml

   xmlstarlet  ed -s "/breakfast_menu/food" -t elem -n 'foo' -v "bar" simple.xml

##### Extract a IRC like chat log out of an Adium xml logfile

   xmlstarlet  sel -N x="http://purl.org/net/ulf/ns/0.4-02" -T -t -m "//x:message" -v "concat(substring(@time,12,5),' &lt; ',@sender,'&gt;', ' ',.)" -n

##### Remove comments in XML file

   xmlstarlet  ed -d '//comment()' $XML_FILE

##### Obtain last stock quote from google API with xmlstarlet

   xmlstarlet  sel net -t -m "//last" -v "@data" -n http://www.google.com/ig/api?stock=GOOG

##### Replace the content of an XML element

   xmlstarlet  ed -u '//food[calories="650"]/calories' -v "999" simple.xml

##### extract element of xml

   xmlstarlet  sel -t -v "/path/to/element" file.xml

##### Extract herds & maintainers' email from a Gentoo metadata.xml file

   xmlstarlet  sel -t -m '/pkgmetadata/herd' -v . -n -t -m '/pkgmetadata/maintainer' -v email metadata.xml

##### extract element of xml

   xmlstarlet  sel -t -c "/path/to/element" file.xml
