#!/bin/zsh

# @raycast.schemaVersion 1
# @raycast.title Zoom Meeting KameHouse
# @raycast.mode silent
# @raycast.description Open zoom meeting in holaluz.
# @raycast.icon images/zoom.png
# @raycast.packageName Holaluz

source ../secrets-var.sh
open "zoommtg://zoom.us/join?confno=${ZOOM_HLZ_KAMEHOUSE_ID}&pwd=${ZOOM_HLZ_KAMEHOUSE_PWD}"
