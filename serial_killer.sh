#!/bin/bash

lamp_ip="$(tplight scan -t 1 | grep lamp | tr -s ' ' | cut -d ' ' -f 1)"

if [ -z $lamp_ip ]; then 
  echo "No lamp found."
  exit 1
else 
  echo "Lamp found and ip is: $lamp_ip"
fi


tplight $lamp_ip $hue $saturation $brightness

while :
do
  hue=0
  saturation=100
  brightness=100
  echo "changing color to $hue"
  sleep .1
  tplight on $lamp_ip
  sleep .1
  tplight off $lamp_ip
done