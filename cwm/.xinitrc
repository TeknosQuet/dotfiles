#!/bin/sh

export XDG_RUNTIME_DIR=/tmp/user/$(id -u)

xrandr --output HDMI-0 --right-of DP-0 &
xrdb -m $HOME/.Xresources

urxvtd -f -o -q &
feh --bg-scale $HOME/Pictures/wallpaper/wallpaper3_1080.png &
picom --backend glx --config $HOME/.config/picom/picom.conf &
#($HOME/.config/bar/script.sh | /usr/local/bin/lemonbar -g 1920x32+0+3 -d -B "#BF000000" -o 1 -f "DejaVu Sans Mono:style=Book:pixelsize=14" -o -1 -f "Font Awesome 6 Free:style=Solid:pixelsize=15.5") &
$HOME/.config/bar/bar.sh &
exec /usr/bin/cwm
