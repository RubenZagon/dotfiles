#!/bin/zsh

# @raycast.schemaVersion 1
# @raycast.title Zoom Meeting Lean Mind Weekly
# @raycast.mode silent
# @raycast.description Open zoom meeting in Lean Mind.
# @raycast.icon images/zoom.png
# @raycast.packageName Lean Mind

source ../secrets-var.sh
# Zoom Lean Mind Weekly
open "zoommtg://zoom.us/join?confno=${ZOOM_LM_WEEKLY_ID}&pwd=${ZOOM_LM_WEEKLY_PWD}"
