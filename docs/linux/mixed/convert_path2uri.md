# convert_path2uri

##### Encode file path to URL

   convert_path2uri  () { echo -n 'file://'; echo -n "$1"  | perl -pe 's/([^a-zA-Z0-9_\/.])/sprintf("%%%.2x", ord($1))/eg'  ;}   #convert2uri '/tmp/a b'   ### convert file path to URI

##### Encode file path to URL

   convert_path2uri  () { echo -n 'file://'; echo -n "$1"  | perl -pe 's/([^a-zA-Z0-9_\/.])/sprintf("%%%.2x", ord($1))/eg'  ;}   #convert2uri '/tmp/a b'   ### convert file path to URI
