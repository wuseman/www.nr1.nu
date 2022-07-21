# gs

##### Reset the favorite-scopes on the Ubuntu Phone

   gs ettings reset com.canonical.Unity.Dash favorite-scopes

##### extract links from a google results page saved as a file

   gs ed -e :a -e 's/\(<\/[^>]*>\)/\1\n/g;s/\(<br>\)/\1\n/g' page2.txt | sed -n '/<cite>/p;s/<cite>\(.*\)<\/cite>/\1/g' >> output

##### Enable V4l2 Webcams

   gs t-launch v4l2src

##### Merge only certain pdfs in a directory

   gs  -dNOPAUSE -sDEVICE=pdfwrite -sOUTPUTFILE=merged.pdf -dBATCH `ls | grep foo`

##### Capture  screen and default audio input device and generate an incompress AVI file

   gs t-launch avimux name=mux ! filesink location=out.avi \ alsasrc ! audioconvert ! queue ! mux. istximagesrc name=videosource use-damage=false ! video/x-raw-rgb,framerate=10/1 ! videorate ! ffmpegcolorspace ! video/x-raw-yuv,framerate=10/1 ! mux.

##### Merge PDFs into single file

   gs  -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=output.pdf input1.pdf input2.pdf ...

##### webcam player in ascii art

   gs t-launch v4l2src ! aasink

