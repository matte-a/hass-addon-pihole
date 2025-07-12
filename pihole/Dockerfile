FROM pihole/pihole:latest

# Ensure persistent config directories exist and are symlinked
RUN mkdir -p /addon_config/pihole /addon_config/dnsmasq.d \
    && rm -rf /etc/pihole /etc/dnsmasq.d \
    && ln -s /addon_config/pihole /etc/pihole \
    && ln -s /addon_config/dnsmasq.d /etc/dnsmasq.d

# Optionally, copy default config files on first run if they do not exist
COPY init_pihole_config.sh /init_pihole_config.sh
RUN chmod +x /init_pihole_config.sh
ENTRYPOINT ["/init_pihole_config.sh"]
