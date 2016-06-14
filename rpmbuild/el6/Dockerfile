FROM centos:6
RUN yum -y update && \
  yum -y groupinstall "Development tools" "Server Platform Development" "Additional Development" && \
  yum -y install rpm-build mock tcl-devel c-ares-devel perl-ExtUtils-Embed
RUN useradd -s /sbin/nologin mockbuild
VOLUME /src
WORKDIR /src
ENTRYPOINT ["/usr/bin/rpmbuild","--define","'_rpmdir /src/rpms'"]
