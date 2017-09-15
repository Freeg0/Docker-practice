docker run --restart=always --name teamspeak3 \
		-v /srv/teamspeak/files/:/opt/teamspeak/files/ \
		-v /srv/teamspeak/logs/:/opt/teamspeak/logs/ \
		-v /srv/teamspeak/ts3server.sqlitedb:/opt/teamspeak/ts3server.sqlitedb \
		-p 9987:9987/udp -p 10011:10011 -p 30033:30033 \
		-it 01_dockerfiles/ex01 /bin/bash
