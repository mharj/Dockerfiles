Payara ANT setup
================
Used to automate J2EE war file building for Netbeans

### Image
```
docker build -q -t mharj/payaraant https://github.com/mharj/Dockerfiles.git#:payaraant
```
### Build war file
```
docker run -i --rm -v ${SRC_DIR}:/src mharj/payaraant
```
### Copy war
```
cp dist/HelloWorldTest.war ...
```
### or automate with Dockerfile
```
FROM payara/micro
COPY dist/HelloWorld.war /opt/HelloWorld.war
CMD ["java","-jar","payara-micro.jar","--deploy","/opt/HelloWorld.war"]
```
