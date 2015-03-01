#!/bin/sh
#xset b off
#xset b 0 0 0
xbindkeys
exec fluxbox
#exec enlightenment_start
xrandr --output default --mode 1366x768
xrdb -merge ~/.Xresources
