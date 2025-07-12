FROM pihole/pihole:latest

RUN mkdir -p /data/pihole /data/dnsmasq.d \
    && rm -rf /etc/pihole /etc/dnsmasq.d \
    && ln -s /data/pihole /etc/pihole \
    && ln -s /data/dnsmasq.d /etc/dnsmasq.d
