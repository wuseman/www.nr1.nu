# shred

##### Delete a file securely by overwriting its contents

   shred  -v filename

##### How to secure delete a file

   shred  -u -z -n 17 rubricasegreta.txt

##### Securely destroy data (including whole hard disks)

   shred  targetfile

##### Safe Delete

   shred  -n33 -zx file; rm file

##### Completly blank a disk

   shred  iterations=N /dev/sdaX

##### securely overwrite a file with random junk, rename it to clear the directory entry and finally delete it

   shred  -vzu /tmp/junk-file-to-be-shredded

##### How to secure delete a file

   shred  -u -z -n 17 rubricasegreta.txt

##### Securely destroy data (including whole hard disks)

   shred  targetfile

##### Safe Delete

   shred  -n33 -zx file; rm file

##### Completly blank a disk

   shred  iterations=N /dev/sdaX

##### securely overwrite a file with random junk, rename it to clear the directory entry and finally delete it

   shred  -vzu /tmp/junk-file-to-be-shredded
