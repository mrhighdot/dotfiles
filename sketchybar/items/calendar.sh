#!/usr/bin/env bash

COLOR="$BLUE"

sketchybar --add item calendar right \
	--set calendar update_freq=15 \
	icon.color="$COLOR" \
	icon.padding_left=14 \
	label.color="$COLOR" \
	label.padding_right=14 \
	background.height=26 \
	background.corner_radius="$CORNER_RADIUS" \
	background.padding_right=5 \
	background.border_width="$BORDER_WIDTH" \
	background.border_color="$COLOR" \
	background.color="$BAR_COLOR" \
	background.drawing=on \
	script="$PLUGIN_DIR/calendar.sh"
