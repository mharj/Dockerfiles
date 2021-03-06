OpenDJ Container
===========
Note: This directory need to be copied as needs local opendj_3.*.deb file for OpenDJ image

How-To:

Run OpenDJ initial interactive setup "run"  (+ports + volume mappings if required) ... ctrl+p ctrl+q to detach tty when started
```
docker run -t -i -p 3389:389/tcp --name opendj -t mharj/opendj
```
Or with hostnetwork
```
docker run -t -i --net=host --name opendj -t mharj/opendj
```
Or volume examples and common ports
```
docker run -t -i \
-h node1.example.com \
-p 3389:389/tcp \
-p 3636:636/tcp \
-p 34444:4444/tcp \
-v /storage/node1/bak:/opt/opendj/bak \
-v /storage/node1/db:/opt/opendj/db \
-v /storage/node1/config:/opt/opendj/config \
-v /storage/node1/log:/opt/opendj/logs \
-v /storage/node1/locks:/opt/opendj/locks \
--name opendj-node1 -t mharj/opendj
```

Example alias commands for running container:
```
alias opendj-dsconfig="docker exec -it opendj /opt/opendj/bin/dsconfig -h localhost -X"
alias opendj-status="docker exec -it opendj /opt/opendj/bin/status"
alias opendj-backup="docker exec -it opendj /opt/opendj/bin/backup"
alias opendj-restore="docker exec -it opendj /opt/opendj/bin/restore"
```
