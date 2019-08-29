# A debian-based docker with latex already installed
FROM aergus/latex:latest

# Me
LABEL MAINTAINER="Anmol Gupta <anmol.gupta1005@gmail.com>"

ENV DEBIAN_FRONTEND noninteractive

# Creating the work directory
WORKDIR /data
VOLUME ["/data"]

# Copying the source contents to build the latex document
ADD src /data/.