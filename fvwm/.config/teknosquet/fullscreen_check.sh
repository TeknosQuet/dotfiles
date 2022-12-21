while true; do
	check_window_res=$(xwininfo -root -tree | grep "1920x1080+0+0  +0+0")
	echo $check_window_res
	if [ "$check_window_res" ]
	then
		polybar-msg cmd hide
		if [ "$(pidof picom)" ]
		then
			pkill -9 -f picom
		fi
	else
		polybar-msg cmd show
		if [ -z "$(pidof picom)" ]
		then
			picom --experimental-backends --backend glx --config ~/.config/picom/picom.conf &
		fi
	fi
	sleep 0.4
done
