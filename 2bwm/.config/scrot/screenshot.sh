#!/bin/sh

scrotcmd='xclip -selection clipboard -t image/png -i $f && rm -f $f'

[ "$1" = "select" ] && exec /usr/bin/env scrot -q 80 -s -f -z -e "$scrotcmd" && exit 0
[ "$1" = "focused" ] && exec /usr/bin/env scrot -b -q 80 -u -z -e "$scrotcmd" && exit 0
exit 1
