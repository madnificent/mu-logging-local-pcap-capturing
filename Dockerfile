FROM debian
MAINTAINER esteban.sastre@tenforce.com

ENV PCAP_READ_DIR '/data'

RUN apt-get update && apt-get -y -q install \
    tcpdump supervisor && \
    apt-get clean

RUN mv /usr/sbin/tcpdump /usr/bin/tcpdump

COPY . /app/
WORKDIR /app


CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
