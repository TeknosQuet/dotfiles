#!/bin/sh

# Environment Variables
XDG_RUNTIME_DIR=/tmp/user/$(id -u)
export XDG_RUNTIME_DIR

# Programs
setxkbmap -model pc105 -layout us
xrandr --output HDMI-0 --right-of DP-0 &
xrdb -m "$HOME"/.Xresources
xwallpaper --center "$HOME"/wp.jpeg &
xsetroot -cursor-name left_ptr &

picom --backend glx --config "$HOME"/.config/picom/picom.conf &
"$HOME"/.config/lemonbar/init.sh &

exec /usr/bin/env 2bwm
