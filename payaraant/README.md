Payara J2EE ANT setup
================
Used to automate J2EE war file building from Netbeans project

### Get ANT build image
```
docker build -q -t mharj/payaraant https://github.com/mharj/Dockerfiles.git#:payaraant
```
### Build war file
```
docker run -i --rm -v ${SRC_DIR}:/src mharj/payaraant
```
### Copy war
```
cp dist/*.war ...
```
### or automate with Dockerfile
```
FROM payara/micro
COPY dist/HelloWorld.war /opt/HelloWorld.war
CMD ["java","-jar","payara-micro.jar","--deploy","/opt/HelloWorld.war"]
```
