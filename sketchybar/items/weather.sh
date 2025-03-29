#!/usr/bin/env zsh

sketchybar -m \
    --add item weather e \
    --set weather \
        update_freq=300 \
        padding_right=10 \
        padding_left=0 \
        script="$PLUGIN_DIR/weather.sh" \
        icon.font="Hack Nerd Font:Regular:15.0" \
        icon.color=$YELLOW \
        icon.y_offset=-1 \
        label.color=$ACCENT_COLOR \
        label.y_offset=0 \
        background.color=$BAR_COLOR \
