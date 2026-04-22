#!/usr/bin/env bashio

echo "Starting WebRTC Frontend Server on port 3000..."
cd /frontend
python3 -m http.server 3000 &

echo "Starting Asterisk WebRTC Bridge..."

# Start Asterisk in the foreground
exec asterisk -f -vvv
