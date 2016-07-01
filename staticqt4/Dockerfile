FROM ubuntu:xenial
MAINTAINER mharj
RUN export DEBIAN_FRONTEND=noninteractive
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
apt-get install -y build-essential git libssl-dev libmysqlclient-dev libpq-dev libcups2-dev libasound2-dev libudev-dev
RUN cd /opt && \
git clone https://code.qt.io/qt/qt5.git && \
cd /opt/qt5 && \
./init-repository && \
./configure -prefix /opt/qt5static -opensource -static -confirm-license
