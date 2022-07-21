# convert

##### Convert high resolution JPEG for web publication

   convert  /home/user/file.jpg -resize 800x533 -strip -quality 80 -interlace line /home/user/web_file.jpg

##### save command output to image

   convert  label:"$(ifconfig)" output.png

##### Convert a pdf image to a high-quality PNG

   convert  -density 300 -trim image.pdf -quality 100 image.png

##### Split an image in half for use on dual screens (mostly for use under KDE which treats each screen separately)

   convert  yourdoublewideimage.jpg -crop 50%x100% +repage output.jpg

##### Reducing image size

   convert  -quality 40% original_image reduced_image

##### Reducing image size

   convert  example.png -resize 100x100 output.png

##### draw 45deg rotated text at the center of image

   convert  input.png -pointsize 32 -gravity center -annotate 45 "hello, world" output.png

##### Add a 1 pixel padding around an image.

   convert  -bordercolor Transparent -border 1x1 in.png out.png

##### Convert images to a multi-page pdf

   convert  -adjoin -page A4 *.jpeg multipage.pdf

##### Add a shadow to picture

   convert  {$file_in} \( +clone -background black -shadow 60x5+10+10 \) +swap -background none -layers merge +repage  {$file_out}

##### Make a thumbnail image of first page of a PDF.

   convert  -resize 200 -sharpen 40 some_file.pdf[0] some_file.jpg

##### Convert images (jpg, png, ...) into a PDF

   convert  images*.* <my_pdf>.pdf

##### convert pdf to graphic file format (jpg , png , tiff ... )

   convert  sample.pdf sample.jpg

##### create thumbnail of pdf

   convert  -resize 200 awk.pdf[0] awk.png

##### Create black and white image

   convert  -colorspace gray face.jpg gray_face.jpg

##### Scale,Rotate, brightness, contrast,...with Image Magick

   convert  -rotate $rotate -scale $Widthx$Height -modulate $brightness -contrast $contrast -colorize $red%,$green%,$blue% $filter file_in.png file_out.png

##### Create a single PDF from multiple images with ImageMagick

   convert  *.jpg output.pdf

##### Convert your favorite image in xpm for using in grub

   convert  image123.png -colors 14 -resize 640x480 grubimg.xpm

##### Prepare B&W scans for clean looking, searchable PDF

   convert  pagexxx.png -filter Cubic -resize 200% -threshold 50% -compress Group4 pagexxx.tiff; tiff2pdf -z -p letter -ro -x 1200 -y 1200 -o pagexxx.pdf pagexxx.tiff

##### Convert a single-page PDF to a hi-res PNG, at 300dpi

   convert  -density 300x300 input.pdf output.png

##### Replaces a color in a PDF document, useful for removing a dark background before printing.

   convert  -density 300 input.pdf -fill "rgb(255,255,255)" -opaque "rgb(0,0,0)" output.pdf

##### Separates each frame of a animated gif file to a counted file, then appends the frames together into one sheet file. Useful for making sprite sheets for games.

   convert  +adjoin animatedImage.gif test.gif ; convert +append test*.gif

##### Compare / diff two images

   convert  image1 image2 -resize '400x300!' MIFF:- | compare -metric AE -fuzz '10%' - null:

##### Generate a (compressed) pdf from images

   convert  -compress jpeg *.jpg mydoc.pdf

##### resize(1/2) the image using imagemagick

   convert  -resize 50%x50% image{,_resize}.jpg

##### Add calendar to desktop wallpaper

   convert  -font -misc-fixed-*-*-*-*-*-*-*-*-*-*-*-* -fill black -draw "text 270,260 \" `cal` \"" testpic.jpg newtestpic.jpg

##### Extracts PDF pages as images

   convert  in.pdf out.jpg

##### Create a favicon

   convert  -colors 256 -resize 16x16 face.jpg face.ppm && ppmtowinicon -output favicon.ico face.ppm

##### Reducing image size

   convert  example.png -resize 100x100! output.png

##### create a colorful &#30000; image

   convert  -size 32x32 \( xc:red xc:green +append \) \( xc:yellow xc:blue +append \) -append output.png

##### Resize an image to at least a specific resolution

   convert  -resize '1024x600^' image.jpg small-image.jpg

##### drill holes on image

   convert  -size 20x20 xc:white -fill black -draw "circle 10,10 14,14" miff:- | composite -tile - input.png -compose over miff:- | composite - input.png -compose copyopacity output.png

