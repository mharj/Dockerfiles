FROM ubuntu:precise
MAINTAINER mharj
RUN apt-get update
RUN apt-get install -y lib32gcc1 zip
RUN apt-get clean all
RUN mkdir -p /opt/steam
ADD http://media.steampowered.com/client/steamcmd_linux.tar.gz /opt/steam/
RUN cd /opt/steam/ && tar xvfz steamcmd_linux.tar.gz
RUN rm -f /opt/steam/steamcmd_linux.tar.gz
RUN useradd -r steam -d /opt/steam/
RUN chown -R -h steam:steam /opt/steam/
RUN su - steam -c "./steamcmd.sh +quit;/bin/true"
