Jenkins setup
=============

Build image:
```
docker build -t mharj/jenkins https://github.com/mharj/Dockerfiles.git#:jenkins
```

Get jenkins container password:
```
docker exec jenkins cat /var/lib/jenkins/secrets/initialAdminPassword
```
