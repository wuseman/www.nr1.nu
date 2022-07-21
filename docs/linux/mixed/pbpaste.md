# pbpaste

##### Compile CoffeeScript on Mac clipboard to JavaScript and print it

   pbpaste  | coffee -bcsp | tail -n +2

##### Paste the contents of OS X clipboard into a new text file

   pbpaste  > newfile.txt

##### Paste OS X clipboard contents to a file on a remote machine

   pbpaste  | ssh user@hostname 'cat > ~/my_new_file.txt'

##### OSX command to take badly formatted xml from the clipboard, cleans it up and puts it back into the clipboard.

   pbpaste  | tidy -xml -wrap 0 | pbcopy

##### Transfers clipboard content from one OS X machine to another

   pbpaste  | ssh user@hostname pbcopy

##### Download all items from a list of URLs copied to the clipboard on OS X

   pbpaste  | xargs wget

##### OS X: clean up Windows and Classic Mac OS newlines from the text in the clipboard

   pbpaste  | tr '\r\n' '\n' | tr '\r' '\n' | pbcopy

##### Create MP3 from text on clipboard (OS X)

   pbpaste  | say -v Alex -o /tmp/say.aiff && sox /tmp/say.aiff say.mp3

##### Paste the contents of OS X clipboard into a new text file

   pbpaste  > newfile.txt

##### Paste OS X clipboard contents to a file on a remote machine

   pbpaste  | ssh user@hostname 'cat > ~/my_new_file.txt'

##### OSX command to take badly formatted xml from the clipboard, cleans it up and puts it back into the clipboard.

   pbpaste  | tidy -xml -wrap 0 | pbcopy

##### Transfers clipboard content from one OS X machine to another

   pbpaste  | ssh user@hostname pbcopy

##### Download all items from a list of URLs copied to the clipboard on OS X

   pbpaste  | xargs wget

##### OS X: clean up Windows and Classic Mac OS newlines from the text in the clipboard

   pbpaste  | tr '\r\n' '\n' | tr '\r' '\n' | pbcopy
