# fdupes

##### find duplicate files in a directory and choose which one to delete

   fdupes  DIRECTORY/ -r -d

##### Replace duplicate files by hardlinks

   fdupes  -r -1 path | while read line; do j="0"; for file in ${line[*]}; do if [ "$j" == "0" ]; then j="1"; else sudo ln -f ${line// .*/} $file; fi; done; done

##### delete duplicate files

   fdupes  -rdN $folder

##### Replace duplicate files by hardlinks

   fdupes  -r -1 path | while read line; do j="0"; for file in ${line[*]}; do if [ "$j" == "0" ]; then j="1"; else ln -f ${line// .*/} $file; fi; done; done

##### Find Duplicate Files (based on size first, then MD5 hash)

   fdupes  -r .

##### Replace duplicate files by hardlinks

   fdupes  -r -1 Neu | while read line; do j="0"; buf=""; for file in ${line[*]}; do if [ "$j" == "0" ]; then j="1"; buf=$file; else ln -f $buf $file; fi; done; done

##### Replace duplicate files by hardlinks

   fdupes  -R -1 path | while read -r line; do (echo $line | xargs -n 1 | (first="true"; firstfile=""; while read file; do if [ "$first" == "true" ]; then first="false"; firstfile=$file; else ln force "$firstfile" "$file"; fi; done)); done

##### Replace duplicate files by hardlinks

   fdupes  -r -1 path | while read line; do j="0"; for file in ${line[*]}; do if [ "$j" == "0" ]; then j="1"; else ln -f ${line// .*/} $file; fi; done; done

##### Find Duplicate Files (based on size first, then MD5 hash)

   fdupes  -r .

##### Replace duplicate files by hardlinks

   fdupes  -r -1 Neu | while read line; do j="0"; buf=""; for file in ${line[*]}; do if [ "$j" == "0" ]; then j="1"; buf=$file; else ln -f $buf $file; fi; done; done

##### Replace duplicate files by hardlinks

   fdupes  -R -1 path | while read -r line; do (echo $line | xargs -n 1 | (first="true"; firstfile=""; while read file; do if [ "$first" == "true" ]; then first="false"; firstfile=$file; else ln force "$firstfile" "$file"; fi; done)); done
