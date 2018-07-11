#!/bin/sh
# Decrease brightness by step of 5
# Luca Rautti - lucarautti2@gmail.com#!/bin/sh

path=/sys/class/backlight/radeon_bl0
dec="5"
min="5"
actual=`cat $path/actual_brightness`
new=`echo $(($actual-$dec))`

if [ "$new" = "$min" ]; then
  echo 5 > $path/brightness
else
  echo $new > $path/brightness
fi
