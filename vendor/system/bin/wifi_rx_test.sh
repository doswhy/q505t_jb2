
#!/system/bin/sh
iwpriv wlan0 clr_rxpkcnt 1
sleep 1
#!iwpriv wlan0 set_channel 6
iwpriv wlan0 set_channel $1
sleep 1
iwpriv wlan0 ena_chain 1
sleep 1
iwpriv wlan0 rx 1

