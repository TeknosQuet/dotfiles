#!/bin/sh

user=$(whoami)

while [ "$(lsof -c lemonbar)" ]
do
	time=$(date +%-I:%M\ %p)
	date=$(date +%b\ %-d\ %g)

	echo "%{l}%{O4}%{B#BE3232}%{F-}%{O7}%{O7}%{B#CA648796}%{F#FFEEEE}%{O7}$user%{O7}%{B-}%{c}%{r}%{B#87A0D2}%{F-}%{O7}%{O7}%{B#CA648796}%{F#FFEEEE}%{O7}$date%{O7}%{B-}%{O5}%{B#916487}%{F-}%{O7}%{O7}%{B#CA648796}%{F#FFEEEE}%{O7}$time%{O7}%{B-}%{O4}"
	sleep 3
done

