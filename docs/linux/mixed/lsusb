# lsusb

##### Find iPod's fwguid

   lsusb  -v | grep -o "[0-9A-Z]{16}"

##### list connected usb devices

   lsusb 

##### Show UDID of iPhone

   lsusb  -s :`lsusb | grep iPhone | cut -d ' ' -f 4 | sed 's/://'` -v | grep iSerial | awk '{print $3}'

##### Show UDID of iPhone

   lsusb  -s :`lsusb | grep iPhone | cut -d ' ' -f 4 | sed 's/://'` -v | grep iSerial | awk '{print $3}'