##### Play random playlist

   gs t123 -z **/*

##### Extracting a range of pages from a PDF, using GhostScript

   gs  -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER -dFirstPage=14 -dLastPage=17 -sOutputFile=OUTPUT.pdf ORIGINAL.pdf

##### Merge several pdf files into a single file

   gs  -q -sPAPERSIZE=a4 -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=out.pdf a.pdf b.pdf c.pdf

##### split a multi-page PDF into separate files

   gs  -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -dFirstPage=2 -dLastPage=2 -sOutputFile=page2.pdf multipageinputfile.pdf

##### Remove security limitations from PDF documents using ghostscript (for Windows)

   gs win32c  -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite  -sFONTPATH=%windir%/fonts;xfonts;. -sPDFPassword= -dPDFSETTINGS=/prepress -dPassThroughJPEGImages=true -sOutputFile=OUTPUT.pdf  INPUT.pdf

##### Change Random Wallpaper on Gnome 3

   gs ettings set org.gnome.desktop.background picture-uri file://"$(find ~/Wallpapers -type f | shuf -n1)"

##### Optimize Xsane PDFs

   gs  -q -sPAPERSIZE=a4 -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=test.pdf multipageproject.pdf

##### View webcam output using GStreamer pipeline

   gs t-launch-0.10 autovideosrc ! video/x-raw-yuv,framerate=\(fraction\)30/1,width=640,height=480 ! ffmpegcolorspace ! autovideosink

##### convert pdf into multiple png files

   gs  -sDEVICE=pngalpha -sOutputFile=<filename>%d.png -r<resolution> <pdffile>

##### Convert PDF to JPEG using Ghostscript

   gs  -dNOPAUSE -sDEVICE=jpeg -r144 -sOutputFile=p%03d.jpg file.pdf

##### Reduce PDF size

   gs  -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=output.pdf input.pdf

##### Remove embedded fonts from a pdf.

   gs  -sDEVICE=pswrite -sOutputFile=- -q -dNOPAUSE With-Fonts.pdf -c quit | ps2pdf - > No-Fonts.pdf

##### Change gnome-shell wallpaper

   gs ettings set org.gnome.desktop.background picture-uri 'file://<path-to-image>'

##### Merge *.pdf files

   gs  -q -sPAPERSIZE=letter -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=out.pdf `ls *.pdf`

##### Open current wallpaper on nautilus file-manager (change file-manager name for others)

   gs ettings get org.gnome.desktop.background picture-uri | xargs nautilus

##### Display icons in Desktop Gnome 3 of Fedora

   gs ettings set org.gnome.desktop.background show-desktop-icons true

##### Optimize PDF documents

   gs  -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=output.pdf input.pdf

##### Remove security limitations from PDF documents using ghostscript

   gs  -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=OUTPUT.pdf -c .setpdfwrite -f INPUT.pdf

##### Remove security limitations from PDF documents using ghostscript

   gs  -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=OUTPUT.pdf -c .setpdfwrite -f INPUT.pdf

##### Merge various PDF files

   gs  -dNOPAUSE -sDEVICE=pdfwrite -sOUTPUTFILE=output.pdf -dBATCH first.pdf second.pdf

##### Compress PDF

   gs  -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=output.pdf input.pdf

##### Concating pdf files

   gs  -q -sPAPERSIZE=a4 -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=out.pdf 1.pdf 2.pdf 3.pdf 4.pdf

##### Convert PDFLaTeX PDF to Illustrator-usable EPS

   gs  -dNOCACHE -dNOPAUSE -dBATCH -dSAFER -sDEVICE=epswrite -dEPSCrop -sOutputFile=out.eps in.pdf

##### warped and shagadelic webcam view with gstreamer

   gs t-launch-0.10 v4l2src ! ffmpegcolorspace ! warptv ! ffmpegcolorspace ! autovideosink

##### Merge PDFs into single file

   gs  -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=output.pdf input1.pdf input2.pdf ...

##### Extracting a range of pages from a PDF, using GhostScript

   gs  -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER -dFirstPage=14 -dLastPage=17 -sOutputFile=OUTPUT.pdf ORIGINAL.pdf

##### Merge several pdf files into a single file

   gs  -q -sPAPERSIZE=a4 -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=out.pdf a.pdf b.pdf c.pdf

##### split a multi-page PDF into separate files

   gs  -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -dFirstPage=2 -dLastPage=2 -sOutputFile=page2.pdf multipageinputfile.pdf

##### Remove security limitations from PDF documents using ghostscript (for Windows)

   gs win32c  -dSAFER -dBATCH -dNOPAUSE -sDEVICE=pdfwrite  -sFONTPATH=%windir%/fonts;xfonts;. -sPDFPassword= -dPDFSETTINGS=/prepress -dPassThroughJPEGImages=true -sOutputFile=OUTPUT.pdf  INPUT.pdf

##### Change Random Wallpaper on Gnome 3

   gs ettings set org.gnome.desktop.background picture-uri file://"$(find ~/Wallpapers -type f | shuf -n1)"

##### Optimize Xsane PDFs

   gs  -q -sPAPERSIZE=a4 -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=test.pdf multipageproject.pdf

##### View webcam output using GStreamer pipeline

   gs t-launch-0.10 autovideosrc ! video/x-raw-yuv,framerate=\(fraction\)30/1,width=640,height=480 ! ffmpegcolorspace ! autovideosink

##### convert pdf into multiple png files

   gs  -sDEVICE=pngalpha -sOutputFile=<filename>%d.png -r<resolution> <pdffile>

##### Convert PDF to JPEG using Ghostscript

   gs  -dNOPAUSE -sDEVICE=jpeg -r144 -sOutputFile=p%03d.jpg file.pdf

##### Reduce PDF size

   gs  -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=output.pdf input.pdf

##### Remove embedded fonts from a pdf.

   gs  -sDEVICE=pswrite -sOutputFile=- -q -dNOPAUSE With-Fonts.pdf -c quit | ps2pdf - > No-Fonts.pdf

##### Change gnome-shell wallpaper

   gs ettings set org.gnome.desktop.background picture-uri 'file://<path-to-image>'

##### Merge *.pdf files

   gs  -q -sPAPERSIZE=letter -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=out.pdf `ls *.pdf`

##### Open current wallpaper on nautilus file-manager (change file-manager name for others)

   gs ettings get org.gnome.desktop.background picture-uri | xargs nautilus

##### Display icons in Desktop Gnome 3 of Fedora

   gs ettings set org.gnome.desktop.background show-desktop-icons true

##### Optimize PDF documents

   gs  -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=output.pdf input.pdf

##### Remove security limitations from PDF documents using ghostscript

   gs  -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=OUTPUT.pdf -c .setpdfwrite -f INPUT.pdf

##### Merge various PDF files

   gs  -dNOPAUSE -sDEVICE=pdfwrite -sOUTPUTFILE=output.pdf -dBATCH first.pdf second.pdf

##### Compress PDF

   gs  -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=output.pdf input.pdf

##### Concating pdf files

   gs  -q -sPAPERSIZE=a4 -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=out.pdf 1.pdf 2.pdf 3.pdf 4.pdf
