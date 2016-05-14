FROM ubuntu:xenial
MAINTAINER mharj
RUN export DEBIAN_FRONTEND=noninteractive
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:webupd8team/java
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
RUN apt-get update
RUN apt-get install -y oracle-java8-installer
RUN apt-get clean all
COPY opendj_3.*.deb /tmp/
RUN dpkg -i /tmp/opendj_3.*.deb
RUN rm -f /tmp/opendj_3.*.deb
COPY entrypoint.sh /usr/bin/entrypoint.sh
RUN chmod 755 /usr/bin/entrypoint.sh
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
CMD ["/bin/bash"]
