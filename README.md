# crawler
My Dockerfile for crawler

# language
- python3
- node.js

## packages
- requests
- aiohttp (async)
- beautifulsoup4
- lxml
- pyquery
- node_vm2(for execute javascript)
- ipython
 - cchardet
 - aiodns
 - curl_cffi (bypass anti-bot through fingerprint)
 - ujson

## Usage
    docker pull b09780978/crawler
    docker container run -idt -v {YOUR_CODE_DIR}:{DOCKER_DIR} --name crawler b09780978/crawler
    docker container exec -it script /dev/null -c tmux

## Deploy
    docker pull b09780978/crawler:deploy
    docker container run -it -v {YOUR_CODE_DIR}:{DOCKER_DIR} --name crawler b09780978/crawler
    
## Note
    Deploy version use alpine(python3.10)
