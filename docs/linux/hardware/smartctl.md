---
tags:
  - Drives
  - Disks
---

# smartmontools

Smartmontools is a set of tools to monitor storage systems and to provide advanced warning of disk
degradation.

???+ Note "Reference(s)"
    * <https://wiki.gentoo.org/wiki/Smartmontools>
    * <https://wiki.archlinux.org/index.php/S.M.A.R.T.>
    * <http://falsecolour.com/aw/computer/SMARTnotifications/index.html>
    * <https://doc.ubuntu-fr.org/smartmontools>
    * <https://blog.inf.ed.ac.uk/chris/smartctl-and-megaraid/>
    * <https://blog.microlinux.fr/disque-dur-smartctl/>

---

### Print ALL smart info
```sh
smartctl -a /dev/nvme0n1 
```
### Print only informable smart info

smartctl -A /dev/nvme0n1 
```
```sh
smartctl -a /dev/sda | grep Temp | cut -d" " -f 2,37
smartctl -A /dev/sda | grep Temperature_Celsius
```

### Get all info on hardware LSI RAID (on physical disk 4):
```sh
smartctl -a -d megaraid,4 /dev/sda
```
### Print info of drive 
```sh
smartctl -i /dev/sdc
```
### Check if drive passed test
```sh
smartctl  -H /dev/sda 
```
### Run a short test
```sh
smartctl -t short /dev/sd[x]
```
### Run a long test
```sh
smartctl -t long /dev/sd[x]
```
### List results from test
```sh
smartctl -l selftest /dev/sd[x]
```