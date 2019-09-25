#!/bin/bash

lamp_ip="$(tplight scan -t 1 | grep lamp | tr -s ' ' | cut -d ' ' -f 1)"

if [ -z $lamp_ip ]; then 
  echo "No lamp found."
  exit 1
else 
  echo "Lamp found and ip is: $lamp_ip"
fi

while :
do
  hue=$(( ( RANDOM % 360 )  + 1 ))
  saturation=$(( ( RANDOM % 100 )  + 1 ))
  brightness=100
  echo "changing color to $hue"
  tplight hsb -t 4000 $lamp_ip $hue $saturation $brightness
  sleep 4
done