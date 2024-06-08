# crawler
My Dockerfile for crawler and lsp support

# language
- python3
- node.js

## packages
- requests httpx
- curl_cffi (bypass anti-bot through fingerprint)
- beautifulsoup4 pyquery lxml
- lzstring
- node_vm2 (for execute javascript)
- ipython
- cchardet
- ujson
- numpy SQLAlchemy

## Usage
    docker pull b09780978/crawler
    docker container run -idt -v {YOUR_CODE_DIR}:{DOCKER_DIR} --name crawler b09780978/crawler
    docker container exec -it script /dev/null -c tmux

## Deploy
    docker pull b09780978/crawler:deploy
    docker container run -it -v {YOUR_CODE_DIR}:{DOCKER_DIR} --name crawler b09780978/crawler
    
## Note
    Deploy version use python-alpine image
