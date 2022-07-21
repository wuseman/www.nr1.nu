# ldd

##### Check executable shared library usage

   ldd  `which executable_program`

##### print shared library dependencies

   ldd  path_to_executable

##### List the libraries used by an application

   ldd  /bin/bash | awk 'BEGIN{ORS=","}$1~/^\//{print $1}$3~/^\//{print $3}' | sed 's/,$/\n/'

##### Check executable shared library usage

   ldd  <executable binary>

##### Copy all shared libraries for a binary to directory

   ldd  file | grep "=> /" | awk '{print $3}' | xargs -I '{}' cp -v '{}' /destination

##### List the libraries used by an application

   ldd  /bin/bash | awk 'BEGIN{ORS=","}$1~/^\//{print $1}$3~/^\//{print $3}' | sed 's/,$/\n/'

##### Check executable shared library usage

   ldd  <executable binary>

##### Copy all shared libraries for a binary to directory

   ldd  file | grep "=> /" | awk '{print $3}' | xargs -I '{}' cp -v '{}' /destination
