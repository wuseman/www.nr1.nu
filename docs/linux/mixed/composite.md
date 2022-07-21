# composite

##### add repeated watermark to image

   composite  -dissolve 30% -tile watermark.png input.png output.png

##### Compose 2 images to 1

   composite  -geometry 96x96+250+70 foreground.jpg background.jpg image.jpg

##### Flatten a RGBA image onto a white background.

   composite  -compose Over rgba.png -tile xc:white -geometry `identify rgba.png  | sed 's/[^ ]* [^ ]* \([^ ]*\) .*/\1/g'` rgb-white.png

##### add repeated watermark to image

   composite  -dissolve 30% -tile watermark.png input.png output.png

##### Compose 2 images to 1

   composite  -geometry 96x96+250+70 foreground.jpg background.jpg image.jpg
