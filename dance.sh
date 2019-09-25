#!/bin/bash

# while :
# do
#   color="$(printf %02x%02x%02x $((RANDOM%256) $((RANDOM%256)) $((RANDOM%256)))"
#   echo "changing color to $color"
#   tplight hex -t 1000 192.168.42.6 $color
#   sleep 1
# done

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