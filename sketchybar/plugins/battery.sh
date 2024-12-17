#!/bin/bash

source "$HOME/.config/sketchybar/icons.sh"
source "$HOME/.config/sketchybar/colors.sh"

PERCENTAGE=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
CHARGING=$(pmset -g batt | grep 'AC Power')

if [ $PERCENTAGE = "" ]; then
  exit 0
fi

DRAWING=on
COLOR=$TEAL
case ${PERCENTAGE} in
  9[0-9]|100) ICON=$BATTERY_100;
  ;;
  [6-8][0-9]) ICON=$BATTERY_75; COLOR=$YELLOW
  ;;
  [3-5][0-9]) ICON=$BATTERY_50; COLOR=$ORANGE
  ;;
  [1-2][0-9]) ICON=$BATTERY_25; COLOR=$RED
  ;;
  *) ICON=$BATTERY_0; COLOR=$RED
esac

if [[ $CHARGING != "" ]]; then
  ICON=$BATTERY_CHARGING; COLOR=$GREEN
fi

sketchybar --set $NAME drawing=$DRAWING icon="$ICON" icon.color=$COLOR label="$PERCENTAGE"% label.color=$COLOR 