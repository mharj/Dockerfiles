FROM mharj/starmade_base:latest
MAINTAINER mharj
RUN export DEBIAN_FRONTEND=noninteractive
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y supervisor
RUN apt-get clean all
RUN su - starmade -c "java -jar StarMade-Starter.jar -nogui"
RUN chmod 755 /opt/starmade/StarMade/StarMade-dedicated-server-linux.sh
ADD supervisord.conf /etc/supervisord.conf
EXPOSE 4242 4242/udp
CMD supervisord -n -c /etc/supervisord.conf
