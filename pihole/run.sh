#!/usr/bin/env bash
set -e

echo "🔧 Running init script..."
bash /init_pihole_config.sh

echo "🧠 Starting Pi-hole FTL service"
/usr/bin/pihole-FTL &

echo "🚀 Starting supervisor (s6)"
exec /init
