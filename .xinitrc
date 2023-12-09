#!/bin/sh

#
# ~/.xinitrc
#

feh --bg-scale ~/Pictures/wallpaper.jpg &
picom &
exec i3
