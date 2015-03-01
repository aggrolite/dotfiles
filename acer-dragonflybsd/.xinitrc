#!/bin/sh
#xset b off
#xset b 0 0 0
xrdb -merge ~/.Xresources
xbindkeys
exec fluxbox
#exec enlightenment_start
xrandr --output default --mode 1366x768
