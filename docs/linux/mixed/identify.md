# identify

##### Determine an image's dimensions

   identify  -format "%wx%h" /path/to/image.jpg

##### Identify name and resolution of all jpgs in current directory

   identify   -verbose *.jpg|grep "\(Image:\|Resolution\)"

##### Use ImageMagick to get an image's properties

   identify  -ping imageName.png

##### remove *.jpg smaller than 500x500

   identify  -format '%w %h %f\n' *.jpg | awk 'NF==3&&$1<500&&$2<500{print $3}' | xargs -r rm

##### Resolution of a image

   identify  -format "%[fx:w]x%[fx:h]" logo:

##### Resolution of a image

   identify  image.jpg |grep -o "[[:digit:]]*x[[:digit:]]*" |tail -1

##### Get dimensions of an image.

   identify  path/to/image.jpg | awk '{print $3;}'

##### Determine an image's dimensions

   identify  -format "%wx%h" /path/to/image.jpg

##### Identify name and resolution of all jpgs in current directory

   identify   -verbose *.jpg|grep "\(Image:\|Resolution\)"

##### Use ImageMagick to get an image's properties

   identify  -ping imageName.png

##### remove *.jpg smaller than 500x500

   identify  -format '%w %h %f\n' *.jpg | awk 'NF==3&&$1<500&&$2<500{print $3}' | xargs -r rm

##### Resolution of a image

   identify  -format "%[fx:w]x%[fx:h]" logo:

##### Resolution of a image

   identify  image.jpg |grep -o "[[:digit:]]*x[[:digit:]]*" |tail -1
