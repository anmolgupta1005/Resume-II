FROM ubuntu:bionic

LABEL MAINTAINER="Anmol Gupta <anmol.gupta1005@gmail.com>"

ENV DEBIAN_FRONTEND noninteractive

WORKDIR /data
VOLUME ["/data"]

ADD src /data/.

RUN apt-get update -q && apt-get install -qy \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common \
    texlive-full \
    python-pygments gnuplot \
    make git \
    && rm -rf /var/lib/apt/lists/* \
    && ls -R /data

CMD ["latexmk", "--version"]
