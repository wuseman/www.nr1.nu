# Author: wusmean

# Windows 10 Pro	                         W269N-WFGWX-YVC9B-4J6C9-T83GX
# Windows 10 Pro N	                         MH37W-N47XK-V7XM9-C7227-GCQG9
# Windows 10 Pro for Workstations	         NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J
# Windows 10 Pro for Workstations N              9FNHH-K3HBT-3W4TD-6383H-6XYWF
# Windows 10 Pro Education	                 6TP4R-GNPTD-KYYHQ-7B7DP-J447Y
# Windows 10 Pro Education N	                 YVWGF-BXNMC-HTQYQ-CPQ99-66QFC
# Windows 10 Education	                         NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
# Windows 10 Education N	                 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
# Windows 10 Enterprise	                         NPPR9-FWDCX-D2C8J-H872K-2YT43
# Windows 10 Enterprise N	                 DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
# Windows 10 Enterprise G	                 YYVX9-NTFWV-6MDM3-9PT4T-4M68B
# Windows 10 Enterprise G N	                 44RPN-FTY23-9VTTB-MP9BX-T84FV
echo "Please Wait..."
slmgr.vbs -upk
slmgr.vbs -ipk  NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J
slmgr.vbs -skms kms.cangshui.net
slmgr.vbs -ato
slmgr.vbs -dlv
echo "All Done"
