FROM tf2_base
MAINTAINER mharj
RUN su - steam -c "./steamcmd.sh +login anonymous +force_install_dir /opt/steam/tf2 +app_update 232250 +quit"
USER steam
EXPOSE 27015/udp
ENTRYPOINT ["/opt/steam/tf2/srcds_run"]
CMD ["-game","tf","+sv_pure","1"]
