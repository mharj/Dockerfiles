Dockerfiles
===========

Dockerfile repo

Team Fortress 2 dedicated server build order

1. "steam_base" FROM ubuntu:xenial
2. "tf2_base" FROM steam_base (to keep most of TF2 data in one image)
3. "tf2_server" FROM tf2_base (for update + service)
 
```
# docker run -p 27015:27015/udp -d run tf2_server +maxplayers 24 +map ctf_2fort +hostname "TF2 Server"

# docker run -p 27018:27018/udp -d run tf2_server -port 27018 +maxplayers 32 +map mvm_mannworks +hostname "TF2 MvM Server"
```
