#!/usr/bin/env bash
set -e

# Copy default config if needed, then symlink
bash /init_pihole_config.sh

echo "🧠 Starting Pi-hole services"
/usr/local/bin/pihole-FTL &
exec /s6-init
