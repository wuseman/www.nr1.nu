### Get info about Pshical disks

wmic diskdrive get model,name,freespace,size        

# Get info about Logical disks

wmic logicaldisk get name                           
wmic printer list status
wmci printerconfig list

### Windows version incl. serial

wmic os list brief  

### Print installed products

wmic product list brief                  

### Print startuplist, full

wmic startup list full

### List running processes

wmic process list
wmic process list brief
wmic process list brief find "calc.exe"
wmic process list full

### Start and Stop

wmic process call create "calc.exe"
wmic process where name="calc.exe" call terminate

### Change process priority

wmic process where name="calc.exe" call setpriority 64

### Check environment variables

wmic environment list

### User Management

wmic group list brief
wmic useraccount list
wmic sysaccount list

### # List of missing patches

wmic qfe list   