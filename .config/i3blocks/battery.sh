#!/bin/bash

BAT=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -iE percentage | awk '{print $2}')

# Full and short texts
echo "Battery: $BAT"
echo "BAT: $BAT"

# Set urgent flag below 5% or use orange below 20%
[ ${BAT%?} -le 5 ] && exit 33
[ ${BAT%?} -le 20 ] && echo "#FF8000"

exit 0
