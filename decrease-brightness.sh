#!/bin/sh
# Increase brightness by step of 5
# Luca Rautti - lucarautti2@gmail.com

path=/sys/class/backlight/radeon_bl0
inc="5"
max=`cat $path/max_brightness`
actual=`cat $path/actual_brightness`
new=`echo $(($inc+$actual))`

if [ "$new" = "$max" ]; then
  echo 255 > $path/brightness
else
  echo $new > $path/brightness
fi
