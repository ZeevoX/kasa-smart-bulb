#!/bin/bash

lamp_ip="$(tplight scan -t 1 | grep LB | tr -s ' ' | cut -d ' ' -f 1)"

if [ -z $lamp_ip ]; then
  echo "No lamp found."
  exit 1
else
  echo "Lamp found and IP is: $lamp_ip"
fi

hue=0
saturation=100
brightness=100

echo "Working my magic..."

# run only four times, any more and the lamp stops responding altogether
for i in {1..4}; do
  sleep 1
  tplight hsb -q -t 100 $lamp_ip $hue $saturation $brightness
  sleep 1
  tplight off -q -t 100 $lamp_ip
done
