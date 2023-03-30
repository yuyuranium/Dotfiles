#!/bin/sh

while xsetroot -name "`date` `uptime | sed 's/.*,//'`"
do
	sleep 1
done &

[ -f ~/.xprofile ] && . ~/.xprofile
[ -f ~/.config/screenlayout/dual.sh ] && . ~/.config/screenlayout/dual.sh

xrdb ~/.Xresources
nitrogen --restore
picom &
exec dwm
