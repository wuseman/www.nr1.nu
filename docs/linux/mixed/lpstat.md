# lpstat

##### Removes all existing printers

   lpstat  -p | cut -d' ' -f2 | xargs -I{} lpadmin -x {}

##### Removes all existing printers

   lpstat  -p | cut -d' ' -f2 | xargs -I{} lpadmin -x {}
