# Use latest Pi-hole base image
FROM pihole/pihole:latest

# Install extra tools if needed
RUN apk add --no-cache bash curl su-exec

# Create defaults directory to store initial configs
RUN mkdir -p /defaults/etc-pihole /defaults/etc-dnsmasq.d \
    && cp -a /etc/pihole/* /defaults/etc-pihole/ \
    && cp -a /etc/dnsmasq.d/* /defaults/etc-dnsmasq.d/

# Expose volumes for persistent storage (Home Assistant maps /data)
VOLUME /data/etc-pihole
VOLUME /data/etc-dnsmasq.d

# Copy init script and entrypoint
COPY init_pihole_config.sh /init_pihole_config.sh
COPY run.sh /run.sh

RUN chmod +x /init_pihole_config.sh /run.sh

# Expose required ports
EXPOSE 53/tcp 53/udp 80/tcp 443/tcp

# Run script as entrypoint
CMD [ "/run.sh" ]
