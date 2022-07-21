# cdrdao

##### Ripping VCD in Linux

   cdrdao  read-cd device ATA:1,1,0 driver generic-mmc-raw read-raw image.toc

##### Rips CDs (Playstation, etc.) and names the files the same as the volume name

   cdrdao  read-cd read-raw datafile "`volname /dev/hdc | sed 's/[ ^t]*$//'`".bin device ATAPI:0,0,0 driver generic-mmc-raw "`volname /dev/hdc | sed 's/[ ^t]*$//'`".toc

##### Ripping VCD in Linux

   cdrdao  read-cd device ATA:1,1,0 driver generic-mmc-raw read-raw image.toc

##### Rips CDs (Playstation, etc.) and names the files the same as the volume name

   cdrdao  read-cd read-raw datafile "`volname /dev/hdc | sed 's/[ ^t]*$//'`".bin device ATAPI:0,0,0 driver generic-mmc-raw "`volname /dev/hdc | sed 's/[ ^t]*$//'`".toc
