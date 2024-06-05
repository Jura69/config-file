#!/bin/sh

sketchybar --add item weather right \
              --set weather update_freq=300 \
              --set weather script="$PLUGIN_DIR/weather.sh" \