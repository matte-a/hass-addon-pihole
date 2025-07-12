#!/usr/bin/env bash
set -e

echo "🚀 Running init script..."
bash /init_pihole_config.sh

echo "🧠 Starting Pi-hole"
/start.sh
