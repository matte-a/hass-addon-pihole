#!/bin/bash
# Copy default Pi-hole config files to persistent storage if not present
if [ ! -f /addon_config/pihole/setupVars.conf ]; then
  cp /etc/.pihole/setupVars.example /addon_config/pihole/setupVars.conf
fi
if [ ! -f /addon_config/pihole/adlists.list ]; then
  cp /etc/.pihole/adlists.default /addon_config/pihole/adlists.list 2>/dev/null || true
fi
# Add more custom file copies as needed

# Start Pi-hole as normal
exec /s6-init
