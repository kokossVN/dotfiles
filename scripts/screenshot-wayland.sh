#!/usr/bin/env bash

SCREENSHOT_PATH="/home/kokoss/screenshot"

grim -c "$SCREENSHOT_PATH/$(date --rfc-3339=seconds).png"
