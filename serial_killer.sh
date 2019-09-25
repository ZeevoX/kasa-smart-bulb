#!/bin/bash

# while :
# do
#   color="$(printf %02x%02x%02x $((RANDOM%256) $((RANDOM%256)) $((RANDOM%256)))"
#   echo "changing color to $color"
#   tplight hex -t 1000 192.168.42.6 $color
#   sleep 1
# done

tplight hsb 192.168.42.6 $hue $saturation $brightness

while :
do
  hue=0
  saturation=100
  brightness=100
  echo "changing color to $hue"
  sleep .1
  tplight on 192.168.42.6
  sleep .1
  tplight off 192.168.42.6
done