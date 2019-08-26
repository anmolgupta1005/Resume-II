FROM aergus/latex:latest

LABEL MAINTAINER="Anmol Gupta <anmol.gupta1005@gmail.com>"

ENV DEBIAN_FRONTEND noninteractive

WORKDIR /data
VOLUME ["/data"]

ADD src /data/.