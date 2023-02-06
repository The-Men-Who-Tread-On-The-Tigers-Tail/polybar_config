#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar rosepine
echo "---" | tee -a /tmp/polybar-rosepine.log
polybar --config="$HOME/.config/polybar/config.ini" rosepine 2>&1 | tee -a /tmp/polybar-rosepine.log &
disown

echo "Bars launched..."
