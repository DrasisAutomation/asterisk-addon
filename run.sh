#!/usr/bin/env bashio

echo "Starting Asterisk WebRTC Bridge..."

# Start Asterisk in the foreground
exec asterisk -f -vvv
