FROM payara/server-full
ENV ANT_VERSION 1.9.7
RUN cd && \
    wget -q http://archive.apache.org/dist/ant/binaries/apache-ant-${ANT_VERSION}-bin.tar.gz && \
    tar -xzf apache-ant-${ANT_VERSION}-bin.tar.gz && \
    mv apache-ant-${ANT_VERSION} /opt/ant && \
    rm apache-ant-${ANT_VERSION}-bin.tar.gz
ENV ANT_HOME /opt/ant
ENV PATH ${PATH}:/opt/ant/bin
COPY org-netbeans-modules-java-j2seproject-copylibstask.jar /opt/ant/lib/org-netbeans-modules-java-j2seproject-copylibstask.jar
CMD ["bash","-c","'cd /mnt; ant -S -Dj2ee.server.home=$PAYARA_PATH -Dlibs.CopyLibs.classpath=/opt/ant/lib/org-netbeans-modules-java-j2seproject-copylibstask.jar'"]
