# svn_find

##### bash function for convenient 'find' in subversion working directories

   svn_find  () { local a=$1; shift; find $a -not \( -name .svn -prune \) $*; }

##### bash function for convenient 'find' in subversion working directories

   svn_find  () { local a=$1; shift; find $a -not \( -name .svn -prune \) $*; }
