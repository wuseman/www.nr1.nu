# wmic

##### ps for windows

   wmic  process list IO

##### kill a windows process

   wmic  process where (caption="notepad.exe") call terminate

##### wmi

   wmic  -U DOMAIN/user password='password'  //IP_HOST "select Caption,CSDVersion,CSName  from Win32_OperatingSystem" | grep Windows

##### Find an installed app

   wmic  product | findstr /I "name_of_app"

##### get Windows OS architecture using Cygwin

   wmic  OS get OSArchitecture /value | grep -Eo '[^=]*$'

##### Find an installed app

   wmic  product | findstr /I "name_of_app"
