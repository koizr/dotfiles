#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title uuidgen
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.description Generate UUID v4

uuidgen | tr '[:upper:]' '[:lower:]' | tr -d '\n' | pbcopy

