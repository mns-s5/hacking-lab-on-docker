#!/bin/bash

echo "launch a docker container and start some pentest ?"
echo "u can choose multiple options separated by space ."
echo "1 - Kali Linux"
echo "2 - Arch Linux"
echo "3 - Metasploitable2"
echo "4 - OWASP Juice Shop"
echo "5 - DVWA"
echo "6 - Toutes"
read -p "your choice: " choix

declare -A services=(
  [1]="kali"
  [2]="archlinux"
  [3]="metasploitable2"
  [4]="juice-shop"
  [5]="dvwa"
)

services_to_start=()

if [[ "$choix" == *"6"* ]]; then
  services_to_start=("kali" "archlinux" "metasploitable2" "juice-shop" "dvwa")
else
  for i in $choix; do
    service=${services[$i]}
    if [ -n "$service" ]; then
      services_to_start+=("$service")
    else
      echo "Choix invalide : $i"
    fi
  done
fi

if [ ${#services_to_start[@]} -eq 0 ]; then
  echo "Aucun service valide sélectionné. Abandon."
  exit 1
fi

docker-compose up -d "${services_to_start[@]}"

