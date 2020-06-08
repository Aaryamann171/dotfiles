#!/usr/bin/bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

#Launch Polybar, using default config ~/.config/polybar/config
polybar example -r &
