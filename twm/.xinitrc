#!/bin/sh

xrdb -m "$HOME"/.Xresources
setxkbmap -model pc105 -layout us
xsetroot -cursor_name left_ptr
xwallpaper --center "$HOME"/wp.jpeg &

xterm &

exec /usr/bin/env twm
