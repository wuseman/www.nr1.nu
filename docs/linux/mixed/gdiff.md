# gdiff

##### Using gdiff only select lines that are common between two files

   gdiff  unified=10000 input.file1 inpute.file2 | egrep -v "(^\+[a-z]|^\-[a-z])"| sort > outputfile.sorted
