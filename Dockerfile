FROM b09780978/baseimage:latest
MAINTAINER faker <b09780978@gmail.com>

WORKDIR /root

# Update and Install node.js
RUN apt update \
&& apt upgrade

# Update python and install crawler package
RUN python3 -m pip install -U pip\
&& pip3 install node_vm2 \
&& pip3 install cchardet ujson \
&& pip3 install curl_cffi \
&& pip3 install lxml

# Clean cache
RUN apt-get clean && rm -rf /var/libapt/lists/* /var/tmp/*
