FROM pihole/pihole:latest

RUN mkdir -p /addon_config/pihole /addon_config/dnsmasq.d \
    && rm -rf /etc/pihole /etc/dnsmasq.d \
    && ln -s /addon_config/pihole /etc/pihole \
    && ln -s /addon_config/dnsmasq.d /etc/dnsmasq.d
