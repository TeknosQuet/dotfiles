#!/bin/sh

($HOME/.config/bar/blank.sh | /usr/local/bin/lemonbar -g 1920x4+0+0 -d -B "#CF000000") &
($HOME/.config/bar/script.sh | /usr/local/bin/lemonbar -g 1920x30+0+4 -d -B "#CF000000" -o 1 -f "DejaVu Sans Mono:style=Book:pixelsize=14" -o 0 -f "Font Awesome 6 Free:style=Solid:pixelsize=15.5") &
($HOME/.config/bar/blank.sh | /usr/local/bin/lemonbar -g 1920x4+0+34 -d -B "#CF000000") &
