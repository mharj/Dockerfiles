FROM ubuntu:xenial
MAINTAINER mharj
RUN export DEBIAN_FRONTEND=noninteractive
ENV DEBIAN_FRONTEND noninteractive
ADD http://download.qt.io/official_releases/qt/5.7/5.7.0/single/qt-everywhere-opensource-src-5.7.0.tar.gz /tmp/
RUN apt-get update && \
apt-get install -y build-essential git libssl-dev libmysqlclient-dev libpq-dev libcups2-dev libasound2-dev libudev-dev freeglut3-dev \
libxcb1 libxcb1-dev libx11-xcb1 libx11-xcb-dev libxcb-keysyms1 libxcb-keysyms1-dev libxcb-image0 libxcb-image0-dev libxcb-shm0 libxcb-shm0-dev libxcb-icccm4 libxcb-icccm4-dev libxcb-sync0 libxcb-sync0-dev libxcb-xfixes0-dev libxrender-dev libxcb-shape0-dev libxcb-randr0-dev libxcb-render-util0 libxcb-render-util0-dev libxcb-glx0-dev \
libxkbcommon-x11-dev libxkbcommon-dev libegl1-mesa-dev libsqlite0-dev freetds-dev && \
cd /opt &&  \
tar xvfz /tmp/qt-everywhere-opensource-src-*.tar.gz
#RUN cd /opt && \
#./configure -prefix /opt/qt5static -opensource -static -confirm-license
