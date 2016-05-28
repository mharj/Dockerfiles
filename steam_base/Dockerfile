FROM ubuntu:xenial
MAINTAINER mharj
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y lib32gcc1 zip ca-certificates && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN mkdir -p /opt/steam
ADD https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz /opt/steam/
RUN cd /opt/steam/ && tar xvfz steamcmd_linux.tar.gz
RUN rm -f /opt/steam/steamcmd_linux.tar.gz
RUN useradd -r steam -d /opt/steam/
RUN chown -R -h steam:steam /opt/steam/
RUN su - steam -c "./steamcmd.sh +quit;/bin/true"
