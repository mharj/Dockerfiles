Payara J2EE ANT setup
================
Used to automate J2EE war file building from Netbeans project

### Get ANT build image
```
docker build -q -t mharj/payaraant https://github.com/mharj/Dockerfiles.git#:payaraant
```
### Build war file (Payara uid 1000 needs write access to build and dist)
```
mkdir ${SRC_DIR}/{build,dist} && \
chown -Rh 1000 ${SRC_DIR}/{build,dist} && \
docker run -i --rm -v ${SRC_DIR}:/src mharj/payaraant
```
### Copy war
```
cp ${SRC_DIR}/dist/*.war ...
```
### or automate deployment with Dockerfile
```
FROM payara/micro
COPY dist/HelloWorld.war /opt/HelloWorld.war
CMD ["java","-jar","payara-micro.jar","--deploy","/opt/HelloWorld.war"]
```
