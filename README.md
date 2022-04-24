# crawler
My Dockerfile for crawler on arch linux

## packages
- requests
- ipython
- node_vm2

## Usage
    docker pull b09780978/crawler
    docker container run -idt -v {YOUR_CODE_DIR}:{DOCKER_DIR} --name crawler b09780978/crawler
    docker container exec -it script /dev/null -c tmux

## Deploy
    docker pull b09780978/crawler:deploy
    docker container run -it -v {YOUR_CODE_DIR}:{DOCKER_DIR} --name crawler b09780978/crawler
