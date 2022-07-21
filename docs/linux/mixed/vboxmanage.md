# vboxmanage

##### List the vms in Virtualbox and start them using dmenu

   vboxmanage  startvm type gui $(vboxmanage list vms | sed -e 's/"//g' | cut -f1 -d ' ' | dmenu -i -p "VMs")

##### convert vdi to vmdk (virtualbox v3.2 hard disk conversion to vmware hard disk format)

   vboxmanage  clonehd format VMDK <source image|uuid> <destination image>

##### Halt all running vagrants (virtualboxes)

   vboxmanage  list runningvms | cut -d \" -f 2 | xargs -I % vboxmanage controlvm % poweroff

##### Halt all running vagrants (virtualboxes)

   vboxmanage  list runningvms | cut -d \" -f 2 | xargs -I % vboxmanage controlvm % poweroff
