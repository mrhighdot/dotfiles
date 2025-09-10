#!/usr/bin/env zsh

sketchybar --set cpu icon="" label="$(ps -A -o %cpu | awk '{s+=$1} END {s /= 8} END {printf "%.1f%%\n", s}')"
