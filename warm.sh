#!/bin/bash

lamp_ip="$(tplight scan -t 1 | grep lamp | tr -s ' ' | cut -d ' ' -f 1)"

if [ -z $lamp_ip ]; then 
  echo "No lamp found."
  exit 1
else 
  echo "Lamp found and ip is: $lamp_ip"
fi


lamp_ip="$(tplight scan -t 1 | grep lamp | tr -s ' ' | cut -d ' ' -f 1)"
hue=42
saturation=100
brightness=100
echo "changing color to $hue"
tplight hsb -t 3000 $lamp_ip $hue $saturation $brightness
sleep 3