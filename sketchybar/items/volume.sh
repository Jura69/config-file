#!/bin/bash

sketchybar --add item volume right \
           --set volume \
           script="$PLUGIN_DIR/volume.sh" \
           icon.color=$TEAL \
           label.color=$TEAL \
           --subscribe volume volume_change 