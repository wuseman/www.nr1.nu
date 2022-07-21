# objdump

##### Get all shellcode on binary file from objdump

   objdump  -d ./PROGRAM|grep '[0-9a-f]:'|grep -v 'file'|cut -f2 -d:|cut -f1-6 -d' '|tr -s ' '|tr '\t' ' '|sed 's/ $//g'|sed 's/ /\\x/g'|paste -d '' -s |sed 's/^/"/'|sed 's/$/"/g'

##### disassemble binary shellcode

   objdump  -b binary -m i386 -D shellcode.bin

##### Extract binary from .text section (shellcode)

   objdump  -d -j .text ExeHere | grep -e '^ ' | tr '[[:space:]]' '\n' | egrep '^[[:alnum:]]{2}$' | xargs | sed 's/ /\\x/g' | sed -e 's/^/\\x/g'

##### Gets shellcode opcodes from binary file using objdump

   objdump  -s  ./HelloWorld | grep -v '^ [0-9a-f][0-9a-f][0-9a-f][0-9a-f] \b' | grep -v 'Contents' | grep -v './' | cut -d' ' -f 3-6| sed 's/ //g' | sed '/./!d' | tr -d '\n'| sed 's/.\{2\}/&\\x/g' | sed 's/^/\\x/'|sed 's/..$//'|sed 's/^/"/;s/$/"/g'

##### Get all shellcode on binary file from objdump

   objdump  -d ./PROGRAM|grep '[0-9a-f]:'|grep -v 'file'|cut -f2 -d:|cut -f1-6 -d' '|tr -s ' '|tr '\t' ' '|sed 's/ $//g'|sed 's/ /\\x/g'|paste -d '' -s |sed 's/^/"/'|sed 's/$/"/g'

##### disassemble binary shellcode

   objdump  -b binary -m i386 -D shellcode.bin

##### Extract binary from .text section (shellcode)

   objdump  -d -j .text ExeHere | grep -e '^ ' | tr '[[:space:]]' '\n' | egrep '^[[:alnum:]]{2}$' | xargs | sed 's/ /\\x/g' | sed -e 's/^/\\x/g'
