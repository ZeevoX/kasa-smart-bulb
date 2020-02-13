lamp_ip="$(tplight scan -t 1 | grep lamp | tr -s ' ' | cut -d ' ' -f 1)"

if [ -z $lamp_ip ]; then 
  echo "No lamp found."
  exit 1
else 
  echo "Lamp found and ip is: $lamp_ip"
fi

tplight off $lamp_ip

exit 0