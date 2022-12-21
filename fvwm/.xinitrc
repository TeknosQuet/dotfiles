#!/bin/sh

export XDG_RUNTIME_DIR=/tmp/users/$(id -u)

setxkbmap -model pc105 -layout us
xrdb -m $HOME/.Xresources
urxvtd -f -o -q &
polybar -r -q --config=$HOME/.config/polybar/config main &
sh $HOME/.config/teknosquet/fullscreen_check.sh &
feh --bg-scale $HOME/Pictures/wallpaper/wallpaper1_1080_desaturated.png &
picom --experimental-backends --backend glx --config $HOME/.config/picom/picom.conf &
pipewire &
pipewire-pulse &
mpv --no-video $HOME/Documents/startup/snes.ogg &
exec /usr/bin/fvwm3
