#!/system/bin/sh
#
# For P826T20-eng based on Qualcomm MSM8926
#
# adb push hw_shutdown.sh /data/local/tmp/
# adb shell chmod 0751 /data/local/tmp/hw_shutdown.sh
# adb shell
# #cd /data/local/tmp/
# #./hw_shutdown.sh &
#
# Plug out USB, phone will shutdown in (5 + 7) seconds. 
# Don't press power key when you are waitting.
#
#
# #./hw_shutdown.sh nowait > hw_shutdown.log &
# The argument 'nowait' will force to shutdown immediately.
#
# The log file is /data/local/log/hw_shutdown.log


hw_shutdown_gpio=51 # NOTE:hardware dependent
logfile=/data/local/log/hw_shutdown.log 

# The default PATH is /usr/bin:/bin when this script is excuted
# from init.rc. If we don't add /system/bin to PATH, $(date) will
# show nothing.
export PATH=/system/bin:$PATH

function start_to_run()
{
	echo "hw_shutdown: run at $(date)" > $logfile
	echo "hw_shutdown: GPIO: $hw_shutdown_gpio" >> $logfile
}

function fail_to_shutdown()
{
	echo "hw_shutdown: fail, exit at $(date)" >> $logfile
	exit
}

function success_to_shutdown()
{
	echo "hw_shutdown: success at $(date)" >> $logfile
}

function wait_for_plugging_out_USB()
{
	echo -n "hw_shutdown: sleep 5 seconds to shutdown, please plug out USB..." >> $logfile

	num=0
	while (($num < 5))
	do
		sleep 1
		echo -n "." >> $logfile
		let num+=1
	done
	echo "" >> $logfile
}

function wait_if_need()
{
	if [[ $1 != nowait ]]
	then
		wait_for_plugging_out_USB
	fi
}

function exit_if_fail()
{
	if (( $? != 0 ))
	then
		fail_to_shutdown
	fi
}

try_to_shutdown_or_exit()
{
	gpio=$hw_shutdown_gpio
	echo $gpio > /sys/class/gpio/export
	exit_if_fail
	
	echo "out" > /sys/class/gpio/gpio$gpio/direction
	exit_if_fail
	
	echo 1 > /sys/class/gpio/gpio$gpio/value
	exit_if_fail
	
	echo $gpio > /sys/class/gpio/unexport
	exit_if_fail
}

# main control
start_to_run
wait_if_need $1
try_to_shutdown_or_exit
success_to_shutdown
