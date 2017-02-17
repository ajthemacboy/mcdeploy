FROM anapsix/alpine-java:8
MAINTAINER ajthemacboy

RUN adduser -D -u 1000 minecraft

COPY startup.sh /usr/bin
COPY ./serverfiles /tmp/serverfiles

RUN chmod +x /usr/bin/startup.sh

VOLUME [ "/data" ]

CMD bash -C '/usr/bin/startup.sh'
