FROM boritzio/docker-base

RUN apt-get install -y haproxy

ADD https://raw.githubusercontent.com/mesosphere/marathon/master/bin/haproxy-marathon-bridge scripts/

RUN echo "ENABLED=1" > /etc/default/haproxy

RUN chmod +x scripts/haproxy-marathon-bridge

RUN touch /var/run/haproxy.pid

ADD start.sh /etc/my_init.d/
