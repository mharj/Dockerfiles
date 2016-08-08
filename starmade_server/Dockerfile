FROM mharj/starmade_base:latest
MAINTAINER mharj
RUN su - starmade -c "java -jar StarMade-Starter.jar -nogui"
USER starmade
EXPOSE 4242 4242/udp
WORKDIR  /opt/starmade/StarMade
VOLUME ["/opt/starmade/StarMade/server-database"]
CMD /opt/starmade/StarMade/StarMade-dedicated-server-linux.sh
