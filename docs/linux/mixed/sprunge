# sprunge

##### Send a file to a pastebin from STDIN or a file, with a single function

   sprunge () { curl -F 'sprunge=<-' http://sprunge.us < "${1:-/dev/stdin}"; }

##### Posts a file to sprunge.us and copies the related url to the clipboard

   sprunge  () { curl -s -F "sprunge=@$1" http://sprunge.us | xclip -selection clipboard && xclip -selection clipboard -o; }

##### Send a file to a pastebin from STDIN or a file, with a single function

   sprunge () { curl -F 'sprunge=<-' http://sprunge.us < "${1:-/dev/stdin}"; }

##### Posts a file to sprunge.us and copies the related url to the clipboard

   sprunge  () { curl -s -F "sprunge=@$1" http://sprunge.us | xclip -selection clipboard && xclip -selection clipboard -o; }
