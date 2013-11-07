FROM ubuntu:quantal
MAINTAINER mharj
RUN export DEBIAN_FRONTEND=noninteractive
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:webupd8team/java
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
RUN apt-get update
RUN apt-get install -y oracle-jdk7-installer unzip
RUN apt-get clean all
ADD http://eclipse.org/downloads/download.php?file=/jetty/stable-9/dist/jetty-distribution-9.0.6.v20130930.tar.gz&r=1 /opt/jetty.tar.gz
RUN tar -xvf /opt/jetty.tar.gz -C /opt/
RUN rm -f /opt/jetty.tar.gz
RUN mv /opt/jetty-distribution-* /opt/jetty
RUN useradd -r jetty -d /opt/jetty/ -s /bin/false
RUN chown -R -h jetty:jetty /opt/jetty/
RUN rm -R /opt/jetty/webapps.demo
# Add some database JAR
ADD http://repo1.maven.org/maven2/mysql/mysql-connector-java/5.1.26/mysql-connector-java-5.1.26.jar /opt/jetty/lib/ext/
ADD http://jdbc.postgresql.org/download/postgresql-9.3-1100.jdbc3.jar /opt/jetty/lib/ext/
USER jetty
EXPOSE 8080
CMD ["java", "-Djetty.home=/opt/jetty", "-jar", "/opt/jetty/start.jar"]
