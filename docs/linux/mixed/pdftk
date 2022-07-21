# pdftk

##### pdfcount: get number of pages in a PDF file

   pdftk  file.pdf dump_data output | grep -i Num

##### pdfappend: append multiple pdf files

   pdftk  1.pdf 2.pdf cat output 12.pdf

##### pdftk append with handles

   pdftk  A=1.pdf B=2.pdf C=3.pdf cat C A output CA.pdf

##### Merge Two or More PDFs into a New Document

   pdftk  1.pdf 2.pdf 3.pdf cat output 123.pdf

##### split a multi-page PDF into separate files

   pdftk  in.pdf burst

##### split and combine different pages from different pdf's

   pdftk  A=chapters.pdf B=headings.pdf C=covers.pdf cat C1 B1 A1-7 B2 A8-10 C2 output book.pdf

##### Rotate a single page PDF by 180 degrees

   pdftk  in.pdf cat 1S output out.pdf

##### PDF simplex to duplex merge

   pdftk  A=odd.pdf B=even.pdf shuffle A1-end Bend-1S output duplex.pdf

##### Concating pdf files

   pdftk  inp1.pdf inp2.pdf inp3.pdf cat output out.pdf

##### Burst a Single PDF Document into Single Pages and Report its Data to doc_data.txt

   pdftk  mydoc.pdf burst

##### Merge several pdf files into a single file

   pdftk  $* cat output $merged.pdf

##### Merge various PDF files

   pdftk  first.pdf second.pdf cat output output.pdf

##### rotate a one page pdf to 90 Degrees Clockwise

   pdftk  pdfname.pdf cat 1E  output outputname.pdf

##### Merge Multiple PDFs

   pdftk  *.pdf cat output merged.pdf

##### merge pdf using  bash brace exansion

   pdftk   pg_000{1..9}.pdf  cat output MyFile.pdf

##### Rotate a pdf by 90 degrees CW

   pdftk  input.pdf cat 1-endE output output.pdf

##### remove password from pdf file

   pdftk  input.pdf output output.pdf user_pw YOURPASSWORD-HERE

##### Merge PDFs into single file

   pdftk  input1.pdf input2.pdf cat output output.pdf

##### Take a PDF with form fields and create a flattened PDF that will print properly

   pdftk  fill_me_in.pdf output no_thanks.pdf flatten

##### To rotate all PDF pages clockwise:

   pdftk  in.pdf cat 1-endeast output out.pdf

##### Merge Two or More PDFs into a New Document

   pdftk  1.pdf 2.pdf 3.pdf cat output 123.pdf

##### split a multi-page PDF into separate files

   pdftk  in.pdf burst

##### split and combine different pages from different pdf's

   pdftk  A=chapters.pdf B=headings.pdf C=covers.pdf cat C1 B1 A1-7 B2 A8-10 C2 output book.pdf

##### Rotate a single page PDF by 180 degrees

   pdftk  in.pdf cat 1S output out.pdf

##### PDF simplex to duplex merge

   pdftk  A=odd.pdf B=even.pdf shuffle A1-end Bend-1S output duplex.pdf

##### Concating pdf files

   pdftk  inp1.pdf inp2.pdf inp3.pdf cat output out.pdf

##### Burst a Single PDF Document into Single Pages and Report its Data to doc_data.txt

   pdftk  mydoc.pdf burst

##### Merge several pdf files into a single file

   pdftk  $* cat output $merged.pdf

##### Merge various PDF files

   pdftk  first.pdf second.pdf cat output output.pdf

##### rotate a one page pdf to 90 Degrees Clockwise

   pdftk  pdfname.pdf cat 1E  output outputname.pdf

##### Merge Multiple PDFs

   pdftk  *.pdf cat output merged.pdf

##### merge pdf using  bash brace exansion

   pdftk   pg_000{1..9}.pdf  cat output MyFile.pdf

##### Rotate a pdf by 90 degrees CW

   pdftk  input.pdf cat 1-endE output output.pdf

##### remove password from pdf file

   pdftk  input.pdf output output.pdf user_pw YOURPASSWORD-HERE

##### Merge PDFs into single file

   pdftk  input1.pdf input2.pdf cat output output.pdf

##### Take a PDF with form fields and create a flattened PDF that will print properly

   pdftk  fill_me_in.pdf output no_thanks.pdf flatten
