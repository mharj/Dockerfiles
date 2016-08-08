FROM ubuntu:xenial
MAINTAINER mharj
RUN export DEBIAN_FRONTEND=noninteractive
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
  apt-get install -y software-properties-common && \
  add-apt-repository ppa:webupd8team/java && \
  echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections && \
  apt-get update && \
  apt-get install -y oracle-java8-installer jenkins && \
  apt-get remove -y software-properties-common && \
  apt-get autoremove -y && \
  apt-get clean all && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN mkdir -p /opt/starmade/
ADD http://files.star-made.org/StarMade-Starter.jar /opt/starmade/
RUN useradd -r starmade -d /opt/starmade/
RUN chown -R -h starmade:starmade /opt/starmade/
RUN su - starmade -c "java -jar StarMade-Starter.jar -nogui"
RUN chmod 755 /opt/starmade/StarMade/*.sh
