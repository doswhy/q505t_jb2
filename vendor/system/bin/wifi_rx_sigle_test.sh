#!/system/bin/sh
sleep 1
#set digital gain and rf gain of cw 
iwpriv wlan0 set_tx_wf_gain 0 0 
#start waveform 
iwpriv wlan0 tx_cw_rf_gen 1 

