FROM b09780978/baseimage:latest
MAINTAINER faker <b09780978@gmail.com>

WORKDIR /root

# Update and Install chromium-browser
RUN apt-get update \
&& apt-get upgrade -y \
&& apt-get install -y chromium-browser

# Update python and install crawler package
RUN python3 -m pip install -U pip\
&& pip3 install pipenv \
&& pip3 install requests \
&& pip3 install pyquery \
&& pip3 install requests-html \
&& pip3 install aiohttp

RUN git clone --depth 1 https://github.com/b09780978/crawler.git \
&& cd crawler \
&& python3 install.py \
&& cd .. \
&& rm -rf crawler

# Add my python utils package
RUN git clone --depth 1 https://github.com/b09780978/utils.git
