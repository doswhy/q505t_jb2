#!/system/bin/sh
echo 0 > /sys/module/hci_smd/parameters/hcismd_set
sleep 1
hci_qcomm_init -vvv -e 
sleep 1
system/bin/bdt
sleep 1
enable
