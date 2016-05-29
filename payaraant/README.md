Payara ANT setup
================
Used to automate J2EE war file building

### Image
docker build -q -t mharj/payaraant https://github.com/mharj/Dockerfiles.git#:payaraant
### Run
docker run -i --rm -v ${SRC_DIR}:/mnt mharj/payaraant
