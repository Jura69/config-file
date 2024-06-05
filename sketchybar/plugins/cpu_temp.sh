#!/bin/bash

# get temperature
TEMPERATURE_CPU=$(/usr/local/bin/smctemp -c)  
TEMPERATURE_GPU=$(/usr/local/bin/smctemp -g)
TEMPERATURE=$(echo "($TEMPERATURE_CPU + $TEMPERATURE_GPU) / 2" | bc)

# check smctemp whether running well
if [ $? -ne 0 ]; then
    echo "Error: Unable to get temperature."
    exit 1
fi

# update sketchybar shown
sketchybar --set $NAME temperature label="${TEMPERATURE}°C"
