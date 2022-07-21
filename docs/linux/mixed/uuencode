# uuencode

##### Copy a file over SSH without SCP

   uuencode  -m <filename> <filename>

##### Send a binary file as an attachment to an email

   uuencode  archive.tar.gz archive.tar.gz | mail -s "Emailing: archive.tar.gz" user@example.com

##### Email a file to yourself

   uuencode  $file $file | /usr/bin/mailx -s "$file" ${USER}

##### encode image to base64 and copy to clipboard

   uuencode  -m $1 /dev/stdout | sed '1d' | sed '$d' | tr -d '\n' | xclip -selection clipboard

##### Send a binary file as an attachment to an email

   uuencode  archive.tar.gz archive.tar.gz | mail -s "Emailing: archive.tar.gz" user@example.com

##### Email a file to yourself

   uuencode  $file $file | /usr/bin/mailx -s "$file" ${USER}

##### encode image to base64 and copy to clipboard

   uuencode  -m $1 /dev/stdout | sed '1d' | sed '$d' | tr -d '\n' | xclip -selection clipboard
