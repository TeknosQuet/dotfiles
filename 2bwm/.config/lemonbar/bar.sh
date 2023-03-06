#!/bin/sh
# teknosquet


# Info
bg="%{B-}"
boxlight="%{B#FFFAFAFA}"
box="%{B#E6E6E6}"
sep="$bg%{O7}"
txtclr="%{F#FF484848}"
txtspecial="%{F#DFFE9839}"

# Update text periodically while lemonbar is open
while [ "$(pgrep -x lemonbar)" ]; do
	# Commands
	time=$(date +%-I:%M\ %p)
	winname=$(xprop -id $(xprop -root 32x '\t$0' _NET_ACTIVE_WINDOW | cut -w -f2) WM_NAME | cut -d'"' -f2 | cut -c 1-65)
	mem="MEM $(top -b -m cpu | grep "Mem:" | cut -w -f2)"

	# Text
	left="%{l}$boxlight$txtspecial%{O7}$USER%{O7}$sep$box$txtclr%{O7}$winname%{O7}$bg"
	center=""
	right="%{r}$box$txtclr%{O7}$mem%{O7}$sep$boxlight$txtclr%{O7}$time%{O7}$bg"

	printf "%s\n" "$left$center$right"

	sleep 0.1
done

exit 0
