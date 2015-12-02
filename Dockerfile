FROM haproxy:1.5
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

# Add haproxy user and group
RUN groupadd haproxy
RUN useradd -g haproxy haproxy

# These directories seem to be required
RUN mkdir -p /run/haproxy
RUN mkdir -p /var/lib/haproxy
