# enscript

##### create pdf files from text files or stdout.

   enscript  jrandom.txt -o - | ps2pdf - ~/tmp/jrandom.pdf  (from file) or: ls | enscript -o - | ps2pdf - ~/tmp/ls.pdf (from stdout)

##### Convert the output of one or more (log, source code ...) files into html,

   enscript  -E color -t "title" -w html toc -p /PATH/to/output.html /var/log/*log

##### print code 3-up and syntax-highlighted for easy beach-time study

   enscript  -E -B -3 -r -s 0 borders -fCourier4.8 mark-wrapped-lines=arrow

##### Add page numbers to a PDF

   enscript  -L1 -b'||Page $% of $=' -o- < <(for i in $(seq "$(pdftk "$1" dump_data | grep "Num" | cut -d":" -f2)"); do echo; done) | ps2pdf - | pdftk "$1" multistamp - output "${1%.pdf}-header.pdf"

##### create pdf files from text files or stdout.

   enscript  jrandom.txt -o - | ps2pdf - ~/tmp/jrandom.pdf  (from file) or: ls | enscript -o - | ps2pdf - ~/tmp/ls.pdf (from stdout)

##### Convert the output of one or more (log, source code ...) files into html,

   enscript  -E color -t "title" -w html toc -p /PATH/to/output.html /var/log/*log

##### print code 3-up and syntax-highlighted for easy beach-time study

   enscript  -E -B -3 -r -s 0 borders -fCourier4.8 mark-wrapped-lines=arrow

##### Add page numbers to a PDF

   enscript  -L1 -b'||Page $% of $=' -o- < <(for i in $(seq "$(pdftk "$1" dump_data | grep "Num" | cut -d":" -f2)"); do echo; done) | ps2pdf - | pdftk "$1" multistamp - output "${1%.pdf}-header.pdf"
