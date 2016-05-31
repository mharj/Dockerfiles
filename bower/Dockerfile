FROM ubuntu:xenial
RUN export DEBIAN_FRONTEND=noninteractive
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get -y install npm nodejs-legacy git
RUN npm install -g bower
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
VOLUME /src
WORKDIR /src
ENTRYPOINT ["/usr/local/bin/bower","--allow-root"]
