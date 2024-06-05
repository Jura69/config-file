#!/bin/bash

sketchybar --add item volume right \
	--set volume script="$PLUGIN_DIR/volume.sh" \
	icon.padding_right=-3 \
	--subscribe volume volume_change
