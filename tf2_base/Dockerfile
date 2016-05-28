FROM steam_base
MAINTAINER mharj
RUN su - steam -c "until ./steamcmd.sh +login anonymous +force_install_dir /opt/steam/tf2 +app_update 232250 validate +quit; do echo restart;done"
