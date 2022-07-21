# chmod

##### Makes the permissions of file2 the same as file1

   chmod  reference file1 file2

##### Makes the permissions of file2 the same as file1

   chmod  reference file1 file2

##### Remove executable bit from all files in the current directory recursively, excluding other directories, firm permissions

   chmod  -R u=rw-x+X,g=r-x+X,o= .

##### Reconstruct standard permissions for directories and files in current directory

   chmod  -R u=rwX,go=rX .

##### Chmod all directories (excluding files)

   chmod  755 $(find public_html -type d)

##### Make a python file executable

   chmod  +x myfile.py

##### chmod - change file permissions of a file to be similar of another

   chmod  reference=file1 file2

##### Make FILES executable

   chmod  +x FILES

##### Apply permissions only to files

   chmod  644 $(find . -type f)

##### Recursive chmod all files and directories within the current directory

   chmod  -R 774 .

##### Reconstruct standard permissions for directories and files in current directory

   chmod  -R u=rwX,g=rX,o=rX .

##### Remove executable bit from all files in the current directory recursively, excluding other directories

   chmod  -R -x+X *

##### Recursive chmod all *.sh files within the current directory

   chmod  u+x **/*.sh

##### File permissions

   chmod  777 -R <filename>

##### Makes the permissions of file2 the same as file1

   chmod  reference file1 file2

##### chmod - change file permissions of a file to be similar of another

   chmod  reference=file1 file2

##### Apply permissions only to files

   chmod  644 $(find . -type f)

##### Recursive chmod all files and directories within the current directory

   chmod  -R 774 .

##### Reconstruct standard permissions for directories and files in current directory

   chmod  -R u=rwX,g=rX,o=rX .

##### Remove executable bit from all files in the current directory recursively, excluding other directories

   chmod  -R -x+X *

##### Recursive chmod all *.sh files within the current directory

   chmod  u+x **/*.sh
