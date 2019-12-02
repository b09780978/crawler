FROM python:3.7-alpine
MAINTAINER faker <b09780978@gmail.com>

WORKDIR /root

# Update and Install git node.js
RUN apk update \
&& apk add --no-cache git g++ curl \
&& apk add --no-cache libxslt libxslt-dev libxml2 libxml2-dev \
&& apk add --no-cache nodejs npm \
&& apk upgrade

# Update python and install crawler package
RUN python3 -m pip install -U pip \
&& pip3 install pipenv \
&& pip3 install ipython \
&& pip3 install requests \
&& pip3 install pyquery \
&& pip3 install node_vm2 \
&& pip3 install aiohttp

CMD ["/bin/sh"]
