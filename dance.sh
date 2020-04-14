#!/bin/bash
lamp_ip='192.168.42.3'


while :
do
  hue=$(( ( RANDOM % 360 )  + 1 ))
  saturation=100
  brightness=100
  echo "changing color to $hue"
  tplight hsb -t 3000 $lamp_ip $hue $saturation $brightness
  sleep 4
done