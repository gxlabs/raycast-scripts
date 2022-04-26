#!/usr/bin/osascript

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

set theCleanedClipboardURL to (do shell script ("pbpaste | awk -F '?' '{print $1}'"))
tell application "System Events" to keystroke theCleanedClipboardURL
