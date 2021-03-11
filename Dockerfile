FROM ubuntu:20.04
MAINTAINER Brad P. Crochet <brad@crochet.net>

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt upgrade -y && \
    apt install -y curl && \
    curl https://beersmith3-1.s3.amazonaws.com/BeerSmith-3.1.8_amd64.deb -o /tmp/beersmith.deb && \
    apt install -y /tmp/beersmith.deb && \
    rm /tmp/beersmith.deb && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /home/beersmith3/.beersmith3 && \
    chmod 0775 -R /home/beersmith3

ENV HOME /home/beersmith3

CMD /usr/bin/beersmith3

