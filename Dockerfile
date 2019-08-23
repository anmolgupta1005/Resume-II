FROM ubuntu:bionic

LABEL MAINTAINER="Anmol Gupta <anmol.gupta1005@gmail.com>"

ENV DEBIAN_FRONTEND noninteractive

WORKDIR /data
VOLUME ["/data"]

ADD src /data/.

RUN apt-get update -q && apt-get install -qy \
    texlive-full \
    && rm -rf /var/lib/apt/lists/*