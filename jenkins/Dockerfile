FROM ubuntu:xenial
MAINTAINER mharj
RUN export DEBIAN_FRONTEND=noninteractive
ENV DEBIAN_FRONTEND noninteractive
ADD http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key /tmp/jenkins-ci.org.key
RUN mkdir -p /var/run/jenkins && \
  cat /tmp/jenkins-ci.org.key | apt-key add - && \
  echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list && \
  apt-get update && \
  apt-get install -y software-properties-common && \
  add-apt-repository ppa:webupd8team/java && \
  echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections && \
  apt-get update && \
  apt-get install -y oracle-java8-installer jenkins && \
  apt-get clean all && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
ENV JENKINS_HOME /var/lib/jenkins
USER jenkins
EXPOSE 8080
CMD JENKINS_HOME=/var/lib/jenkins /usr/bin/java -jar /usr/share/jenkins/jenkins.war --webroot=/var/cache/jenkins/war --httpPort=8080 --ajp13Port=-1
