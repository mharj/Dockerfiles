FROM ubuntu:xenial
MAINTAINER mharj
RUN export DEBIAN_FRONTEND=noninteractive
ENV DEBIAN_FRONTEND noninteractive
ADD https://download-cdn.getsync.com/stable/linux-x64/BitTorrent-Sync_x64.tar.gz /usr/bin
RUN cd /usr/bin && tar -xzvf BitTorrent-Sync_x64.tar.gz && rm BitTorrent-Sync_x64.tar.gz
RUN mkdir /var/btsync
RUN mkdir /var/btsync_meta
COPY btsync.conf  /etc/btsync.conf
CMD ["/usr/bin/btsync","--nodaemon","--config","/etc/btsync.conf"]
