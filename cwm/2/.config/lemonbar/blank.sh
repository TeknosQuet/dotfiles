#!/bin/sh

while [ "$(pgrep -x lemonbar)" ]; do
	printf ""
	sleep 600
done

