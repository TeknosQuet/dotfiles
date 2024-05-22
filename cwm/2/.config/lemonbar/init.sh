#!/bin/sh
# teknosquet


# Required dependencies
set -- "lemonbar"

deps_met=true  # Set flag variable
# Loop through pseudo-array, set deps_met=false if missing
# dependencies, and print accordingly
for dep in "$@"; do
	[ "$(command -v "$(dep)")" ] || {
		deps_met=false
		printf "%s\n" "\"$dep\" is required to run this configuration"
	}
done

# Exit if there are missing dependencies
[ "$deps_met" = "false" ] && exit 1

# Start the two empty bars (to give illusion of vertical sizing/offset)
# as well as the main bar that displays whatever the user desires
("$HOME"/.config/lemonbar/blank.sh | env lemonbar -g 1920x4+1920+0 -d -B "#CF000000") &
("$HOME"/.config/lemonbar/bar.sh | env lemonbar -g 1920x30+1920+4 -d -B "#CF000000" -o 1 -f "DejaVu Sans Mono:style=Book:pixelsize=14" -o 0 -f "Font Awesome 6 Free:style=Solid:pixelsize=15.5") &
("$HOME"/.config/lemonbar/blank.sh | env lemonbar -g 1920x4+1920+34 -d -B "#CF000000") &

