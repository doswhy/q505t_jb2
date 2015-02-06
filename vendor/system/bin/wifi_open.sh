
#!/system/bin/sh
insmod /system/lib/modules/wlan.ko con_mode=5
sleep 2
iwpriv wlan0 ftm 1

