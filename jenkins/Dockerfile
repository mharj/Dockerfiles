FROM ubuntu:xenial
MAINTAINER mharj
RUN export DEBIAN_FRONTEND=noninteractive
ENV DEBIAN_FRONTEND noninteractive
RUN mkdir -p /var/run/jenkins
RUN apt-key add http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key
RUN echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list
RUN apt-get install -y software-properties-common && add-apt-repository ppa:webupd8team/java
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
RUN apt-get update && apt-get install -y oracle-java8-installer jenkins && apt-get clean all
ENV JENKINS_HOME /var/lib/jenkins
USER jenkins
EXPOSE 8080
CMD JENKINS_HOME=/var/lib/jenkins /usr/bin/java -jar /usr/share/jenkins/jenkins.war --webroot=/var/cache/jenkins/war --httpPort=8080 --ajp13Port=-1
