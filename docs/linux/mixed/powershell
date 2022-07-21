# powershell

##### Gracefully close all windows of an application

   powershell  -Command "while (\$true){Try{\$process=Get-Process firefox -ErrorAction Stop}Catch [Microsoft.PowerShell.Commands.ProcessCommandException]{break;}if (\$process) {\$whateva=\$process.CloseMainWindow()}else {break;}Start-Sleep -m 500}"
