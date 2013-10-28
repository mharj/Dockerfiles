FROM tf2_base
MAINTAINER mharj
RUN apt-get update
RUN apt-get clean all
#RUN su - steam -c "./steamcmd.sh +login anonymous +force_install_dir /opt/steam/tf2 +app_update 232250 validate +quit"
USER steam
EXPOSE 27015/udp
ENTRYPOINT ["/opt/steam/tf2/srcds_run"]
CMD ["-game","tf","+sv_pure","1"]
