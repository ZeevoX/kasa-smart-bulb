#!/bin/bash

source ./tplight.config

while :
do
  hue=120
  saturation=100
  brightness=100
  echo "changing color to $hue"
  tplight hsb -q -t 3000 $lamp_ip $hue $saturation $brightness
  sleep 3

  hue=266
  saturation=100
  brightness=100
  echo "changing color to $hue"
  tplight hsb -q -t 3000 $lamp_ip $hue $saturation $brightness
  sleep 3

  hue=19
  saturation=100
  brightness=100
  echo "changing color to $hue"
  tplight hsb -q -t 3000 $lamp_ip $hue $saturation $brightness
  sleep 3
done
