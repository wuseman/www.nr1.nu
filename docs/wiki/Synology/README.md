# Synology

A notice to all nerds. If you will copy the wiki and steal the real developers work will not make you a hacker.

Be careful, some commands may wipe DATA so read carefully please.

### Install various packages on your Synology NAS via OPKG (script can be found [here]

![ezgif-2-c48da777e053](https://user-images.githubusercontent.com/26827453/180590801-bcf15a1c-9ec8-4a99-85fb-0c585c1830b9.gif)

### Print workgroup for NAS:
```sh
synowin -getWorkgroup```sh
```
### Join a new workgroup for NAS:
```sh
synowin -joinWorkgroup <group>
```
### Print general info:
```sh
 synoservice --status
```
### Setup mail via cli:
```sh
synosyslogmail
```
### Check upgrades:
```sh
 synoupgrade --check 3
```
### Dump data about your nas:
```sh
syno_system_dump
```
### Print network info incl. current duplex:

```sh
synonet --show```sh
```

### Print current hostname:
```sh
synonet --get_hostname```sh
```

### Set a new hostname: 

```sh
synonet --set_hostname```sh
```

### Set a new gateway:

```sh
synonet --set_gateway gateway
```

### WOL Wakeup:

```sh
synonet --wake xx:xx:xx:xx:xx:xx <interface>
```
### Print the partition layout table.

```sh
synopartition --list
```

## Sharing

```
### Print info about a share:

```sh
synoshare --get <sharefolder>
```
### Mount an shared encrypted folder:

```sh
synoshare --enc_mount <sharefolder> <password>
```
### Unmount an encrypted folder:

```sh
synoshare --enc_unmount <sharefolder>

```
### Allowed to delete:

```sh
synoshare --del {TRUE|FALSE} sharename1 sharename2 ... 
```

```
### Set an description for a shared folder (viewed in comments in file browser)

```sh
synoshare --setdesc sharename desc

```
### # Allow browsing of shared folder

```sh
synoshare --setbrowse sharename browse_flag{0|1} 
```


### Rename a shared folder:

```sh
synoshare --rename  old_sharename new_sharename
```

### Set users that is allowed to browse shared folder:

```sh
synoshare --setuser sharename user_auth{NA|RO|RW} operator{+|-|=} user_name_list_with_comma

```
##  User

### Print main data about a user

```sh
sh-4.3# synouser --get wuseman
User Name   : [wuseman]
User Type   : [AUTH_LOCAL]
User uid    : [1026]
Primary gid : [100]
Fullname    : []
User Dir    : [/var/services/homes/wuseman]
User Shell  : [/bin/sh]
Expired: [false]
User Mail   : []
Alloc Size  : [82]
Member Of   : [2]
(100) users
(101) administrators
```


### Set a new password/Change password:

```sh
synouser --setpw oldpassword newpassword
```
### Rename a user:

```sh
synouser --rename old_username new_username
```
### Add a username with full info:

```sh
synouser --add [username pwd "full name" expired{0|1} mail privilege]
```
## Notifications:

### Send an email about storage:    

```sh
synostorage --mail
```

### Lock managment

```sh
synostorage --lock
```

## Tuning functionality:
 
### Get current tuning profile:

```sh
synotune --get   
```

Outut: Current Profile: performance_throughput

### Set a new functionality, options:

```sh
synotune --set    performance_throughput OR performance_latency
```

### Dump info about your synology nas:

```sh
syno_system_dump
```

## Upgrade

### Set your nas to handle upgrades auto:

```sh
synoupgrade --auto
```

```
### Check your current upgrade settings:

```sh
synoupgrade --check
```

### Download latest upgrade if there is a new one:

```sh
synoupgrade --download 
  
```
### Start upgrade:

```sh
synoupgrade --start
```

### Check the partition layout table:

```sh
synopartition --check /dev/sd<X>
```

### View synology NFS Monitor:

```sh
synonfstop
```

![synofstop](https://user-images.githubusercontent.com/26827453/180590812-873570ca-4416-490e-8156-70cede269d20.png)
### Reset your Synology NAS (Settings Only)
```sh
/usr/syno/sbin/./synodsdefault --reset
```

### Reset your Synology Nas to Factory Default (OBS OBS OBS ALL DATA WILL BE WIPED)

```sh
/usr/syno/sbin/./synodsdefault --factory-default

```
### Reinstall your Synology Nas Station, all data will be kept:
```sh
/usr/syno/sbin/./synodsdefault --reinstall; reboot

```
### The proper way to restart SSHD of your NAS via cli:
```sh
synoservicectl --restart sshd
```

### List, uninstall or install a .spk package file (available locally)

```sh
 synopkg
```
### Install a set a networking and ELF binary debugging tools (and drop into a root session)
```sh
synogear
```
### Write and read an .ini style file with lines of key=value pairs

```sh
synosetkeyvalu
```

```sh
synogetkeyvalue
```

### Shut down and power off the NAS (much like shutdown -h now)
```sh
synopoweroff

```
### Show installed packages
```sh
synopkg list | sed 's/: .*$//' 

```
### Uninstall a package
```sh
sudo synopkg uninstall 

```
### Synology Shutdown and Poweroff Too
```sh
syno_poweroff_task

```
### Set/establish password to local user
```sh
synoauth local_username password

```
### Manage IP autoblock feature
```sh
synoautoblock OPTIONS 

```
### Manage blog feature
```sh
synoblog_backup [-r|-b] p [-u username] [-o]

```
### Synology disk control device: something like /dev/hda or /dev/sda
```sh
syno_disk_ctl OPTIONS DEVICE  

```
### Synology clear .tbd-File Tool
```sh
SYNOClearTdb FILE 

```
### Different ways to print various info about your NAS
```sh
more /etc.defaults/VERSION ```sh
cat /etc/synoinfo.conf```sh
cat /proc/cmdline```sh
synoshare --enum ALL ```sh
synonet --show ```sh
synodisk --enum ```sh
synospace --enum -a 

```
### Restart index
```sh
synoservicectl --restart synoindexd

```
### Check for upgrades
```sh
sudo synoupgrade --check
```

### Restart webserver
```sh
/usr/syno/sbin/synoservicecfg --restart httpd-user ```sh
/usr/syno/sbin/synoservicectl --restart pkgctl-WebStation

```
### Generate a list for what you can control
```sh
/usr/syno/sbin/synoservice --list

```
### DSM API - Provide DSM information
```sh
syno dsm getInfo --pretty 

```
### File Station API - Provide File Station information
```sh
syno fs getInfo --pretty 

```
### File Station API - Enumerate files in a given folder
```sh
syno fs listFiles --payload '{"folder_path":"/path/to/folder"}' --pretty 

```
### Download Station API - List download tasks
```sh
syno dl listFiles --payload '{"limit":5, "offset":10}' --pretty 

```
### Download Station API - Create a download task
```sh
syno dl createTask --payload '{"uri":"https://link"}'

```
### Audio Station API - Search a song
```sh
syno as searchSong --payload '{"title":"my_title_song"}' --pretty

```
### Video Station API - List movies
```sh
syno vs listMovies --payload '{"limit":5}' --pretty

```
### Video Station DTV API - List channels
```sh
syno dtv listChannels --payload '{"limit":1}' --pretty 

```
### Surveillance Station API - Get camera information
```sh
syno ss getInfoCamera --payload '{"cameraIds":8}' --pretty 

```
### Restart, enable, stop samba
```sh
/usr/syno/etc/rc.sysv/S80samba.sh --help

```
### Get synology date
```sh
synodate --getSysDate

```
### Printer stuff
```sh
synoprint
```
### Update index older
```sh
indexfolder --type={SHARE_CREATE|SHARE_REMOVE} --share=<SHARED_FOLDER> --share_path=<SHARED_FOLDER>
```
### Start mediaserver

```sh
/usr/syno/bin/mediaserver.sh start

```
### CAREFUL, KILLING NAS

```sh
servicetool --get-service-volume download 

```
### Get 2FA key if lost

```sh
ssh root@nas cat /usr/syno/etc/preference/wuseman/google_authenticator
```

### List disk info on a very fancy way

```sh
dhm_tool -s 
```

## Synology Autoblock

I have seen many threads on synology forum about this topic, DON'T touch the DB file if you really don't need, use synoautoblock command instead, see examples below:

### Add a IP to autoblock db:

```sh
synoautoblock --deny <ip-address>
```

### Reset a IP that has been added by mistake:

```sh
synoautoblock --reset <ip-address>
```

### Add any IP to whitelist:

```sh
synoautoblock --in-white-list <ip-address>
```

## Debugging & System Health:

### Debug fans and email the result (if email has been set)

```sh
syno_fan_debug
```

### Run a health check of your system and email the the result once done:

```sh
syno_disk_health_record
```

### Check ~remain lifetime:

```sh
syno_disk_remain_life_check
```


### Run smartmontools and send email once done:

```sh
syno_disk_smart_mail_send
```

### Debug hibernation: 

```sh
syno_hibernation_debug
```

## LED (Get min and max value in: /usr/syno/etc.defaults/led_brightness.xml)

### Get current setup:

```sh
syno_led_brightness --get (Default on DS416: 1985157252)
```
### Set a new setting:

```sh
syno_led_brightness --set <brightness> 
```

## Bandwidth

### Print a user bandwidth usage:

```sh
synobandwidth --status [<list=user|group|all(default)> <transfer=upload|download|all(default)>] <merge=0|1(default)>]
```
### Set a new bandwidth limit for a user:

```sh
synobandwidth --set-global-conf <state=enabled|disabled> [<protocol=filestation|webdav|ftp|rsync|all(default)>
```
### Print status user by user for all services:
```sh
sh-4.3# synobandwidth --preview wuseman
   ProtocolUpload   Download
   filestation  0.00  0.00
   webdav  0.00  0.00
   ftp0.00  0.00
   rsync   0.00  0.00
```

## ISCI

### Synology iSCSI Perfomance Analyzer

```sh
synoiscsitop40
```

![icsi perfomance analayzer](https://user-images.githubusercontent.com/26827453/180590822-1728b752-557c-4ce1-b6d3-9b78533bc7ce.png)

## Fan

## Set fan config (loudest will sound like an airplane)

```sh
synofanconfig -parseXML 1000000
```


## More synology commands listed:
```sh
sync
synologconvert
syno-dbus-check.sh
synologrotated
syno-letsencrypt
synologset
syno-move-coredump
synologset1
syno8021Xtool
synolunbackup
synoRTCTime
synolunbkp
syno_adv_test
synoluntransform
syno_dc_ctrl_adapter.sh
synomediaparserd
syno_disk_config_check
synomkflv
syno_disk_ctl
synomkflvd
syno_disk_data_collector
synomkthumb
syno_disk_db_update
synomkthumbd
syno_disk_dsl
synomoduletool
syno_disk_health_record
synomount
syno_disk_information_daily_record
synomustache
syno_disk_log_convert
synomyds
syno_disk_log_import_from_xml
synonclient_send
syno_disk_remain_life_check
synonet
syno_disk_smart_mail_send
synonetd
syno_disk_test_log_import_from_xml
synonetdtool
syno_disk_test_scheduler_set
synonetseqadj
syno_disk_testlog_convert
synonfstop
syno_disk_wcache_config_init
synonotify
syno_dvb_admin.sh
synootp
syno_fan_debug
synoovstool
syno_hdd_util
synopartition
syno_hibernation_debug
synopasswordmail
syno_hw_video_transcoding.sh
synopayment
syno_iptables_common
synoperfeventd
syno_led_brightness
synoperformancediagnose
syno_mem_check
synopftest
syno_pkgicon_sprite.py
synophoto_acl
syno_poweroff_task
synophoto_acl_pgsql
syno_scemd_connector
synophoto_autoblock
syno_smart_result_collect
synophoto_backup
syno_smart_test
synophoto_config
syno_ssd_trim
synophoto_config_root
syno_system_dump
synophoto_dsm_user
synoabnormalloginmail
synophoto_external_access
synoacltool
synophoto_extract_preview
synoagentregisterd
synophoto_music
synoappbkp
synophoto_sdk_share_set
synoappnotify
synophoto_sns_utils
synoapppriv_updater
synophoto_update_db
synoarchivetool
synophoto_watermark_util
synoauth
synophotoio
synoautoblock
synopingpong
synobackup
synopkg
synobackupd
synopkgctl
synobandwidth
synopkghelper
synoblog_backup
synoplatform
synobootseq
synoportforward
synobootupcheck
synopoweroff
synobtrfssnap
synopreferencedir
synocacheclient
synoprint
synocachepinfiletool
synopsql
synocachepinfiletool-status
synoquota
synocachepinfiletoolha
synoraidtool
synocerttool
synorecycle
synocfgen
synorelayd
synocgid
synoretainer
synocgitool
synoretention-lun
synocheckhotspare
synoretentionconf
synocheckiscsitrg
synoretentiontest
synochecknetworkcfg
synoretentiontestutil.sh
synocheckshare
synorouterportfwd
synocheckswapconfig
synoroutertool
synocloudserviceauth
synorsyncdtool
synocmsclient
synosavetime
synocodectool
synoscgi
synoconfbkp
synoscgi________________________________________________________
synoconfd
synoschedtask
synocontentextract
synoschedtool
synocontentextractd
synoscimprofile
synocopy
synosdutils
synocredential
synosearch
synocrond
synosearchagent
synocrtregister
synoselfcheck
synocrtunregister
synoservice
synodatacollect
synoservicecfg
synodataverifier
synoservicectl
synodate
synoservicemigrate
synodctest
synosetkeyvalue
synodd
synoshare
synoddnsinfo
synosharequota
synoddsmtool
synosharesnapshot
synodisk
synosharesnaptool
synodiskdatacollect
synosharesnaptree
synodiskfind
synosharingbackup
synodiskpathparse
synosharingchecker
synodiskport
synosharingcron
synodriveencode
synosharingurl
synodrivehook
synosmartblock
synodriveindex
synosnapschedtask.sh
synodriveobject
synosnmpcd
synodrivesettings
synospace
synodriveversion
synospace.sh
synodrivevolume
synosshdutils
synodsdefault
synostgpool
synodsinfo
synostgsysraid
synodsmnotify
synostgvolume
synoeaupgrade
synostorage
synoethinfo
synostoragecore
synoexternal
synostoraged
synofanconfig
synosupportchannelchecker
synofileutil
synosyncdctime
synofirewall
synosyslogmail
synofirewallUpdater
synotc
synoflashcache
synotc_common
synoflvconv
synothumb
synofstool
synotifyd
synogear
synotifydutil
synogetkeyvalue
synotimecontrol
synogpoclientd
synotlstool
synogrinst
synotune
synogroup
synotunnelexec
synoguest
synoupgrade
synohacore
synoupnp
synoindex
synoups
synoindex_mgr
synoupscommon
synoindex_package.sh
synousbcam
synoindexd
synousbcopy
synoindexplugind
synousbdisk
synoindexscand
synousbmodemd
synoindexworkerd
synouser
synoiscsiep
synouserdir
synoiscsihook
synouserhome
synoiscsitool
synovolumesnapshot
synoiscsitop
synovpnc
synoiscsitop40
synovspace
synoiscsiunmap
synovspace_wrapper
synoiscsiwebapi
synow3
synoisns
synow3tool
synokerneltz
synowebapi
synolanstatus
synowifid
synoldapclient
synowin
synoldapclientd
synowireless
synologaccd
synowsdiscoveryd
synologand
synowstransferd
synologanutil
synozram
synologconfgen
```

## Requirements

Synology NAS Device

## Get In Touuch

If you have problems, questions, ideas or suggestions please contact me by posting to wuseman@nr1.nu

## Website

Visit my websites and profiles for the latest info and updated tools

https://github.com/wuseman/ && https://www.nr1.nu
