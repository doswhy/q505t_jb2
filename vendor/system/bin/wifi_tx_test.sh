
#!/system/bin/sh
iwpriv wlan0 tx 0
sleep 1
#!iwpriv wlan0 set_channel 6
iwpriv wlan0 set_channle $1
sleep 1
iwpriv wlan0 ena_chain 2
sleep 1
iwpriv wlan0 pwr_cntl_mode 0
#!iwpriv wlan0 pwr_cntl_mode $2
sleep 1
#!iwpriv wlan0 set_txpower 10
iwpriv wlan0 set_txpower $2
sleep 1
#!iwpriv wlan0 set_txrate 11A_54_MBPS
iwpriv wlan0 set_txrate $3
sleep 1
iwpriv wlan0 tx 1

