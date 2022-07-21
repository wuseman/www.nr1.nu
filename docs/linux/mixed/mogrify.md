# mogrify

##### Batch resize images (overwriting)

   mogrify  -resize 852x480 ./*.png

##### Resize all images in folder

   mogrify  -resize 25% *.jpg

##### Make color transparent

   mogrify  -path ../png_transparent/ -fuzz 3.4% -transparent "#50566b" *.png

##### replace color in image sequence

   mogrify  -path ../png_white/ -fuzz 3.5% -fill white -opaque "#50566b" *.png

##### use ImageMagik to convert tint (hue rotation) of an icon set directory.

   mogrify  -modulate 100,100,70 ../../icons/32x32/*.png

##### Batch resize all images to a width of 'X' pixels while maintaing the aspect ratio

   mogrify  -resize SIZE_IN_PIXELS *.jpg

##### Batch resize all images in the current directory that are bigger than 800px, height or weight.

   mogrify  -resize 800\> *

##### Resize photos without changing exif

   mogrify  -format jpg -quality 80 -resize 800 *.jpg

##### Turn white color to transparent for a series of png images

   mogrify  -transparent white image*.png

##### batch crop images whit ImageMagick

   mogrify  -crop <width>x<height>+<X-offset>+<Y-offset> *.png

##### Quickly batch resize images

   mogrify  -geometry 800x600 *.jpg

##### Create thumbnails and a HTML page for listing them (with links to sources)

   mogrify  -format gif -auto-orient -thumbnail 250x90 '*.JPG'&&(echo "<ul>";for i in *.gif;do basename=$(echo $i|rev|cut -d. -f2-|rev);echo "<li style='display:inline-block'><a href='$basename.JPG'><img src='$basename.gif'></a>";done;echo "</ul>")>list.html

##### Resize all JPEGs in a directory

   mogrify  -resize 1024 *.jpg

##### Trim png files in a folder

   mogrify  -trim *png

##### Batch resize image to exact given resolution ignoring aspect ratio

   mogrify  -resize 600x800! *.jpg

##### Format images for Kindle

   mogrify  -colorspace Gray -rotate '-90>' -resize 600x800 -dither FloydSteinberg -colors 16 -format png *

##### Batch resize images (overwriting)

   mogrify  -resize 852x480 *.png

##### Batch resize all images in the current directory that are bigger than 800px, height or weight.

   mogrify  -resize 800\> *

##### Resize photos without changing exif

   mogrify  -format jpg -quality 80 -resize 800 *.jpg

##### Turn white color to transparent for a series of png images

   mogrify  -transparent white image*.png

##### batch crop images whit ImageMagick

   mogrify  -crop <width>x<height>+<X-offset>+<Y-offset> *.png

##### Quickly batch resize images

   mogrify  -geometry 800x600 *.jpg

##### Create thumbnails and a HTML page for listing them (with links to sources)

   mogrify  -format gif -auto-orient -thumbnail 250x90 '*.JPG'&&(echo "<ul>";for i in *.gif;do basename=$(echo $i|rev|cut -d. -f2-|rev);echo "<li style='display:inline-block'><a href='$basename.JPG'><img src='$basename.gif'></a>";done;echo "</ul>")>list.html

##### Resize all JPEGs in a directory

   mogrify  -resize 1024 *.jpg

##### Trim png files in a folder

   mogrify  -trim *png

##### Batch resize image to exact given resolution ignoring aspect ratio

   mogrify  -resize 600x800! *.jpg
