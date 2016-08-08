FROM ubuntu:xenial
MAINTAINER mharj
RUN export DEBIAN_FRONTEND=noninteractive
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:webupd8team/java
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
RUN apt-get update && apt-get install -y oracle-java7-installer && apt-get clean all
RUN mkdir -p /opt/starmade/
ADD http://files.star-made.org/StarMade-Starter.jar /opt/starmade/
RUN useradd -r starmade -d /opt/starmade/
RUN chown -R -h starmade:starmade /opt/starmade/
RUN su - starmade -c "java -jar StarMade-Starter.jar -nogui"
RUN chmod 755 /opt/starmade/StarMade/*.sh
