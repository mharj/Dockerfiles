FROM ubuntu:xenial
MAINTAINER mharj
RUN export DEBIAN_FRONTEND=noninteractive
ENV DEBIAN_FRONTEND noninteractive
ADD http://download.qt.io/official_releases/qt/5.7/5.7.0/single/qt-everywhere-opensource-src-5.7.0.tar.gz /tmp/
RUN apt-get update && \
apt-get install -y build-essential git libssl-dev libmysqlclient-dev libpq-dev libcups2-dev libasound2-dev libudev-dev && \
cd /opt &&  \
tar xvfz /tmp/qt-everywhere-opensource-src-*.tar.gz
#RUN cd /opt && \
#./configure -prefix /opt/qt5static -opensource -static -confirm-license
