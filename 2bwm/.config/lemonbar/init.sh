#!/bin/sh
# teknosquet


# Required dependencies
set -- "lemonbar" "xprop"

deps_met=true	# Set flag variable
# Loop through pseudo-array. If missing dependencies, set deps_met=false
# and print accordingly
for dep in "$@"; do
	[ "$(command -v "$dep")" ] || {
		deps_met=false
		printf "%s\n" "\"$dep\" is required to run this configuration"
	}
done

# Exit if there are missing dependencies
[ "$deps_met" = "false" ] && exit 1

# Initialize lemonbar
"$HOME"/.config/lemonbar/bar.sh | /usr/bin/env lemonbar -g 1920x30+0+0 -d -B "#A9000004" -o 1 -f "IBM Plex Mono:style=Regular:pixelsize=14" &

exit 0
