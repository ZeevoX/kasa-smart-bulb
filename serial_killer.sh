#!/bin/bash

source ./tplight.config

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
