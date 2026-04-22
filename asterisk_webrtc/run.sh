#!/usr/bin/env bashio

echo "Starting WebRTC Frontend Server on port 8999..."
cd /frontend
python3 -m http.server 8999 &

echo "Starting Asterisk WebRTC Bridge..."

# Start Asterisk in the foreground
exec asterisk -f -vvv
