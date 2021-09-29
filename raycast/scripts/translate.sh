#!/bin/zsh

# @raycast.schemaVersion 1
# @raycast.title Translate
# @raycast.mode silent
# @raycast.description Translate a text pass by argument.
# @raycast.icon images/translate.png
# @raycast.packageName Utils

# @raycast.argument1 { "type": "text", "placeholder": "texto to translate..." }

open "https://translate.google.com/?sl=auto&tl=es&text=${1}&op=translate"
