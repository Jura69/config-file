#!/bin/bash

# From SF Symbols
#NET_WIFI=􀙇         # Wi-Fi connected
#NET_DISCONNECTED=􀙇 # Network disconnected, but Wi-Fi turned on
NET_OFF=􀙈 # Network disconnected, Wi-Fi turned off
sketchybar --add item wifi_icon right \
	--set wifi_icon icon=$NET_OFF \
	icon.font="YourFontName:Regular:15.0" \
	icon.padding_right=-3 \
	icon.color=$WHITE \
	background.drawing=on
