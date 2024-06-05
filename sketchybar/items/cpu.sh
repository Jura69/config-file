#!/bin/bash
cpu=(
    script="$PLUGIN_DIR/cpu.sh"
    icon=􀧓
    icon.color=$WHITE
    icon.font="SF Pro:Semibold:16.0"
    update_freq=2
)


sketchybar --add item cpu e\
    --set cpu "${cpu[@]}"