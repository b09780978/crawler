FROM python:3.6-alpine
MAINTAINER faker <b09780978@gmail.com>

WORKDIR /root

# Update and Install chromium-browser
RUN apk update \
&& apk add git g++ \
&& apk add libxslt libxslt-dev libxml2 libxml2-dev \
&& apk upgrade

# Update python and install crawler package
RUN python3 -m pip install -U pip\
&& pip3 install pipenv \
&& pip3 install ipython \
&& pip3 install requests \
&& pip3 install pyquery \
&& pip3 install aiohttp

# Add my python utils package
RUN git clone --depth 1 https://github.com/b09780978/utils.git

