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

# get cpu usage
CORE_COUNT=$(sysctl -n machdep.cpu.thread_count)
CPU_INFO=$(ps -eo pcpu,user)
CPU_SYS=$(echo "$CPU_INFO" | grep -v $(whoami) | sed "s/[^ 0-9\.]//g" | awk "{sum+=\$1} END {print sum/(100.0 * $CORE_COUNT)}")
CPU_USER=$(echo "$CPU_INFO" | grep $(whoami) | sed "s/[^ 0-9\.]//g" | awk "{sum+=\$1} END {print sum/(100.0 * $CORE_COUNT)}")
CPU_PERCENT="$(echo "$CPU_SYS $CPU_USER" | awk '{printf "%.0f\n", ($1 + $2)*100}')"

# update sketchybar shown
sketchybar --set $NAME label="${TEMPERATURE}°C ・ ${CPU_PERCENT}%"