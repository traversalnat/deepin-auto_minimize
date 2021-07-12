# deepin-auto_minimize
auto minimize the auto start `APP_TITLE`'s window in deepin v20.

FIXME: There is no APP_TITLE on dtk window or other window.

1. modify the `window_control.desktop` first
   1. change "Exec=`/PATH/TO/.config/autostart/auto_minimize.sh` `APP_TITLE`" to the absolutely path of the auto_minimize.sh
   2. modify `APP_TITLE` as the app title you want to auto close

how to use:
```
	sudo apt install xdotool
	cp window_control.desktop ~/.config/autostart
```

