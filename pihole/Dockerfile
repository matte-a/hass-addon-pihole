FROM pihole/pihole:latest

RUN rm -rf /etc/pihole /etc/dnsmasq.d \
    && mkdir -p /data/pihole /data/dnsmasq.d \
    && ln -s /data/pihole /etc/pihole \
    && ln -s /data/dnsmasq.d /etc/dnsmasq.d
