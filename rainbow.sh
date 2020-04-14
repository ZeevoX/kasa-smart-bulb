#!/bin/bash

# rainbow.sh - Rainbow script
# created by zeevox on 2020-04-15
# gently cycle through the colours of the spectrum

source ./tplight.config

# below are the default values. they can be overriden by
# passing arguments when running the script

hue=1
saturation=100
brightness=100

if [ $# -gt 0 ]; then
  hue=$1
  saturation=$2
  brightness=$3
fi

while :
do
  tplight hsb -q -t 3000 $lamp_ip $hue $saturation $brightness
  hue=$(( ( hue + 10 ) % 360 ))
  sleep 3
done
