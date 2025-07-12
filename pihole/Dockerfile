# Use official Pi-hole image
FROM pihole/pihole:latest

# Install extra tools
RUN apk add --no-cache bash curl su-exec

# Create defaults dirs just to satisfy init script (no need to copy files)
# RUN mkdir -p /defaults/etc-pihole /defaults/etc-dnsmasq.d

# Declare volumes (persistent folders mapped from HA)
VOLUME /etc-pihole
VOLUME /etc-dnsmasq.d

# Copy scripts
# COPY init_pihole_config.sh /init_pihole_config.sh
# COPY run.sh /run.sh
# RUN chmod +x /init_pihole_config.sh /run.sh

# Expose required ports
EXPOSE 53/tcp 53/udp 80/tcp 443/tcp

# Entrypoint
# CMD [ "/run.sh" ]
