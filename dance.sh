#!/bin/bash

source ./tplight.config

while :
do
  hue=$(( ( RANDOM % 360 )  + 1 ))
  saturation=100
  brightness=100
  echo "changing color to $hue"
  tplight hsb -q -t 3000 $lamp_ip $hue $saturation $brightness
  sleep 4
done
