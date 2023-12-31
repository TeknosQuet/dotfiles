#!/bin/sh

while [ "$(lsof -c lemonbar)" ]
do
	echo " "
	sleep 600
done
