#!/bin/sh
# shellcheck disable=SC2034
# teknosquet

# 16-color palette & bg/fg
color00="#191919"  #black-ish
color01="#BE3232"  #red
color02="#87A035"  #green
color03="#E68C5A"  #orange
color04="#5A82C8"  #blue
color05="#916487"  #purple
color06="#648796"  #dark cyan
color07="#787D82"  #gray
color08="#2B2B2B"  #dark gray
color09="#D25A5A"  #light red
color10="#BEE664"  #light green
color11="#F5C36E"  #yellow
color12="#87A0D2"  #light blue
color13="#BE8CB4"  #light purple
color14="#87B9C8"  #light cyan
color15="#CDD2CD"  #white-ish
bg="#CA648796"  #gray part
fg="#FFEEEE"    #text


# Available functions; you can create your own
User() {
	cmd=$(id -un)
	icon=""
	printf "%s" "%{B$color01}%{F-}%{O7}$icon%{O7}%{B$bg}%{F$fg}%{O7}$cmd%{O7}%{B-}"
}

Date() {
	cmd=$(date +%b\ %-d\ %y)
	icon=""
	printf "%s" "%{B$color12}%{F-}%{O7}$icon%{O7}%{B$bg}%{F$fg}%{O7}$cmd%{O7}%{B-}"
}

Time() {
	cmd=$(date +%-I:%M\ %p)
	icon=""
	printf "%s" "%{B$color05}%{F-}%{O7}$icon%{O7}%{B$bg}%{F$fg}%{O7}$cmd%{O7}%{B-}"
}

while [ "$(pgrep -x lemonbar)" ]; do
	# Text
	left="%{l}%{O4}$(User)"
	center="%{c}"
	right="%{r}$(Date)%{O5}$(Time)%{O4}"
	printf "%s\n" "$left$center$right"

	sleep 3
done

