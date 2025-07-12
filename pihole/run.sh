#!/usr/bin/env bash
set -e

# Initialize configs and symlinks
bash /init_pihole_config.sh

echo "🧠 Starting Pi-hole services"
/usr/local/bin/pihole-FTL &

# Start other services if needed
exec /s6-init
