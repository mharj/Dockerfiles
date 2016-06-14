FROM centos:7
RUN yum -y update && yum -y groupinstall "Development tools" "Server Platform Development" "Additional Development" && yum -y install rpm-build
VOLUME /src
WORKDIR /src
ENTRYPOINT ["/usr/bin/rpmbuild","--define","'_rpmdir /src/rpms'"]
