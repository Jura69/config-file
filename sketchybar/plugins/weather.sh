#!/bin/sh

status=$(curl -s 'https://wttr.in/NhaTrang?format=%C+|+%t')
condition=$(echo $status | awk -F '|' '{print $1}' | tr '[:upper:]' '[:lower:]')
condition="${condition// /}"
temp=$(echo $status | awk -F '|' '{print $2}')
temp="${temp//\+/}"
temp="${temp// /}"

# add more conditions here as appropriate
case "${condition}" in
    "sunny")
    icon="☀︎"
    ;;
    "partlycloudy")
    icon="⛅︎"
    ;;
    "patchylightraininareawiththunder")
    icon="☔︎"
    ;;  
    "patchyrainnearby")
    icon="☔︎"
    ;; 
  *)
    icon="$condition"
    ;;
esac

sketchybar -m --set weather icon="$icon" \
              --set weather label="$temp"
