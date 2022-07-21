# pdfinfo

##### Get pages number of the pdf file

   pdfinfo  Virtualization_A_Beginner_Guide.pdf | awk /Pages/

##### pdfcount: get number of pages in a PDF file

   pdfinfo  file.pdf | grep "^Pages: *[0-9]\+$" | sed 's/.* //'

##### Get pages number of the pdf file

   pdfinfo  Virtualization_A_Beginner_Guide.pdf | awk /Pages/

##### pdfcount: get number of pages in a PDF file

   pdfinfo  file.pdf | grep "^Pages: *[0-9]\+$" | sed 's/.* //'
