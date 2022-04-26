#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Cleans clipboard URL marketing cruft
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 📋
# @raycast.author Glen Robertson
# @raycast.authorURL https://www.gxlabs.co

# Documentation:
# @raycast.description Updates a clipboard URL with utm*, ref*, hv* parameters removed.

pbpaste | awk -F '?' '{print $1}' | pbcopy