#!/bin/bash

calendar=(
  icon.font="SF Pro:Regular:11.0"
  icon.padding_left=5
  icon.padding_right=9
  icon.align=right
  icon.y_offset=7
  label.width=0
  label.align=right
  label.y_offset=-7
  label.font="SF pro:Black:12.5"
  label.color=$ORANGE
  background.color=$BAR_COLOR
  update_freq=1
  script="$PLUGIN_DIR/calendar.sh"
)

sketchybar --add item calendar right \
  --set calendar "${calendar[@]}"
