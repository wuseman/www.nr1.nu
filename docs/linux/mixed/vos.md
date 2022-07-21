# vos

##### Display list of locked AFS volumes (if any)

   vos  listvldb | agrep LOCKED -d RWrite | grep RWrite: | awk -F: '{print $2}' | awk '{printf("%s ",$1)} END {printf("\n")}'
