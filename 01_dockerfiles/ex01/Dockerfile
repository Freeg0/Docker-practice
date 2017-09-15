FROM debian

ADD http://dl.4players.de/ts/releases/3.0.12.4/teamspeak3-server_linux_amd64-3.0.12.4.tar.bz2 /tmp/teamspeak.tar.bz2

WORKDIR /home/t3
RUN useradd ts3

RUN apt-get update -y && \
    apt-get upgrade -y && \
	apt-get install bzip2 -y && \
    tar -jxvf /tmp/teamspeak.tar.bz2 -C . && \
    mv teamspeak3-server_* teamspeak && \
    rm /tmp/teamspeak.tar.bz2

EXPOSE 9987/udp 10011 30033
USER ts3

ENTRYPOINT ["sh", "teamspeak/ts3server_minimal_runscript.sh"]