##### Encode file path to URL

   convert _path2uri () { echo -n 'file://'; echo -n "$1"  | perl -pe 's/([^a-zA-Z0-9_\/.])/sprintf("%%%.2x", ord($1))/eg'  ;}   #convert2uri '/tmp/a b'   ### convert file path to URI

##### mean color of an image

   convert  image.jpg  -resize 1x1 txt: | tail -1 | awk '{gsub(/[,\)]/," "); print $3+$4+$5}'

##### convert several jpg into one pdf file

   convert  *.jpg File_Output.pdf

##### Text to image with transparent background

   convert   -background none -pointsize 55  label:"`whoami`" me.png

##### Convert CMYK PSD (Photoshop) file to RGBA

   convert  <input.psd> -channel RGBA -alpha Set -colorspace rgb <output.png>

##### replace part of image with cropped part of source

   convert  destination.png \( source.png -crop 120x300+650+75 +repage \) -gravity NorthWest -geometry +650+75 -compose copy -composite OUTPUT.png

##### convert to jpg while keeping the file name

   convert  a.jpg png:a.jpg

##### resize canvas of image and fill it with transparence

   convert  input.png -gravity NorthWest -background transparent -extent 720x200  output.png

##### Convert multiple images to multi page PDF (with specific page order)

   convert  {1..12}.png MyMultiPageFile.pdf

##### Create a 1280x720 color plasma image. Different each time.

   convert  -size 1280x720 plasma:fractal background.png

##### make image semi-transparent

   convert  input.png -alpha set -channel A -fx 0.5 output.png

##### Create a new image with specified size and bg color

   convert  -size 100x100 xc:grey nopic100_100.jpg

##### crop google's icons

   convert  -crop 32x33 +repage http://code.google.com/more/more-sprite.png icon.png

##### add border to image

   convert  input.png -mattecolor gold -frame 10x10+5+5 output.png

##### remove border of image

   convert  input.png -shave 10x10 output.png

##### grayscale image

   convert  input.png -colorspace Gray output.png

##### XKCD "now" wallpaper (http://xkcd.com/now)

   convert  http://imgs.xkcd.com/comics/now.png -negate /tmp/now.png ; DISPLAY=:0.0 awsetbg -c /tmp/now.png

##### Convert several JPEG files to PDF

   convert  *.jpeg output.pdf

##### Command line invocation of ImageMagick to resize a file

   convert  panorama_rainbow_2005.jpg -resize 40% panorama_rainbow_compress.jpg

##### make image semi-transparent

   convert  input.png -alpha set -channel A -fx 0.5 output.png

##### OCR a pdf file with tesseract and ImageMagick

   convert  -density 300 INPUTFILENAME.pdf tmp.tif && tesseract -psm 1 -l "eng" tmp.tif OUTPUTFILENAME pdf && rm tmp.tif

##### Convert multi layered TIFF file to multi page PDF document

   convert  multi_layer.tif -compress jpg multi_page.pdf

##### Convert red-cyan 3D anaglyph to side-by-side

   convert  infile.png \( +clone -channel GB -evaluate set 0 +channel \) +append -region 50%x100% -channel R -evaluate set 0 +channel outfile.png

##### Convert images to a multi-page pdf

   convert  -adjoin -page A4 *.jpeg multipage.pdf

##### Add a shadow to picture

   convert  {$file_in} \( +clone -background black -shadow 60x5+10+10 \) +swap -background none -layers merge +repage  {$file_out}

##### Make a thumbnail image of first page of a PDF.

   convert  -resize 200 -sharpen 40 some_file.pdf[0] some_file.jpg

##### Convert images (jpg, png, ...) into a PDF

   convert  images*.* <my_pdf>.pdf

##### convert pdf to graphic file format (jpg , png , tiff ... )

   convert  sample.pdf sample.jpg

##### create thumbnail of pdf

   convert  -resize 200 awk.pdf[0] awk.png

##### Create black and white image

   convert  -colorspace gray face.jpg gray_face.jpg

##### Scale,Rotate, brightness, contrast,...with Image Magick

   convert  -rotate $rotate -scale $Widthx$Height -modulate $brightness -contrast $contrast -colorize $red%,$green%,$blue% $filter file_in.png file_out.png

##### Create a single PDF from multiple images with ImageMagick

   convert  *.jpg output.pdf

##### Convert your favorite image in xpm for using in grub

   convert  image123.png -colors 14 -resize 640x480 grubimg.xpm

