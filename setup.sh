#!/bin/bash

echo "Scanning for devices..."
lamp_ip="$(tplight scan -t 3 | grep LB | tr -s ' ' | cut -d ' ' -f 1)"

if [ -z $lamp_ip ]; then
  echo "No lamp found. Setup unsuccessful."
  exit 1
else
  echo "Lamp found and IP is: $lamp_ip"
  echo "lamp_ip=${lamp_ip}" > ./tplight.config
  echo "Setup successful."
fi

