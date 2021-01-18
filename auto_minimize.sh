until [ -n "$window_id" ]
do
	window_id=`xdotool search --name "electron-ssr v0.3.0"`
	echo $window_id
done

xdotool windowclose $window_id