##### Prepare B&W scans for clean looking, searchable PDF

   convert  pagexxx.png -filter Cubic -resize 200% -threshold 50% -compress Group4 pagexxx.tiff; tiff2pdf -z -p letter -ro -x 1200 -y 1200 -o pagexxx.pdf pagexxx.tiff

##### Convert a single-page PDF to a hi-res PNG, at 300dpi

   convert  -density 300x300 input.pdf output.png

##### Replaces a color in a PDF document, useful for removing a dark background before printing.

   convert  -density 300 input.pdf -fill "rgb(255,255,255)" -opaque "rgb(0,0,0)" output.pdf

##### Separates each frame of a animated gif file to a counted file, then appends the frames together into one sheet file. Useful for making sprite sheets for games.

   convert  +adjoin animatedImage.gif test.gif ; convert +append test*.gif

##### Compare / diff two images

   convert  image1 image2 -resize '400x300!' MIFF:- | compare -metric AE -fuzz '10%' - null:

##### Generate a (compressed) pdf from images

   convert  -compress jpeg *.jpg mydoc.pdf

##### resize(1/2) the image using imagemagick

   convert  -resize 50%x50% image{,_resize}.jpg

##### Add calendar to desktop wallpaper

   convert  -font -misc-fixed-*-*-*-*-*-*-*-*-*-*-*-* -fill black -draw "text 270,260 \" `cal` \"" testpic.jpg newtestpic.jpg

##### Extracts PDF pages as images

   convert  in.pdf out.jpg

##### Create a favicon

   convert  -colors 256 -resize 16x16 face.jpg face.ppm && ppmtowinicon -output favicon.ico face.ppm

##### Reducing image size

   convert  example.png -resize 100x100! output.png

##### create a colorful &#30000; image

   convert  -size 32x32 \( xc:red xc:green +append \) \( xc:yellow xc:blue +append \) -append output.png

##### Resize an image to at least a specific resolution

   convert  -resize '1024x600^' image.jpg small-image.jpg

##### drill holes on image

   convert  -size 20x20 xc:white -fill black -draw "circle 10,10 14,14" miff:- | composite -tile - input.png -compose over miff:- | composite - input.png -compose copyopacity output.png

##### Encode file path to URL

   convert _path2uri () { echo -n 'file://'; echo -n "$1"  | perl -pe 's/([^a-zA-Z0-9_\/.])/sprintf("%%%.2x", ord($1))/eg'  ;}   #convert2uri '/tmp/a b'   ### convert file path to URI

##### mean color of an image

   convert  image.jpg  -resize 1x1 txt: | tail -1 | awk '{gsub(/[,\)]/," "); print $3+$4+$5}'

##### convert several jpg into one pdf file

   convert  *.jpg File_Output.pdf

##### Text to image with transparent background

   convert   -background none -pointsize 55  label:"`whoami`" me.png

##### Convert CMYK PSD (Photoshop) file to RGBA

   convert  <input.psd> -channel RGBA -alpha Set -colorspace rgb <output.png>

##### replace part of image with cropped part of source

   convert  destination.png \( source.png -crop 120x300+650+75 +repage \) -gravity NorthWest -geometry +650+75 -compose copy -composite OUTPUT.png

##### convert to jpg while keeping the file name

   convert  a.jpg png:a.jpg

##### resize canvas of image and fill it with transparence

   convert  input.png -gravity NorthWest -background transparent -extent 720x200  output.png

##### Convert multiple images to multi page PDF (with specific page order)

   convert  {1..12}.png MyMultiPageFile.pdf

##### Create a 1280x720 color plasma image. Different each time.

   convert  -size 1280x720 plasma:fractal background.png

##### make image semi-transparent

   convert  input.png -alpha set -channel A -fx 0.5 output.png

##### Create a new image with specified size and bg color

   convert  -size 100x100 xc:grey nopic100_100.jpg

##### crop google's icons

   convert  -crop 32x33 +repage http://code.google.com/more/more-sprite.png icon.png

##### add border to image

   convert  input.png -mattecolor gold -frame 10x10+5+5 output.png

##### remove border of image

   convert  input.png -shave 10x10 output.png

##### grayscale image

   convert  input.png -colorspace Gray output.png

##### XKCD "now" wallpaper (http://xkcd.com/now)

   convert  http://imgs.xkcd.com/comics/now.png -negate /tmp/now.png ; DISPLAY=:0.0 awsetbg -c /tmp/now.png

##### make image semi-transparent

   convert  input.png -alpha set -channel A -fx 0.5 output.png
