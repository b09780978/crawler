# crawler
My Dockerfile for crawler and pyright lsp support

# language
- python3
- node.js

## packages
- requests httpx
- curl_cffi (bypass anti-bot through fingerprint)
- beautifulsoup4 pyquery lxml
- lzstring
- node_vm2 (for execute javascript)
- ipython jupyter
- cchardet
- ujson
- numpy SQLAlchemy

## Usage
    docker pull b09780978/crawler
    docker container run -idt -v {YOUR_CODE_DIR}:{DOCKER_DIR} --name crawler b09780978/crawler
    docker container exec -it crawler script /dev/null -c tmux
    docker run --rm -it b09780978/crawler

## Deploy
    docker pull b09780978/crawler:deploy
    docker container run -it -v {YOUR_CODE_DIR}:{DOCKER_DIR} --name crawler b09780978/crawler
    
## Note
    Deploy version use python-alpine image
