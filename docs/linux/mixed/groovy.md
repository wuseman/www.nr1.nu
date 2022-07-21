# groovy

##### Print to standard output file paths different between SRC and DEST and replacing terms if needed

   groovy  -e "def output=args[0]; def terms = args[1].split(','); terms.each { it -> def keyValues = it.split(':'); output = output.replaceAll(keyValues[0],keyValues[1]); } println output;" "`diff -rq . SRC DEST`" "old1:new1,old2:new2"

##### encode a text to url_encoded format

   groovy  -e 'println URLEncoder.encode("Some text")'
