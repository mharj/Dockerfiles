FROM steam_base
MAINTAINER mharj
RUN apt-get update
RUN apt-get clean all
RUN su - steam -c "./steamcmd.sh +login anonymous +force_install_dir /opt/steam/tf2 +app_update 232250 validate +quit"
