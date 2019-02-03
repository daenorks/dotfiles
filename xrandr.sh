#!/bin/bash

if  [ $(xrandr -q | grep " connected " | cut -f1 -d ' ' | wc -l) -eq 2 ]
then
    xrandr --output DP2-2 --auto
    xrandr --output eDP1 --off
elif  [ $(xrandr -q | grep " connected " | cut -f1 -d ' ' | wc -l) -eq 1 ]
then
    xrandr --output DP2-2 --off
    xrandr --output eDP1 --auto
fi
